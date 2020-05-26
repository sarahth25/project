//
//  reviewcard.swift
//  projecttest
//
//  Created by sarah alshammari on 5/20/20.
//  Copyright © 2020 sarah alshammari. All rights reserved.
//

import SwiftUI

struct reviewcard: View {
   @State var it : item
   
    @State var total: Int
    @State var buttonn = true
    @State var showing = false
    var body: some View {
        ZStack{
           
               
               
            VStack(spacing:40){
                    Text("YOUR ORDER")
                        .font(.custom("SignPainter", size: 50)).offset(x:-70,y:40)

                        List{
                        ForEach(items  , id: \.self){ i in
                            listeditem(it:i)}
                            
                        }.frame(height:400).offset(y:30)
                    
                        
                        VStack(spacing:50){
                       Text("Your Total :\t\t\t\t\t\t\t\t \(total)")
                        .foregroundColor(.black)
                         .font(.custom("SignPainter", size: 30))
                        //.frame(width: 2000, height: 60)
                       /* .background(Color.init("Color"))
                        
                        .clipShape(Capsule())*/
                            checkout(total: $total, it: $it, buttonn: $buttonn)}
                    }
            
        }.offset(y:-30)
        
    }}

struct reviewcard_Previews: PreviewProvider {
    static var previews: some View {
        reviewcard(it: item(name: "Old man", price: 5, desc: "Ahmed"),total: 0)
    }
}
struct Roundedd : Shape {
    
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft,.topRight,.bottomLeft,.bottomRight], cornerRadii: CGSize(width: 35, height: 30))
        return Path(path.cgPath)
    }
}

struct listeditem: View {
    var it : item
    var body: some View {
        VStack{
            HStack(spacing:90){
                HStack(spacing:5){  Image(self.it.name)
                    .resizable()
                    .frame(width: 60, height: 60, alignment: .topTrailing)
                    .cornerRadius(15)
                    //  .offset(x:-50)
                    Text(self.it.name)
                        .font(.custom("SignPainter", size: 30))
                    //   .offset(x:-90)
                }
                Text("\(self.it.price) KD")
                    .font(.custom("SignPainter", size: 30))
                 .offset(x:50)
                
                
            } .frame(width:400,height: 90).cornerRadius(15).offset(x:-50)
            
        }
    }
}


struct checkout: View {
    @Binding var total : Int
    @Binding var it : item
    @Binding var buttonn : Bool
    @State var showing = false
    var body: some View {
        HStack{
            if total > 0{
                NavigationLink(destination: Checkout(total: total)){
                    if buttonn{
                        Text("Checkout")
                            .foregroundColor(.black)
                            .font(.custom("SignPainter", size: 40))
                            .frame(width: 180, height: 60)
                            .background(Color.init("Color"))
                            .clipShape(Capsule())
                    }else{
                        Text("Checkout")
                            .foregroundColor(.black)
                            .font(.custom("SignPainter", size: 40))
                            .frame(width: 180, height: 60)
                            // .background(Color.init(bg))
                            .overlay(Capsule().stroke(Color.init("Color"),lineWidth: 8))
                            
                            .clipShape(Capsule())
                    }
                }}
            else{
                Button(action:{
                    self.showing.toggle()
                     
                                  
                }){
                Text("Checkout")
                    .foregroundColor(.black)
                    .font(.custom("SignPainter", size: 40))
                    .frame(width: 180, height: 60)
                    .background(Color.init("Color"))
                    .clipShape(Capsule())}
                 
                    .alert(isPresented: $showing){
                        
                        Alert(title: Text("Your cart is empty you have to order"),dismissButton: .default(Text("Ok")))
                }
                
                     
                
                         
                  
                  }

          
                
                
           
            

        Button(action: {
                self.buttonn.toggle()
            })
            {
                NavigationLink(destination: SwiftUIView(it:it)){
                    if self.buttonn == true{
                        Text("ADD Items")
                            .foregroundColor(.black)
                            .font(.custom("SignPainter", size: 40))
                            .frame(width: 180, height: 60)
                            //  .background(Color.init("Color"))
                            .overlay(Capsule().stroke(Color.init("Color"),lineWidth: 8))
                            .clipShape(Capsule())}
                    else{
                        Text("ADD Items")
                            .foregroundColor(.black)
                            .font(.custom("SignPainter", size: 40))
                            .frame(width: 180, height: 60)
                            .background(Color.init("Color"))
                            
                            .clipShape(Capsule())
                    }
                    
                }}
            
            
            
        }.offset(y:-40)
    }
}

