//
//  ContentView.swift
//  projecttest
//
//  Created by sarah alshammari on 5/14/20.
//  Copyright © 2020 sarah alshammari. All rights reserved.
//

/*import SwiftUI

struct ContentView: View {
    /*var price = [5,2,3]
     var items = ["1","2","3"]*/
   
    var it : item
    var body: some View {
        
        NavigationView{
            
            
            ZStack{
                Color.white
                    .edgesIgnoringSafeArea(.all)
            
            ScrollView(.horizontal){
                
                HStack{
                    ForEach(items ,  id: \.self){ i in
                        NavigationLink(destination: SwiftUIView(it:i)){ listitem( it:i)
                            
                        }
                        
                        
                    }
                    
                    
                }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                .navigationBarTitle("PHOTOGRAPHY")
                
                
                
               

                
                
            }
            
            }
        }.accentColor(.white).offset(y:-20)

    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView(it: item(name: "1", price: 2,desc: "is an oil on canvas by Dutch post-impressionist painter Vincent van Gogh.", total: 0))
        }
    }
    
    
    struct IMAGE: View {
        var body: some View {
            Image(systemName: "cart")
                .foregroundColor(.black)
                .font(.system(size:3)).offset(x:150,y:-300)
        }
    }
    
    struct listitem: View {
        var it: item
        var body: some View {
            
            VStack{
                Image("\(it.name)").renderingMode(.original)
                    .resizable()
                    .scaledToFill()
                    .frame(width:300,height: 300)
                    .cornerRadius(20)
                    .padding()
                    .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 0)
                    .rotation3DEffect(.degrees(5), axis: (x: 0, y: -1, z: 0))
                    
                
                VStack(spacing:10){
                    Text("\(it.name)")
                        .font(.custom("SignPainter", size: 50))
                        .font(.callout)
                        .fontWeight(.heavy)
                        .foregroundColor(.black)
                     .transition(AnyTransition.slide).animation(.default)
                    Text("\(it.price)KD")
                        .font(.custom("SignPainter", size: 40))
                       
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .offset(x:-15)
                    
                    
                    
                    
                    
                }
                
            }
            .padding(.vertical)
        }
    }
    
    
}

/* NavigationView{
 
 
 VStack(spacing :50){
 List{
 
 ScrollView{
 //     VStack(spacing :50){
 ForEach( items.indices , id: \.self){ i in
 
 
 HStack(spacing:50){
 Image("\(self.items[i])")
 .resizable().frame(width: 100, height: 100, alignment: .leading).cornerRadius(10)
 // .offset(x:30)
 
 // ForEach(self.price.indices , id: \.self) { j in
 VStack(spacing:4){
 Text("name \(self.items[i])")
 Text("descrption")
 
 Text("\(self.price[i]) $")
 
 
 }//}
 Button(action:{
 self.total = self.total + self.price[i.self]
 })
 { Text("+")
 .font(.title)
 .foregroundColor(.blue)
 .frame(width: 40, height: 40, alignment: .center)
 .background(Color.white)
 .overlay(Circle().stroke(Color.blue,lineWidth: 5))
 .multilineTextAlignment(.center)
 .clipShape(Circle())
 //.offset(x:20)
 .padding()
 }
 
 
 
 }
 
 
 
 }
 
 
 }
 }
 }
 .navigationBarTitle("ITEMS")}*/
*/
