//
//  MenuItemProtocol.swift
//  LittleLemonDinnerMenu
//
//  Created by Erick Rocha on 31.12.24.
//

import SwiftUI

protocol MenuItemProtocol {
    var id: UUID { get }
    var title: String { get }
    var price: Double { get }
    var menuCategory: MenuCategory { get }
    var ordersCount: Int { get set }
    var ingredients: [Ingredient] { get set }
}
