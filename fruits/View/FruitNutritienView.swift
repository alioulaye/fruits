//
//  FruitNutritienView.swift
//  fruits
//
//  Created by alieu samb on 04/02/2022.
//

import SwiftUI

struct FruitNutritienView: View {
    var fruit: Fruit
    
    let nutritient : [String] = ["Energie","Sugar","Fat","protein","Vitamins","Nimerals"]
    var body: some View {
        GroupBox(){
            DisclosureGroup("nutritional group par 100g"){
                ForEach(0..<nutritient.count, id: \.self ) { item in
                    Divider().padding(.vertical,2)
                    HStack {
                        
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutritient[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 20)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }
        
    }
}

struct FruitNutritienView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutritienView(fruit: fruitData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
