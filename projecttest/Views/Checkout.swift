//
//  Checkout.swift
//  projecttest
//
//  Created by sarah alshammari on 5/25/20.
//  Copyright © 2020 sarah alshammari. All rights reserved.
//

import SwiftUI

struct Checkout: View {
   @State var adress = ["","","","",""]
    @State var isChecked:Bool = false
     @State var total: Int
    var body: some View {
        VStack(spacing :30){
            Text("ADRESS")
               .font(.custom("SignPainter", size: 40))

                .offset(x:-130,y:-30)
            VStack{
            TextField("Area",text: $adress[0])
            TextField("Block",text: $adress[1])
            TextField("House No.",text: $adress[2])
            TextField("Street",text: $adress[3])
                TextField("Additional Direction",text: $adress[4])}.offset(y:-30).padding()
            VStack{
                Text("Pay With").offset(x:-120,y:-20)
            .font(.custom("SignPainter", size: 40))
            
                CheckView(isChecked: $isChecked).offset(x:-120,y:-10)
            }
            paymentsummary(total: $total,isChecked: $isChecked)
            
           
        }.offset(y:-20)
    }
}

struct Checkout_Previews: PreviewProvider {
    static var previews: some View {
        Checkout(total: 0)
    }
}
struct CheckView: View {
@Binding var isChecked:Bool


var body: some View {
    Button(action: {self.isChecked.toggle()}){
HStack{
    Image(systemName: isChecked ? "checkmark.square": "square").foregroundColor(Color.black)
 Image("dollar").renderingMode(.original)
    
    .resizable()
    .frame(width: 30, height: 30)
    Text("Cash")
    .font(.custom("SignPainter", size: 30))
.foregroundColor(Color.black)
  
}

}

}

}

struct paymentsummary: View {
    @Binding var total : Int
    @State var showing = false
    @Binding var isChecked:Bool

    var body: some View {
        VStack{
            Text("PAYMENT SUMMARY")
                .font(.custom("SignPainter", size: 30))
                .offset(x:-90)
            HStack(spacing:250){
                Text("Order Total :")
                    .font(.custom("SignPainter", size: 20))
                
                Text("\(total) KD")
                    .font(.custom("SignPainter", size: 20))
                
            }
            HStack(spacing:208){
                Text("Service Charge :")
                    .font(.custom("SignPainter", size: 20))
                
                Text("2.00 KD")                    .font(.custom("SignPainter", size: 20))
            }
            HStack(spacing:280){
                Text("Subtotal :")                    .font(.custom("SignPainter", size: 20))
                
                Text("\(total + 2)KD")                    .font(.custom("SignPainter", size: 20))
            }
          
            Button(action:{
               
                self.showing.toggle()
            })
            {
            Text("Place Order")
                .foregroundColor(.black)
                .font(.custom("SignPainter", size: 40))
                .frame(width: 180, height: 60)
                .background(Color.init("Color"))
          .clipShape(Capsule())
              
                .alert(isPresented: $showing){
           
                Alert(title: Text("Order Confirmed"),message: Text("Your Total \(total)KD Thankyou"),dismissButton: .default(Text("Ok")))
                
          
            
                    }
            
            }
           
            
           
            
        }
    }
}
