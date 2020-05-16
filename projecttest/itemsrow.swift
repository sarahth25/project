//
//  itemsdetails.swift
//  projecttest
//
//  Created by sarah alshammari on 5/15/20.
//  Copyright © 2020 sarah alshammari. All rights reserved.
//

import Foundation
import SwiftUI
struct item: Hashable,Identifiable {
    var name : String
    var price : Int
    var desc : String
     var id = UUID()


}
let item1 = item(name:"Starry",price: 5,desc: "  oil on canvas by Dutch post-impressionist painter Vincent van Gogh.")
let item2 = item(name: "Night", price: 6,desc: "is an oil on canvas by Dutch post-impressionist painter Vincent van Gogh.")
let item3 = item(name: "Vincent", price: 2,desc: "is an oil on canvas by Dutch post-impressionist painter Vincent van Gogh.")
 let items = [item1,item2,item3]
