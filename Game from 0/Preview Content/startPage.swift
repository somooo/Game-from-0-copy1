//
//  startPage.swift
//  Game from 0
//
//  Created by bsamh on 04/12/2023.
//

import Foundation
//
//  startPage.swift
//  Game from 0
//
//  Created by Muna Aiman Al-hajj on 20/05/1445 AH.
//

import SwiftUI

struct startPage: View {
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    Image("najdStartGame")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                        .ignoresSafeArea()

                    VStack(spacing: 14) {
                        Image("in1")
                            .resizable()
                            .frame(width: 330, height: 330)
                            .padding()
                        
                        VStack {
                            HStack {
                                VStack(spacing: 50) {
                                    NavigationLink(destination: ContentView()
                                        .navigationBarBackButtonHidden(true)) {
                                            Text("New Game")
                                                .fontWeight(.bold)
                                                .font(.title)
                                                .foregroundColor(Color(red: 0.317, green: 0.22, blue: 0.643))
                                        }
                                }
                            }
                            .padding()
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.white)
                            .background(Color.white.gradient).opacity(0.9)
                            .cornerRadius(15)
                            .padding()
                            
                            HStack(spacing: 20) {
                                VStack(spacing: 20) {
                                    NavigationLink(destination: JoinGameView(gameViewModel: GameViewModel())
                                        .navigationBarBackButtonHidden(true)
                                    ) {
                                        Text("Join to Game")
                                            .fontWeight(.bold)
                                            .font(.title)
                                            .foregroundColor(Color(red: 0.317, green: 0.22, blue: 0.643))
                                    }
                                }
                            }
                            .padding()
                            .frame(maxWidth:.infinity)
                            .foregroundColor(.white)
                            .background(Color.white.gradient).opacity(0.9)
                            .cornerRadius(15)
                            .padding()
                        }
                    }
                    NavigationLink(destination:HowToPlay(sheetShowing: .constant(true))){
                        Text("How i play it?..")
                    }
                            .font(.caption)
                            .foregroundColor(.black)
                            .position(x:180, y:690)
                    }
                }
            }
        }
    }


#Preview {
    startPage()
}


