//
//  MSProdukt.swift
//  Metal-stop-bar
//
//  Created by Dominik Kowalski on 05/10/2019.
//  Copyright © 2019 Dominik Kowalski. All rights reserved.
//

import Foundation

struct MSProduct: Codable {
    let id : Int?
    let name : String?
    let slug : String?
    let permalink : String?
    let date_created : String?
    let date_created_gmt : String?
    let date_modified : String?
    let date_modified_gmt : String?
    let type : String?
    let status : String?
    let featured : Bool?
    let catalog_visibility : String?
    let description : String?
    let short_description : String?
    let sku : String?
    let price : String?
    let regular_price : String?
    let sale_price : String?
    let date_on_sale_from : String?
    let date_on_sale_from_gmt : String?
    let date_on_sale_to : String?
    let date_on_sale_to_gmt : String?
    let price_html : String?
    let on_sale : Bool?
    let purchasable : Bool?
    let total_sales : Int?
    let virtual : Bool?
    let downloadable : Bool?
    let downloads : [String]?
    let download_limit : Int?
    let download_expiry : Int?
    let external_url : String?
    let button_text : String?
    let tax_status : String?
    let tax_class : String?
    let manage_stock : Bool?
    let stock_quantity : String?
    let stock_status : String?
    let backorders : String?
    let backorders_allowed : Bool?
    let backordered : Bool?
    let sold_individually : Bool?
    let weight : String?
    let dimensions : Dimensions?
    let shipping_required : Bool?
    let shipping_taxable : Bool?
    let shipping_class : String?
    let shipping_class_id : Int?
    let reviews_allowed : Bool?
    let average_rating : String?
    let rating_count : Int?
    let related_ids : [Int]?
    let upsell_ids : [Int]?
    let cross_sell_ids : [Int]?
    let parent_id : Int?
    let purchase_note : String?
    let categories : [Categories]?
    let tags : [Tags]?
    let images : [Images]?
    let attributes : [Attributes]?
    let default_attributes : [String]?
    let variations : [String]?
    let grouped_products : [String]?
    let menu_order : Int?
    let meta_data : [MetaData]?
    let _links : Links?

    enum CodingKeys: String, CodingKey {

        case id = "id"
        case name = "name"
        case slug = "slug"
        case permalink = "permalink"
        case date_created = "date_created"
        case date_created_gmt = "date_created_gmt"
        case date_modified = "date_modified"
        case date_modified_gmt = "date_modified_gmt"
        case type = "type"
        case status = "status"
        case featured = "featured"
        case catalog_visibility = "catalog_visibility"
        case description = "description"
        case short_description = "short_description"
        case sku = "sku"
        case price = "price"
        case regular_price = "regular_price"
        case sale_price = "sale_price"
        case date_on_sale_from = "date_on_sale_from"
        case date_on_sale_from_gmt = "date_on_sale_from_gmt"
        case date_on_sale_to = "date_on_sale_to"
        case date_on_sale_to_gmt = "date_on_sale_to_gmt"
        case price_html = "price_html"
        case on_sale = "on_sale"
        case purchasable = "purchasable"
        case total_sales = "total_sales"
        case virtual = "virtual"
        case downloadable = "downloadable"
        case downloads = "downloads"
        case download_limit = "download_limit"
        case download_expiry = "download_expiry"
        case external_url = "external_url"
        case button_text = "button_text"
        case tax_status = "tax_status"
        case tax_class = "tax_class"
        case manage_stock = "manage_stock"
        case stock_quantity = "stock_quantity"
        case stock_status = "stock_status"
        case backorders = "backorders"
        case backorders_allowed = "backorders_allowed"
        case backordered = "backordered"
        case sold_individually = "sold_individually"
        case weight = "weight"
        case dimensions = "dimensions"
        case shipping_required = "shipping_required"
        case shipping_taxable = "shipping_taxable"
        case shipping_class = "shipping_class"
        case shipping_class_id = "shipping_class_id"
        case reviews_allowed = "reviews_allowed"
        case average_rating = "average_rating"
        case rating_count = "rating_count"
        case related_ids = "related_ids"
        case upsell_ids = "upsell_ids"
        case cross_sell_ids = "cross_sell_ids"
        case parent_id = "parent_id"
        case purchase_note = "purchase_note"
        case categories = "categories"
        case tags = "tags"
        case images = "images"
        case attributes = "attributes"
        case default_attributes = "default_attributes"
        case variations = "variations"
        case grouped_products = "grouped_products"
        case menu_order = "menu_order"
        case meta_data = "meta_data"
        case _links = "_links"
    }
}


struct Images : Codable {
    let id : Int?
    let dateCreated : String?
    let dateCreatedGmt : String?
    let dateModified : String?
    let dateModifiedGmt : String?
    let src : String?
    let name : String?
    let alt : String?
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case dateCreated = "date_created"
        case dateCreatedGmt = "date_created_gmt"
        case dateModified = "date_modified"
        case dateModifiedGmt = "date_modified_gmt"
        case src = "src"
        case name = "name"
        case alt = "alt"
    }
}

struct Dimensions : Codable {
    let length: String?
    let width: String?
    let height: String?
}

struct MetaData: Codable {
    let id: Int?
    let key: String?
    let value: String?
}

struct Tags: Codable {
    let id: Int?
    let name: String?
    let slug: String?
}

struct Collection : Codable {
    let href: String?
}

struct Categories : Codable {
    let id: Int?
    let name: String?
    let slug: String?
}

struct Attributes : Codable {
    let id: Int?
    let name: String?
    let position: Int?
    let visible: Bool?
    let variation: Bool?
    let options: [String]?
}

struct Links : Codable {
    let urls : [URLString]?
    let collection : [Collection]?
}

struct URLString : Codable {
    let href : String?
}
