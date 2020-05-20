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
    @EnvironmentObject var env : Env
@State var totall = 0
   
  var body: some View {
    NavigationView{
    ZStack{
            Color.init("Color")
                .edgesIgnoringSafeArea(.all)
            VStack{
                HStack{
               
                NavigationLink(destination: reviewcard(it: self.it, total: self.totall)){
                    Image(systemName: "cart")
                        .font(.system(size: 40))
                        .foregroundColor(.black)
                   
                        .offset(x: -120, y:  -60)

                    }
                    PlusButton(total: $totall ,it: it).offset(x: 120, y:  -60)
                }
            HStack{
        ScrollView(.horizontal){
            HStack(spacing:50){
            ForEach(items,  id: \.self){ i in
                Home(it: i,totall: self.$totall)//.offset(y:-30)\
            
            
            }
            }.padding()
        
                }}}
        }}}
}
struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView(it:item(name: "Fisherman", price: 2,desc: "Aziz alswaidan",total:0))
    }
}


struct Rounded : Shape {
    
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft,.topRight,.bottomLeft,.bottomRight], cornerRadii: CGSize(width: 25, height: 0))
        return Path(path.cgPath)
    }
}

struct Home: View {
    var it : item
    @EnvironmentObject var env : Env
    @Binding var totall : Int
//    @Binding var product : [String]

    var body: some View {
     
        ZStack{
           
            GeometryReader{ geo in
                ZStack{
                    VStack{
                        Color.white
                    }
                    VStack(spacing:0){
                        Text("\(self.it.name)")
                            // .font(.largeTitle)
                            .font(.custom("SignPainter", size: 50))                    .fontWeight(.semibold).offset(y:-20)
                           // .animation(Animation.easeOut(duration: 0.6).delay(0.1))
                        .animation(.interactiveSpring(response: 0.4, dampingFraction: 0.4, blendDuration: 0.5))
                        Text("\(self.it.desc)")
                            .transition(AnyTransition.slide).animation(.default)
                            .font(.custom("SignPainter", size: 25))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.gray)
                            .lineSpacing(10)
                            .offset(y:-20)
                            .animation(Animation.easeInOut(duration: 0.6).delay(2))
                        Image(self.it.name)
                            .resizable()
                            .frame(width: 250, height: 200, alignment: .center)
                            .cornerRadius(15)
                        Text("\(self.it.price)KD")
                            .font(.custom("SignPainter", size: 40))
                            .fontWeight(.bold)
                             .offset(y:20)
                       
                        Button(action:{
                            self.totall = self.totall + self.it.price
                        }){
                       
                        Text("Buy")
                            .font(.custom("SignPainter", size: 50))
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                            .frame(width: 150, height: 60)
                            .background(Color.init("Color"))
                       
                        .clipShape(Capsule())
                            .offset(y:-30)
                           
                        
                        }
                            
                           .offset(y:60)
                    }} }.frame(width: 300, height: 430)
                .background(Color.white)
                .clipShape(Rounded())
                
               // .padding(.top, -30)
             //   .offset(y:-25)
            
            
            
        }
    }
}


struct PlusButton: View {
    @State var width: CGFloat = 60
    @State var tapped: Bool = false
    @Binding var total : Int
  var  it:item
    var body: some View {
     
        Button(action: addItem) {
            ZStack{
                Rectangle().foregroundColor(Color.white).cornerRadius(12)
                HStack{
                    Image("menu")
                    .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.black)
                        .font(.system(size: 25, weight: .bold, design: .rounded))
                    if tapped{
                        HStack(spacing:0){
                            Button(action: {
                              //  Add(it:self.it)
                            })
                            {  Text("ADD")
                            .font(.custom("SignPainter", size: 30))
                            .foregroundColor(.black)
                                .offset(x: 10)}
                                                
                        Spacer()
                           
                                NavigationLink(destination: reviewcard(it: self.it, total: self.total)){
                            
                            Image(systemName: "cart")
                                                   .font(.custom("Avenir Next Demi Bold", size: 27))
                            .foregroundColor(.black)
                                .offset(x: -110)}
                        }
                    }
                }.offset(x: tapped ? 20 : 0)
            }
            .frame(width: width, height: 60, alignment: .leading)
        }.animation(.interactiveSpring(response: 0.4, dampingFraction: 0.4, blendDuration: 0.5))
        }
    func addItem(){
        tapped.toggle()
        if tapped{
            width = 250
        }else{
            width = 60
        }
    }

}
struct Add : View {
   @State  var product = ""
    @State var yourname = ""
    @State var price = "0"
    var it : item
    var body : some View{
        
        VStack(alignment: .leading, spacing: 15) {
            Button(action: {
                self.it.Createe(name: self.product, price: Int(self.price)!, desc: self.yourname)
            }){
            TextField("Name of the product",text: $product)
            
             TextField("Name of the product",text: $yourname)
             TextField("Name of the product",text: $price)
           
            }
            
            
        }
        }}


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

/*  HStack(spacing:0){
                          Image(systemName: "cart.fill.badge.plus")
                              .font(.custom("Arial Rounded MT Bold", size: 40))
                              .offset(x:10)
                              
                              .padding()
                          Spacer()
                          
                          
                          
                          
                          Text("\(self.it.price)KD")
                              .font(.custom("SignPainter", size: 40))
                              .fontWeight(.bold)
                              .padding()
                          
                      }  .animation(Animation.easeInOut(duration: 0.6).delay(2))*/

/* Image(it.name)
     .resizable()
     .frame(width: 500, height: 600)
     .scaledToFill()
     .edgesIgnoringSafeArea(.all)
     .blur(radius: 20).edgesIgnoringSafeArea(.all)
 
 Color.black.opacity(0.3).edgesIgnoringSafeArea(.all)*/
 /*   .resizable()
  .scaledToFill()
  .transition(AnyTransition.slide).animation(.default)
  .frame(minWidth: nil, idealWidth: nil, maxWidth: UIScreen.main.bounds.width, minHeight: nil, idealHeight: nil, maxHeight: 300, alignment: .center)
  .edgesIgnoringSafeArea(.all)*/