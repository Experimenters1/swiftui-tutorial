//
//  QuestionViewModel.swift
//  test
//
//  Created by Huy vu on 31/10/24.
//

import Foundation
import SwiftUI

class QuestionViewModel: ObservableObject {
    // Các thuộc tính nguồn dữ liệu
    let numbers = [1, 2, 3, 4, 5]
    let names = ["Charlie", "Alice", "Bob"]
    let people = [
        Person(id: UUID(), name: "Alice", age: 30),
        Person(id: UUID(), name: "Bob", age: 25),
        Person(id: UUID(), name: "Charlie", age: 35)
    ]

    // Thuộc tính đã xử lý để sử dụng trong View
    @Published var doubledNumbers: [Int] = []
    @Published var sortedNames: [String] = []
    @Published var sortedPeopleNames: [String] = []

    // Hàm xử lý dữ liệu và gán vào các thuộc tính @Published
    func processData() {
        doubledNumbers = numbers.map { $0 * 2 }
        sortedNames = names.sorted(by: { $0 < $1 })
        sortedPeopleNames = people.map { $0.name }.sorted(by: { $0 < $1 })
    }
}
