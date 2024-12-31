//
//  MenuItemDetailsView.swift
//  LittleLemonDinnerMenu
//
//  Created by Erick Rocha on 31.12.24.
//

import SwiftUI

struct MenuItemDetailsView: View {
    let item: MenuItem
    
    var body: some View {
        ScrollView {
            VStack (alignment: .center) {
                LittleLemonLogo()
                VStack {
                    Text("Price:").fontWeight(.bold)
                    Text(String(format: "$%.2f", item.price))
                        .padding(.bottom)
                    Text("Ordered:").fontWeight(.bold)
                    Text(String(format: "%d", item.ordersCount))
                        .padding(.bottom)
                    if (item.ingredients.count > 0) {
                        Text("Ingredients:").fontWeight(.bold)
                        ForEach(item.ingredients, id: \.self) { ingredient in
                            Text(ingredient.rawValue)
                        }
                    }
                }
            }
        }.navigationTitle(item.title)
    }
}

#Preview {
    MenuItemDetailsView(item: MenuItem(title: "Pasta", price: 15.00, isPopular: false, ingredients: [.Pasta], menuCategory: .Food, ordersCount: 0))
}
