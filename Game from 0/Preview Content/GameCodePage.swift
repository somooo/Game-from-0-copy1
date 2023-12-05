//
//  GameCodePage.swift
//  Game from 0
//
//  Created by bsamh on 04/12/2023.
//

import Foundation
//
//  GameCodePage.swift
//  Game from 0
//
//  Created by Muna Aiman Al-hajj on 20/05/1445 AH.
//

import SwiftUI

struct GameCodePage: View {
    @State private var gameCode: String = GameCodeGenerator.generateGameCode()

    var body: some View {
        NavigationView{
        ZStack {
    
            VStack{
                // Text
                Text("Hide the Coins!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .padding()
                
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
                }
                .padding(50)
                ZStack{
                    Image("codeGlass")
                        .resizable()
                    // .edgesIgnoringSafeArea(.all)
                        .blur(radius: 8)
                        .frame(width: 350,height: 400)
                    VStack{
                        Text("Game Code !")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                            .padding()
                        
                        // Code
                        Text(gameCode)
                                                .font(.title)
                                                .foregroundColor(.gray)
                                                .padding()

                                            // Copy and start button
                                            Button(action: {
                                                // Copy the code to the clipboard
                                                // Optionally, you can regenerate the code when the button is tapped
                                                gameCode = GameCodeGenerator.generateGameCode()
                                            }) {
                                                NavigationLink(destination: ContentView()) {
                                                    Text("Copy and start")
                                                        .font(.title3)
                                                        .fontWeight(.bold)
                                                        .foregroundColor(.white)
                                                        .padding()
                                                }
                                            }
                                            .background(Color.blue)
                                            .cornerRadius(10)
                                            .padding()
                                        }

                    
                    }
                
                    }
            
                }
            
            }
        
        
        }
    }

#Preview {
    GameCodePage()
}

