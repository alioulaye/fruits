//
//  SettingLabelView.swift
//  fruits
//
//  Created by alieu samb on 05/02/2022.
//

import SwiftUI

struct SettingLabelView: View {
    var labelText : String
    var labelImage : String
    var body: some View {
        HStack {
           
                    Text(labelText.uppercased()).bold()
                    Spacer()
                    Image(systemName:labelImage)
                
                
            
        }
    }
}

struct SettingLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingLabelView(labelText: "fructus", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
