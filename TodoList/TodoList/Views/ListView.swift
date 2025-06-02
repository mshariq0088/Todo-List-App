//
//  ListView.swift
//  TodoList
//
//  Created by Mohammad Shariq on 31/05/25.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var itemViewModel: ItemViewModel

    var body: some View {
        List {
            ForEach(itemViewModel.items ) { item in
                ListRowView(item: item)
                
            }
            .onDelete(perform: itemViewModel.deleteItem)
            .onMove(perform: itemViewModel.moveItem)
           
        }
        .listStyle(.plain)
        .navigationTitle("Todo List 📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing: NavigationLink("Add", destination: AddTodoItems()))
    }
}

#Preview {
    NavigationView {
        ListView()
    }
    .environmentObject(ItemViewModel())
    
}
