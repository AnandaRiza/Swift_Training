//
//  HorizontalContent.swift
//  FoodApp
//
//  Created by MACBOOK PRO on 16/04/24.
//

import SwiftUI

struct HorizontalContent: View {
    var body: some View {
        NavigationStack {
            
            ZStack {
                VStack {
                    UnevenRoundedRectangle(cornerRadii: .init(topLeading: 0, bottomLeading: 40, bottomTrailing: 40, topTrailing: 0))
                        .frame(height: 120)
                    Spacer()
                }
                .foregroundColor(.burungBiru)
                .ignoresSafeArea()
                
                VStack {
                    Spacer()
                    UnevenRoundedRectangle(cornerRadii: .init(topLeading: 40, bottomLeading: 0, bottomTrailing: 0, topTrailing: 40))
                    
                        .frame(height: 80)
                    
                    
                }
                .foregroundColor(.burungBiru)
                .ignoresSafeArea()
                
                
                
                
                
                
                VStack(alignment: .leading) {
                    
                    Group {
                        Text(currentDate())
                            .font(.headline)
                            .foregroundStyle(.secondary)
                        
                        Text("Your last viewed")
                            .font(.system(.title, design: .rounded))
                            .fontWeight(.bold)
                    }
                    .padding(.horizontal)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            ForEach(Food.foodData) {
                                food in FoodCard(food: food)
                                    .frame(width: 300)
                            }
                        }
                    }
                    
                    .padding()
                }
                
                .navigationTitle("Food History")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    Button {
                        print("Cart button tapped")
                    }label: {
                        Image(systemName: "cart")
                            .foregroundStyle(.black)
                    }
                }
                
            }
            
            
        }
        
        
    }
    
    private func currentDate() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE, MMM d, yyyy"
        
        let results = formatter.string(from: Date())
        return results
    }
}


#Preview {
    HorizontalContent()
}
