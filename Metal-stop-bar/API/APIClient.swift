//
//  APIManager.swift
//  Metal-stop-bar
//
//  Created by Krystian Kozerawski on 08/11/2019.
//  Copyright © 2019 Dominik Kowalski. All rights reserved.
//

//https://metal-stop.pl/wp-json/wc/v3/products?consumer_key=ck_93c8c0254c7546a935b46af51106b76d77457887&consumer_secret=cs_029f62bed5f797a1537165db1fcf2dced5d60966&per_page=10&category=24

import Foundation

class APIClient {
    
    static let consumerKey = "ck_93c8c0254c7546a935b46af51106b76d77457887"
    static let consumerSecret = "cs_029f62bed5f797a1537165db1fcf2dced5d60966"
    static var perPage = 100
    static var category = 0
    
    enum Endpoints {
        static let base = "https://metal-stop.pl/wp-json/wc/v3/"
        static let products = "products"
        static let consumerKeyParam = "?consumer_key=\(APIClient.consumerKey)"
        static let consumerSecretParam = "&consumer_secret=\(APIClient.consumerSecret)"
        static let perPageParam = "&per_page=\(APIClient.perPage)"
        static let categoryParam = "&category=\(APIClient.category)"
        
        case getProductCategory
        
        var stringValue: String {
            switch self {
            case .getProductCategory:
                return Endpoints.base + Endpoints.products + Endpoints.consumerKeyParam + Endpoints.consumerSecretParam + Endpoints.perPageParam + Endpoints.categoryParam
            }
        }
        
        var url: URL {
            return URL(string: stringValue)!
        }
    }
    
    static func getProducts(for category: Int, completion: @escaping ([MSProduct], Error?) -> Void) {
        APIClient.category = category 
        taskForGETRequest(url: Endpoints.getProductCategory.url, responseType: [MSProduct].self) { (response, error) in
            if let response = response {
                completion(response, nil)
            } else {
                completion([], error)
            }
        }
    }




    
    @discardableResult static func taskForGETRequest<ResponseType: Decodable>(url: URL, responseType: ResponseType.Type, completion: @escaping (ResponseType?, Error?) -> Void) -> URLSessionDataTask {
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else {
                DispatchQueue.main.async { completion(nil, error) }
                return
            }
        
            
            let decoder = JSONDecoder()
            do {
                let responseObject = try decoder.decode(ResponseType.self, from: data)
                DispatchQueue.main.async { completion(responseObject, nil) }
            } catch {
                do {
                    let errorResponse = try decoder.decode(APIResponse.self, from: data)
                    DispatchQueue.main.async { completion(nil, errorResponse) }
                } catch {
                    DispatchQueue.main.async { completion(nil, error) }
                }
            }
        }
        
        task.resume()
        return task
    }
}
