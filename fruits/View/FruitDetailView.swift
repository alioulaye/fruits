//
//  FruitDetailView.swift
//  fruits
//
//  Created by alieu samb on 03/02/2022.
//

import SwiftUI

struct FruitDetailView: View {
    var fruit : Fruit
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false ){
                VStack(alignment: .center, spacing: 20){
                    
                    //:HEAD

                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 20){
                        
                        //::TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .foregroundColor(fruit.gradientColors[1])
                            .fontWeight(.heavy)
                        
                        //HeadLine
                        
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                    
                        //Nutrition
                        FruitNutritienView(fruit: fruit)
                        
                        //SubHeadline
                        Text("learn more about\(fruit.title)".uppercased())
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //Description
                        Text(fruit.description)
                            .multilineTextAlignment(.leading )
                        //Link
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom,40)
                    }//::VStack
                    
                    .padding(.horizontal, 20)
                    .frame(maxWidth:640,alignment: .center)
                }//::END Vstack
                
                .navigationBarTitle(fruit.title,displayMode:.inline)
                .navigationBarHidden(true)
            }//::scrollview
            .ignoresSafeArea()
        }//::navigationView
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitData[0])
    }
}
