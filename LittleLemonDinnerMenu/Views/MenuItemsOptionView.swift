//
//  MenuItemsOptionView.swift
//  LittleLemonDinnerMenu
//
//  Created by Erick Rocha on 31.12.24.
//

import SwiftUI

struct MenuItemsOptionView: View {
    @Environment(\.dismiss) var dismiss
//    @Binding var filterOpen: Bool
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Selected Categories")) {
                    ForEach(MenuCategory.allCases) { category in
                        Text(category.rawValue)
                    }
                    
                }
                Section(header: Text("Sort By")) {
                    ForEach(MenuFilters.allCases) { menuFilter in
                        Text(menuFilter.rawValue)
                    }
                }
            }
            .listStyle(.grouped)
            .navigationTitle("Filter").toolbar {
                ToolbarItem {
                    Button("Done") {
                        dismiss()
                    }.fontWeight(.bold)
                }
            }
        }
    }
}

#Preview {
    MenuItemsOptionView()
}
