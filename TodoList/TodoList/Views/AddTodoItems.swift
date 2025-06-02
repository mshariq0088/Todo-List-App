//
//  AddTodoItems.swift
//  TodoList
//
//  Created by Mohammad Shariq on 31/05/25.
//

import SwiftUI

struct AddTodoItems: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var itemViewModel: ItemViewModel
    @State var textFieldText: String = ""
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Add items here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color.gray.opacity(0.3))
                    .cornerRadius(20)
                
                Button(action: addItemButton, label: {
                    Text("Add Item")
                        .foregroundStyle(Color.white)
                        .frame(width: 200, height: 40)
                        .background(Color.black)
                        .cornerRadius(20)
                        .padding(.vertical)
                       
                })

            }
            .padding(14)
                
        }
        
        .navigationTitle("Add Todo items ✍️")
    }
    
    func addItemButton() {
        itemViewModel.addItem(title: textFieldText)
        presentationMode.wrappedValue.dismiss()
    }
}

#Preview {
    NavigationView {
        AddTodoItems()
    }
    .environmentObject(ItemViewModel())
}
