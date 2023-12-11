
//
//  Desc1.swift
//  Game from 0
//
//  Created by Muna Aiman Al-hajj on 27/05/1445 AH.
//
//
//  amal.swift
//  mini2
//
//  Created by Amal Abughazaleh on 13/05/1445 AH.
//


import SwiftUI

struct Desc2: View {
    var body: some View {
        
        ZStack{
            Image("Design")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .ignoresSafeArea()
            Image("HowToPlay")
                .ignoresSafeArea()
                .position(x: 200,y:700)
            
            Image("NajdHowPlay")
                .position(x:100 , y:900)
            
            Color(.black)
                .blur(radius: 140)
                .opacity(0.3)
                .ignoresSafeArea()
            
            VStack(alignment: .center) {
                
                Text("how do play?  🤔")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                //.padding(.trailing, 50)
                 //   .padding([.top, -220.0],)
                 .position(x:150,y:550)
                Text("As Players:")
                    .font(.title2)
                    .bold()
                    .foregroundColor(Color.white)
                //.multilineTextAlignment(.leading)
                  //  .padding(.top, -200.0)
                //   .padding(.bottom , -10)
                    .position(x:100,y:-170)
            }
            
            VStack(alignment: .trailing){
                Text("1-Join to Game:")
                    .font(.title3)
                    .bold()
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.leading)
                    .position(x:200,y:620)
                Text("Enter your name and game code\n you received from Admin.")
                    .font(.caption)
                    .bold()
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.leading)
                    .position(x:250,y:435)
                // .padding([.top,  .trailing], 10.0)
                // .padding(.bottom , 20)
                Text("2-Start searching for Coins:")
                    .font(.title3)
                    .bold()
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.leading)
                //  .padding([.top, .leading, .trailing], 50.0)
                // .padding(.bottom , -10)
                    .position(x:255,y:260)
                Text("3-Collect Coins")
                    .font(.title3)
                    .bold()
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.leading)
                //  .padding([.top,  .trailing], 20.0)
                //   .padding(.bottom , -10)
                    .position(x:200,y:80)
                Text("Click on the Coins you find to\n collectthem and earn points")
                    .font(.caption)
                    .bold()
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.leading)
                    .position(x:265,y:-100)
                // .padding([.top,  .trailing], 50.0)
                // .padding(.bottom , -10)
                //  Spacer()
                Text("4-The Win:")
                    .bold()
                    .font(.title3)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.leading)
                    .position(x:190,y:-280)
                //   .padding([.top,  .trailing], 50.0)
                //   .padding(.bottom , -10)
                Text("Winner is the one who collects \nthe number of Coins")
                    .font(.caption)
                    .bold()
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.leading)
                    .position(x:265,y:-465)
                // .padding([.top,  .trailing], 50.0)
                // .padding(.bottom , -10)
                //  Spacer()
            }
            
            //  .position(x:100, y:50)
            
        }
        
    }
    
}
    
#Preview {
    Desc2()
}
