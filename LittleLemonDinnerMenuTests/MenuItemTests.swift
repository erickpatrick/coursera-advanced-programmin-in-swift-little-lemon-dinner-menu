//
//  LittleLemonDinnerMenuTests.swift
//  LittleLemonDinnerMenuTests
//
//  Created by Erick Rocha on 31.12.24.
//

import XCTest

@testable import LittleLemonDinnerMenu

final class MenuItemTests: XCTestCase {
    func test_MenuItemTitle_init_shouldReturnCorrectTitle() {
        let menuItem = MenuItem(title: "Some Drink", price: 1.00, isPopular: false, ingredients: [], menuCategory: .Drink, ordersCount: 0)
        
        XCTAssertEqual(menuItem.title, "Some Drink")
        XCTAssertEqual(menuItem.menuCategory, .Drink)
        XCTAssertEqual(menuItem.ordersCount, 0)
    }
    
    func test_MenuItemWithIngredients_init_shouldReturnCorrectIngredientList() {
        let menuItem = MenuItem(title: "Brocolli with Carrots", price: 1.00, isPopular: false, ingredients: [.Brocolli, .Carrot], menuCategory: .Food, ordersCount: 999)
        
        XCTAssertEqual(menuItem.title, "Brocolli with Carrots")
        XCTAssertEqual(menuItem.ingredients, [.Brocolli, .Carrot])
        XCTAssertEqual(menuItem.menuCategory, .Food)
        XCTAssertEqual(menuItem.ordersCount, 999)
    }
    
}
