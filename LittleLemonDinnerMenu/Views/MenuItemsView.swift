//
//  MenuItemsView.swift
//  LittleLemonDinnerMenu
//
//  Created by Erick Rocha on 31.12.24.
//

import SwiftUI

struct MenuItemsView: View {
    let viewModel = MenuViewViewModel()
    @State var filterOpen: Bool = false
    
    var body: some View {
        NavigationView {
            VStack (alignment: .leading) {
                ScrollView {
                    MenuDisplay(title: .Food, items: viewModel.foodItems)
                    MenuDisplay(title: .Drink, items: viewModel.drinkItems)
                    MenuDisplay(title: .Dessert, items: viewModel.dessertItems)
                }
            }
            .navigationTitle("Menu")
            .navigationBarItems(trailing: HStack {
                Button {
                    filterOpen.toggle()
                } label: {
                    Image(systemName: "slider.horizontal.3")
                }
            })
            .sheet(isPresented: $filterOpen) {
                MenuItemsOptionView()
            }
        }
    }
}

#Preview {
    MenuItemsView()
}
