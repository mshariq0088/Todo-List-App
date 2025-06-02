//
//  TodoListApp.swift
//  TodoList
//
//  Created by Mohammad Shariq on 31/05/25.
//

import SwiftUI

@main
struct TodoListApp: App {
    
    @StateObject var itemViewModel: ItemViewModel = ItemViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(itemViewModel)
        }
    }
}
