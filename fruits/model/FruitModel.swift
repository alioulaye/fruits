//
//  FruitModel.swift
//  fruits
//
//  Created by alieu samb on 01/02/2022.
//

import SwiftUI

struct Fruit : Identifiable{
    var id = UUID()
    var title : String
    var headline : String
    var image : String
    var gradientColors : [Color]
    var description : String
    var nutrition : [String ]
}
