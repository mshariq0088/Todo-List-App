//
//  ItemModel.swift
//  TodoList
//
//  Created by Mohammad Shariq on 02/06/25.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
