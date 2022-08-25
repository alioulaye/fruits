//
//  StartButtonView.swift
//  fruits
//
//  Created by alieu samb on 31/01/2022.
//

import SwiftUI

struct StartButtonView: View {
    @AppStorage ("isOnboarding") var isOnboarding : Bool?
    var body: some View {
        Button(action: {
            isOnboarding = false
            //print("button clicked")
        }){
            HStack (spacing: 20){
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal,16)
            .padding(.vertical,10)
            .background(Capsule().strokeBorder(Color.white,lineWidth: 1.25))
        }//button
        .accentColor(Color.white)
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
