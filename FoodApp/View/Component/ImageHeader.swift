//
//  ImageHeader.swift
//  FoodApp
//
//  Created by MACBOOK PRO on 16/04/24.
//

import SwiftUI

struct ImageHeader: View {
    var food: Food
    var body: some View {
        ZStack(alignment: .topLeading){
            Image(food.image)
                .resizable()
                .scaledToFill()
                .frame(height: 300)
                .clipped()
            
            
            HStack{
                Image(systemName: "mappin.and.ellipse.circle.fill")
                Text(food.location)
                
            }
            .foregroundColor(.white)
            .padding(10)
            .background(
                UnevenRoundedRectangle(cornerRadii: .init(topLeading: 0.0, bottomTrailing: 10.0))
                    .foregroundStyle(.black.opacity(0.8))
            )
        }
    }
}
#Preview {
    FoodCard(food: Food.foodData[2])
        .padding()
}
