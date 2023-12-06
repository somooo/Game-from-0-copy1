//
//  GameCodePage.swift
//  Game from 0
//
//  Created by bsamh on 04/12/2023.
//


import SwiftUI
import UIKit
import Foundation

struct GameCodePage: View {
    @State private var gameCode: String = GameCodeGenerator.generateGameCode()
    
    var body: some View {
        ZStack{
            VStack {
                // Text
                Text("Game Code: ")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .padding()
                    .position(x:200 , y:200)
                
                // Icons
                                   HStack {
                                       Image(systemName: "arkit")
                                           .resizable()
                                           .frame(width: 50, height: 50)
                                           .foregroundColor(.gray)
                                       
                                       Image(systemName: "gamecontroller")
                                           .resizable()
                                           .frame(width: 50, height: 50)
                                           .foregroundColor(.gray)
                                   }//Hstack
                                   .padding(50)
                                   .position(x:200 , y:120)
                
                ZStack{
                    Image("codeGlass")
                                                .resizable()
                                                .blur(radius: 8)
                                                .frame(width: 350, height: 400)
                    
                    VStack{
                        
                        Text(gameCode)
                                                        .font(.title)
                                                        .foregroundColor(.gray)
                                                        .padding()
                                                        .position(x:200 , y:140)
                        
                        
                        HStack{
                            // Copy and start button
                                                        Button(action: {
                                                            UIPasteboard.general.string = gameCode
                                                            // Optionally, you can regenerate the code when the button is tapped
                                                            gameCode = GameCodeGenerator.generateGameCode()
                                                        }//button
                                                        ) {
                                                            Text("Copy")
                                                                .font(.title3)
                                                                .fontWeight(.bold)
                                                                .foregroundColor(.white)
                                                                .padding()
                                                        }//text
                                                    .background(Color.blue)
                                                    .cornerRadius(10)
                                                    .padding()
                                                    
                                                    
                                                    Button(action: {
                                                        
                                                        // Optionally, you can regenerate the code when the button is tapped
                                                        gameCode = GameCodeGenerator.generateGameCode()
                                                    }//button
                                                    ) {
                                                        NavigationLink(destination: ContentView()
                                                            .navigationBarBackButtonHidden(true)) {
                                                                Text("Start")
                                                                    .font(.title3)
                                                                    .fontWeight(.bold)
                                                                    .foregroundColor(.white)
                                                                    .padding()
                                                            }//Navigationlink
                                                    }//text
                                                    .background(Color.blue)
                                                    .cornerRadius(10)
                                                    .padding()
                            
                        }//Hstack
                        .position(x:200 , y:30 )
                    }//Vstack
                    
                    
                    
                }//Zstack
                
                
            }//Vstack
            
            
            
            
            
            
        }//Zstack
        
        
        
        
        
        
        
        
        
    }//var body: some View
}//struct GameCodePage: View

        
        
        
        
        
        
        
        struct GameCodePage_Previews: PreviewProvider {
            static var previews: some View {
                GameCodePage()
            }
        }
