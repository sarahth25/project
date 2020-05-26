//
//   Categories.swift
//  projecttest
//
//  Created by sarah alshammari on 5/16/20.
//  Copyright © 2020 sarah alshammari. All rights reserved.
//

import SwiftUI

struct _Categories: View {
    var it : item
    var body: some View {
        NavigationView{
           
                VStack(){
                    
                    
                    
                    text()
                    
                    NavigationLink(destination:SwiftUIView(it:it)){
                        image()}
                    
                    
                    
                    
                    
                    
                }
            
          
        }//.offset(y:10)
    }}

struct _Categories_Previews: PreviewProvider {
    static var previews: some View {
        _Categories(it: item(name: "1", price: 2,desc: "is an oil on canvas by Dutch post-impressionist painter Vincent van Gogh.",total: 0))
    }
}

struct text: View {
    var body: some View {
        
        Text("  What are you looking for ?")
            .fixedSize(horizontal: false, vertical: true)
            .font(.custom("SignPainter", size: 40))
        
            .padding(.horizontal, 50)
            .padding(.vertical, 10)
            .background(Color.init("Color"))
            .clipShape(Capsule())
            .frame(width: 300, height:100)
            .offset(y:-50)
    }
}

struct image: View {
    var body: some View {
        VStack(spacing:10){
            Image("painnt").renderingMode(.original)
                .resizable()
                .padding(.horizontal, 30)
                .padding(.vertical, 30)
                .background(Color.init("Color"))
                .clipShape(Capsule())
                .frame(width: 200, height:200)
             .offset(y:-40)
            Image("camera").renderingMode(.original)
                .resizable()
                .padding(.horizontal, 30)
                .padding(.vertical, 30)
                .background(Color.init("Color"))
                .clipShape(Capsule())
                .frame(width: 200, height:200)
               .offset(y:-40)
            
            
        }
    }
}
