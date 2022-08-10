//
//  Article.swift
//
//  Created by Frankie Barrios on 8/8/22.
//

import Foundation

struct Article: Identifiable, Hashable {
    let id = UUID()
    
    let title: String
    let author: String
}

extension Article {
    static let examples: [Article] = [
        .init(title: "Intro to Swift", author: "Frankie Barrios"),
        .init(title: "Data for Dummies", author: "Jeff Goldblum"),
        .init(title: "Hello World", author: "Steve Jobs")
    ]
}
