//
//  Menu.swift
//  LittleLemonDinnerMenu
//
//  Created by Erick Rocha on 31.12.24.
//

import SwiftUI

enum MenuCategory: String, CaseIterable, Identifiable {
    case Food = "Food"
    case Drink = "Drink"
    case Dessert = "Dessert"
    
    var id: Self { self }
}

enum MenuFilters: String, CaseIterable, Identifiable {
    case MostPopular = "Most Popular"
    case Price = "Price $-$$$"
    case AZ = "A-Z"
    var id: Self { self }
}

struct MenuItem: Hashable, Identifiable, MenuItemProtocol {
    let id: UUID = UUID()
    let title: String
    let price: Double
    let isPopular: Bool
    
    var ingredients: [Ingredient]
    var menuCategory: MenuCategory
    var ordersCount: Int
}
