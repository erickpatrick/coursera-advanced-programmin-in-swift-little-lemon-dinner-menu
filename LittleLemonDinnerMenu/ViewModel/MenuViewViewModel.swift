//
//  MenuViewViewModel.swift
//  LittleLemonDinnerMenu
//
//  Created by Erick Rocha on 31.12.24.
//

import SwiftUI

class MenuViewViewModel {
    let foodItems: [MenuItem] = [
        MenuItem(title: "Pasta", price: 15.00, isPopular: false, ingredients: [.Pasta], menuCategory: .Food, ordersCount: 123),
        MenuItem(title: "Pasta with Brocolli", price: 15.00, isPopular: false, ingredients: [.Pasta, .Brocolli], menuCategory: .Food, ordersCount: 564),
        MenuItem(title: "Pasta with Carrot", price: 15.00, isPopular: false, ingredients: [.Pasta, .Carrot], menuCategory: .Food, ordersCount: 1030),
        MenuItem(title: "Pasta with Carrot and Brocolli", price: 15.00, isPopular: false, ingredients: [.Pasta, .Carrot, .Brocolli], menuCategory: .Food, ordersCount: 99),
        MenuItem(title: "Brocolli and Carrot", price: 10.00, isPopular: false, ingredients: [.Brocolli, .Carrot], menuCategory: .Food, ordersCount: 342),
        MenuItem(title: "Carrot", price: 5.00, isPopular: false, ingredients: [.Carrot], menuCategory: .Food, ordersCount: 576),
        MenuItem(title: "Brocolli", price: 5.00, isPopular: true, ingredients: [.Brocolli], menuCategory: .Food, ordersCount: 9876),
        MenuItem(title: "Spinach and Brocolli", price: 10.00, isPopular: true, ingredients: [.Spinach, .Brocolli], menuCategory: .Food, ordersCount: 1234),
        MenuItem(title: "Spinach Soup", price: 13.00, isPopular: true, ingredients: [.Spinach], menuCategory: .Food, ordersCount: 3234),
        MenuItem(title: "Pasta with Tomato Sauce", price: 12.00, isPopular: true, ingredients: [.Pasta, .TomatoSauce], menuCategory: .Food, ordersCount: 12),
        MenuItem(title: "Pasta with Tomato Sauce and Carrot", price: 15.00, isPopular: true, ingredients: [.Pasta, .TomatoSauce, .Carrot], menuCategory: .Food, ordersCount: 31282),
        MenuItem(title: "Pasta with Tomato Sauce and Brocolli", price: 25.00, isPopular: true, ingredients: [.Pasta, .TomatoSauce, .Brocolli], menuCategory: .Food, ordersCount: 666)
        
    ]
    
    let drinkItems: [MenuItem] = [
        MenuItem(title: "Water", price: 4.00, isPopular: true, ingredients: [], menuCategory: .Drink, ordersCount: 8888),
        MenuItem(title: "Juice", price: 5.00, isPopular: true, ingredients: [], menuCategory: .Drink, ordersCount: 7777),
        MenuItem(title: "Cola", price: 5.00, isPopular: true, ingredients: [], menuCategory: .Drink, ordersCount: 6666),
        MenuItem(title: "Lemo", price: 5.00, isPopular: true, ingredients: [], menuCategory: .Drink, ordersCount: 5555),
        MenuItem(title: "Tea", price: 3.00, isPopular: true, ingredients: [], menuCategory: .Drink, ordersCount: 4444),
        MenuItem(title: "Caffe", price: 3.00, isPopular: true, ingredients: [], menuCategory: .Drink, ordersCount: 3333),
        MenuItem(title: "Whiskey", price: 25.00, isPopular: true, ingredients: [], menuCategory: .Drink, ordersCount: 2222),
        MenuItem(title: "Wine", price: 15.00, isPopular: true, ingredients: [], menuCategory: .Drink, ordersCount: 1111),
    ]
    
    let dessertItems: [MenuItem] = [
        MenuItem(title: "Tiramissu", price: 12.10, isPopular: true, ingredients: [], menuCategory: .Drink, ordersCount: 333),
        MenuItem(title: "Chocolate Cake", price: 7.50, isPopular: true, ingredients: [], menuCategory: .Drink, ordersCount: 2222),
        MenuItem(title: "Brzailian Brigadeiro", price: 9.99, isPopular: true, ingredients: [], menuCategory: .Drink, ordersCount: 9999),
        MenuItem(title: "American Cheesecake", price: 8.25, isPopular: true, ingredients: [], menuCategory: .Drink, ordersCount: 111),
    ]
}
