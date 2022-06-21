//
//  MetaModel.swift
//  Blm
//
//  Created by catalina lozano on 08/06/22.
//

import Foundation

struct MetaModel: Codable{
    var meta: PaginationModel?
    var data: [Datos]?
}
struct PaginationModel: Codable {
    var pagination: Paginacion?
}
struct Paginacion: Codable{
    var total: Int?
    var pages: Int?
    var page: Int?
    var limit: Int?
    var links: Ligas?
}
struct Ligas: Codable {
    var previous: String? = nil
    var current: String?
    var next: String?
}

struct Datos: Codable{
    var id: Int?
    var name: String?
    var email: String?
    var gender: String?
    var status: String?
}
