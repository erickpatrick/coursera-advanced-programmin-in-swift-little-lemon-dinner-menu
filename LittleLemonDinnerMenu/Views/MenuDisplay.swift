//
//  MenuDisplay.swift
//  LittleLemonDinnerMenu
//
//  Created by Erick Rocha on 31.12.24.
//

import SwiftUI


struct MenuDisplay: View {
    let columns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    let title: MenuCategory
    let items: [MenuItem]
    
    var body: some View {
        VStack {
            HStack {
                Text(title.rawValue)
                    .font(.title)
                Spacer()
            }
            LazyVGrid(columns: columns) {
                ForEach(items) { item in
                    HStack (alignment: .top) {
                        NavigationLink {
                            MenuItemDetailsView(item: item)
                        } label: {
                            VStack (alignment: .center) {
                                Color.gray.frame(height: 100)
                                Text(item.title)
                                    .multilineTextAlignment(.center)
                                Spacer()
                            }
                            .foregroundStyle(.black)
                        }

                        
                    }
                }
            }
        }.padding()
    }
}

#Preview {
    MenuDisplay(title: .Food, items: MenuViewViewModel().foodItems)
}
