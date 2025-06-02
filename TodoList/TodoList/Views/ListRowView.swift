//
//  ListRowView.swift
//  TodoList
//
//  Created by Mohammad Shariq on 31/05/25.
//

import SwiftUI

struct ListRowView: View {
    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundStyle(item.isCompleted ? Color.green : Color.red)
            Text(item.title)
            Spacer()
        }
        .font(.headline)
        .padding(.vertical, 8)
    }
}

#Preview {
    //ListRowView(title: "Office Timing : 9pm - 5am")
}
