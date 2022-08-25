//
//  ContentView.swift
//  fruits
//
//  Created by alieu samb on 30/01/2022.
//

import SwiftUI

struct ContentView: View {
   var fruits: [Fruit] = fruitData
    @State private var isShowingSetting : Bool = false
    
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits.shuffled()){item in
                    NavigationLink(destination: FruitDetailView(fruit: item)){
                        FruitRowView(fruit: item)
                            .padding(.vertical , 4)
                    }
                    
                }

            }
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action:{
                        isShowingSetting = true
                    }){
                        Image(systemName: "slider.horizontal.3")
                    }
                    
                    .sheet(isPresented: $isShowingSetting){
                        SettingsView()
                    }
            )
        }///::Navigation
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitData)
    }
}
