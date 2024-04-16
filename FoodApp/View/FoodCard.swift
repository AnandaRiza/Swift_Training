//
//  FoodCard.swift
//  FoodApp
//
//  Created by MACBOOK PRO on 16/04/24.
//

import SwiftUI

struct FoodCard: View {
    var food: Food
    
    var body: some View {
        VStack{
            ImageHeader(food: food)
            
            FoodHeader(food: food)
                .padding([.top, .horizontal])
        }
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .overlay {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.sRGB, red:149/255,green: 165/255, blue: 166/165, opacity: 0.2),lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
        }
        .padding(.bottom)
    }
}

#Preview {
    FoodCard(food: Food.foodData[2])
        .padding()
}






// MARK : - FOODHEADER
struct FoodHeader: View {
    var food: Food

    var body: some View {
        
        HStack {
            VStack(alignment: .leading, spacing: 8)
            {
                Text(food.category.joined(separator: ", "))
                    .font(.headline)
                    .foregroundStyle(.secondary)
                
                Text(food.heading)
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundStyle(.primary)
                    .lineLimit(3, reservesSpace: true)
                
                Text("Chef By \(food.chef)".uppercased())
                    .font(.caption)
                    .foregroundStyle(.secondary)
                    .padding(.bottom)
                
                
            }
            .padding(.top, 16)
            
            Spacer()
        }
    }
}
