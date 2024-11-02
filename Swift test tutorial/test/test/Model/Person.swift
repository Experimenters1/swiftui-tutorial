//
//  Person.swift
//  test
//
//  Created by Huy vu on 31/10/24.
//

import Foundation

struct Person: Identifiable {
    var id: UUID    // `id` là duy nhất cho mỗi `Person`
    var name: String
    let age: Int
}
