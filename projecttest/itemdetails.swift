//
//  SwiftUIView.swift
//  projecttest
//
//  Created by sarah alshammari on 5/15/20.
//  Copyright © 2020 sarah alshammari. All rights reserved.
//

import SwiftUI

struct SwiftUIView: View {
    var it : item
    @State var total  = 0
    @State  var num = 0
    var body: some View {
        ZStack{
            //  Color.init("\(it.name)")
            VStack(spacing:20){
                
                Image(it.name)
                    
                    .resizable()
                    .scaledToFill()
                    .frame(minWidth: nil, idealWidth: nil, maxWidth: UIScreen.main.bounds.width, minHeight: nil, idealHeight: nil, maxHeight: 300, alignment: .center)
                    .edgesIgnoringSafeArea(.all)
                
                //  .clipped()
                // .offset(y:-100)
                /*  .resizable()
                 .frame(width:300,height: 300 )
                 .cornerRadius(20)*/
                //.clipShape(Circle())
                GeometryReader{ geo in
                    ZStack{
                        VStack{
                            Color.white
                            
                        }
                        VStack(spacing:0){
                            Text("\(self.it.name)")
                                // .font(.largeTitle)
                                .font(.custom("Times New Roman", size: 50))                    .fontWeight(.semibold).offset(y:-30)
                                .animation(Animation.easeOut(duration: 0.6).delay(0.1))
                            Text("\(self.it.desc)")
                                
                                .font(.custom("Times New Roman", size: 20))
                                .multilineTextAlignment(.center)
                                
                                .lineSpacing(10)
                                .padding()
                                .animation(Animation.easeInOut(duration: 0.6).delay(2))
                            HStack(spacing:0){
                                Image(systemName: "cart.fill.badge.plus")
                                    .font(.custom("Times New Roman", size: 40))
                                    .offset(x:10)
                                    
                                    .padding()
                                Spacer()
                                
                                
                                
                                
                                Text("\(self.it.price)KD")
                                    .font(.custom("Times New Roman", size: 40))
                                    .fontWeight(.bold)
                                    .padding()
                                
                            }  .animation(Animation.easeInOut(duration: 0.6).delay(2))

                            .offset(y:60)
                        }} }.background(Color.white)
                    .clipShape(Rounded())
                    
                    .padding(.top, -180)
                
                
                
            }//.offset(y:-30)\
            
            
            
        }
        
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView(it:item(name: "Starry", price: 2,desc: "is an oil on canvas by Dutch post-impressionist painter Vincent van Gogh."))
    }
}

/* Button(action:{
 self.total = self.total + self.it.price
 self.num = self.num + 1
 })
 {Image(systemName: "plus.circle.fill")
 .frame(width: 50, height: 50, alignment: .leading)
 .font(.system(size: 40))
 .foregroundColor(.gray)
 }
 Text(  "\(num)")
 .font(.system(size: 40))
 .fontWeight(.bold)
 Button(action:{
 if self.total > 0 {
 self.total = self.total - self.it.price
 self.num = self.num - 1}
 })
 {Image(systemName: "minus.circle.fill")
 .frame(width: 50, height: 50, alignment: .leading)
 .font(.system(size: 40))
 .foregroundColor(.gray)
 }*/
struct Rounded : Shape {
    
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft,.topRight], cornerRadii: CGSize(width: 40, height: 40))
        return Path(path.cgPath)
    }
}
