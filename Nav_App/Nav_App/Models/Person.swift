//
//  Person.swift
//
//  Created by Frankie Barrios on 8/8/22.
//

import Foundation

struct Person: Identifiable, Hashable {
    let id = UUID()
    
    let name: String
    let age: Int
}

extension Person {
    static let examples: [Person] = [
        .init(name: "Frankie", age: 33),
        .init(name: "Ricky", age: 31),
        .init(name: "Steven", age: 29),
        .init(name: "Julianna", age: 17)
    ]
}
