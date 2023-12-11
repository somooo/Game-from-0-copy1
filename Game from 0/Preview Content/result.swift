//
// g.swift
// my app
//
// Created by نورة on 02/07/1445 AH.
//

import SwiftUI
import CloudKit

struct result: View {
    @State var isRotating = false
    @State var isHidden = false
    var body: some View {
        NavigationView{
        //zstack1
        ZStack{
            Image("background")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .ignoresSafeArea()
                .blur(radius: 5)
            
            Image("resultGlassCard")
            
            //Vstack1
            VStack{
                ZStack{
                    RoundedRectangle(cornerSize: .zero)
                   // Rectangle()
                            .fill(.black.opacity(0.1))
                            .frame(width: 330,height: 60)
                            // .padding(1)
                    
                    //Hstack5
                                   HStack(spacing: 100, content: {
                                       Text("Muna")
                                           
                                       //Hstack6
                                       HStack{
                                           Text("٢ عملات")
                                           Image("coin")
                                       }//Hstack6
                                   })//Hstack5
                                   .font(.title)
                                   .bold()
                    
                    
                }
                ZStack{
                    RoundedRectangle(cornerSize: .zero)
                   // Rectangle()
                            .fill(.black.opacity(0.08))
                            .frame(width: 330,height: 40)
                           //  .padding(1)
                    
                    
                                        
                    //Hstack5
                                   HStack(spacing: 100, content: {
                                       Text("Sarah")
                                           
                                       //Hstack6
                                       HStack{
                                           Text("٠ عملات")
                                           Image("coin")
                                       }//Hstack6
                                   })//Hstack5
                                   .font(.title2)
                                   .bold()
                    
                }
                ZStack{
                    /* RoundedRectangle(cornerSize: .zero)
                   // Rectangle()
                            .fill(.black.opacity(0.08))
                            .frame(width: 330,height: 30)
                           //  .padding(1)
                    
                    
                    //Hstack5
                                   HStack(spacing: 100, content: {
                                       Text("Muna")
                                           
                                       //Hstack6
                                       HStack{
                                           Text("٣ عملات ")
                                           Image("coin")
                                       }//Hstack6
                                   })//Hstack5
                                   .font(.title3)
                                   .bold()*/
                    
                    
                }
               
                
            }//Vstack1
            
            Text("مبروك🏆🎊")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding(.bottom,450)
                .position(x:220 ,y:430)
            
                NavigationLink(destination: startPage()    .navigationBarBackButtonHidden(true)) {
                    Image(systemName: "house")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                    }//text
                .background(Color.blue)
                    .cornerRadius(10)
                    .padding()
                    .position(x:214 ,y:520)
                    
                    
                    
                } // .padding(.top,40)
                
            }//zstack1
        
        
        
        
        
    }//var body: some View
}//struct result: View


#Preview {
    result()
}
