//
//  SourceLinkView.swift
//  fruits
//
//  Created by alieu samb on 04/02/2022.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox{
            HStack{
                Text("content source ")
                Spacer()
                Link("wikipedia",destination: URL(string: "https://wikipedia.com")! )
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote )
        }
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
