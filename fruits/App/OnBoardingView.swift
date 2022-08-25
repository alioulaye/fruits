//
//  OnBoardingView.swift
//  fruits
//
//  Created by alieu samb on 31/01/2022.
//

import SwiftUI

struct OnBoardingView: View {
    var fruits : [Fruit] = fruitData
    var body: some View {
        TabView{
            ForEach(fruits[0...5]){ item in
                FruitCardView(fruit: item)
            }
           
            
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,2)
        
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView(fruits: fruitData)
    }
}
