//
//  SettingsView.swift
//  fruits
//
//  Created by alieu samb on 04/02/2022.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical,showsIndicators: false){
                VStack (spacing: 20){
                    
                    //:Mark section1
                    GroupBox(
                        label: SettingLabelView(labelText: "fructus", labelImage: "info.circle")
                        
                    ){
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center
                               , spacing: 10){
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruit are naturally low and calories. None have cholesterol. Fruits are source of many essential nutritients, including potassium diatery fiber, vitamins and much more")
                                .font(.footnote)
                        }
                    }
                    
                    //:Mark section2
                    
                    //:mark section3
                    
                    
                }//vstack
                .navigationBarTitle(Text("Settings"),displayMode:.large)
                .navigationBarItems(
                    trailing:
                        Button(
                            action:{
                                    presentationMode.wrappedValue.dismiss()
                            }
                            ){
                                Image(systemName: "xmark")
                            }
                )
                .padding()
            }
        }
            
    }
}
    

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
