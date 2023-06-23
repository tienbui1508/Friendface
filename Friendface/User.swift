//
//  Models.swift
//  Friendface
//
//  Created by Tien Bui on 21/6/2023.
//

import Foundation

struct User: Identifiable, Codable {
    let id: UUID
    let isActive: Bool
    let name: String
    let age: Int
    let company: String
    let email: String
    let address: String
    let about: String
    let registered: Date
    let tags: [String]
    let friends: [Friend]
    
    static let example = User(id: UUID(), isActive: true, name: "Luffy D. Monkey", age: 22, company: "One Piece INC", email: "luffy@gmail.com", address: "111 Anzac high way, Adelaide 5000", about: "Luffy is a pirate", registered: Date.now, tags: ["mange", "comic"], friends: [])
}


