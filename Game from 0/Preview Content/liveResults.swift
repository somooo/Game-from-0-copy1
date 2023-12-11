//
//  liveResults.swift
//  Game from 0
//
//  Created by Muna Aiman Al-hajj on 23/05/1445 AH.
//

import SwiftUI

struct liveResults: View {
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .ignoresSafeArea()
                .blur(radius: 5)
            
            VStack{
                ZStack{
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/ )
                    .fill(.white.opacity(0.8))
                    .frame(width: 300, height: 450)
                
                    Text("راقبهم 👀")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .bold()
                        .position(x: 220, y: 200)
                        
                    HStack{
    
                        Text("٢ لاعبين")
                        Image(systemName: "person.2")
                    }
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                    //.padding()
                    .position(x: 220, y: 320)
                    
                    HStack{
                    
                        Text("العملات المتبقية")
                        Image(systemName: "xmark")
                            .resizable()
                            .frame(width: 10, height: 10)
                        Text("٠")
                        
                        Image("coin")
                            .resizable()
                            .frame(width: 30, height: 30)
                    }
                    .font(.title2)
                    .bold()
                  //  .padding()
                    .position(x: 220, y: 400)
                    
                    NavigationLink(destination: result()    .navigationBarBackButtonHidden(true)) {
                        Text("انهي التحدي")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding()
                        }//text
                    .background(Color.blue)
                        .cornerRadius(10)
                        .padding()
                        .position(x:214 ,y:520)
                        
                }
                }
            }
            
        }
    }


#Preview {
    liveResults()
}
