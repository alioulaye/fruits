//
//  FruitCardView.swift
//  fruits
//
//  Created by alieu samb on 30/01/2022.
//

import SwiftUI

struct FruitCardView: View {
    //:properties
      var fruit : Fruit
    
    @State private  var isAnimated : Bool = false
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                //fruit image
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0,opacity:0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimated ? 1.0 : 0.6  )
                //fruit title
                Text(fruit.title)
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0), radius: 2, x: 2, y: 2)
                //fruit) head Line
                
                Text(fruit.headline)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(16)
                    .frame(maxWidth:480 )
                //Button start
                StartButtonView()
            }
        }//ZStack
        .onAppear{
            withAnimation(.easeOut(duration: 0.5)){
                isAnimated = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0,  maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(
            colors:fruit.gradientColors
        ), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
        

    }
}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitData[6])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
