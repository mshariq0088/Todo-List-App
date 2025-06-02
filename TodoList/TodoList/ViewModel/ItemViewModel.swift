//
//  ItemViewModel.swift
//  TodoList
//
//  Created by Mohammad Shariq on 02/06/25.
//

import Foundation

class ItemViewModel: ObservableObject {
    
    @Published var items: [ItemModel] = []
    
    init() {
        getItem()
    }
    
    func getItem() {
        let newItems = [
            ItemModel(title: "Office Timing : 9pm - 5am", isCompleted: false),
            ItemModel(title: "Lunch Timing : 1pm - 2pm", isCompleted: true),
            ItemModel(title: "Dinner Timing: 9pm - 10pm", isCompleted: false),
        ]
        items.append(contentsOf: newItems)
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title: String) {
        let newItem = ItemModel(title: title, isCompleted: true)
        items.append(newItem)
    }
}
