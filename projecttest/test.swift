//
//  test.swift
//  projecttest
//
//  Created by sarah alshammari on 5/17/20.
//  Copyright © 2020 sarah alshammari. All rights reserved.
//

import SwiftUI

struct test: View {
   var it : item
     @State var page = 0
    
    var width : CGFloat
    
    
    var body: some View {
       VStack{
                   
                   VStack{
                       
                    Text(it.name)
                           .font(.title)
                           .fontWeight(.bold)
                           .padding(.top,20)
                       
                    Text(it.name)
                           .foregroundColor(.gray)
                           .padding(.vertical)
                       
                       Spacer(minLength: 0)
                       
                    Image(it.name)
                       .resizable()
                      /* .frame(width: self.width - (self.page == self.it.idd ? 100 : 150), height: (self.page == self.it.idd ? 250 : 200))*/
                           .cornerRadius(20)
                       
                    Text(it.name)
                           .fontWeight(.bold)
                           .font(.title)
                           .padding(.top, 20)
                       
                       Button(action: {
                           
                       }) {
                           
                           Text("Buy")
                               .foregroundColor(.black)
                               .padding(.vertical, 10)
                               .padding(.horizontal, 30)
                       }
                       .background(Color("Color"))
                       .clipShape(Capsule())
                       .padding(.top, 20)
                       
                       
                       Spacer(minLength: 0)
                       
                       // For Filling Empty Space....
                   }
                   .padding(.horizontal, 20)
                   .padding(.vertical, 25)
                   .background(Color.white)
                   .cornerRadius(20)
                   .padding(.top, 25)
                 /*  .padding(.vertical, self.page == it.idd ? 0 : 25)
                   .padding(.horizontal, self.page == it.idd ? 0 : 25)*/
                   
                   // Increasing Height And Width If Currnet Page Appears...
               }
               .frame(width: self.width)
               .animation(.default)
           }
       }
    

struct test_Previews: PreviewProvider {
    static var previews: some View {
        test(it:item(name: "Starry", price: 2,desc: "is an oil on canvas by Dutch post-impressionist painter Vincent van Gogh."), width: 60)
    }
}

