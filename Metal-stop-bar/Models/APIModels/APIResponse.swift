//
//  APIResponse.swift
//  Metal-stop-bar
//
//  Created by Krystian Kozerawski on 08/11/2019.
//  Copyright © 2019 Dominik Kowalski. All rights reserved.
//

import Foundation

struct APIResponse: Codable {
    let statusCode: Int
    let statusMessage: String
    
    enum CodingKeys: String, CodingKey {
        case statusCode = "status_code"
        case statusMessage = "status_message"
    }
}

extension APIResponse: LocalizedError {
    var errorDescription: String? {
        return statusMessage
    }
}
