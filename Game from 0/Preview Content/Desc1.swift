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

struct Desc1: View {
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
                Text("As Admin:")
                    .font(.title2)
                    .bold()
                    .foregroundColor(Color.white)
                //.multilineTextAlignment(.leading)
                  //  .padding(.top, -200.0)
                //   .padding(.bottom , -10)
                    .position(x:100,y:-170)
            }
            
            VStack(alignment: .trailing){
                Text("1-Start new game.")
                    .font(.title3)
                    .bold()
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.leading)
                    .position(x:220,y:620)
                Text("2-Hide the Coins:")
                    .font(.title3)
                    .bold()
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.leading)
                //  .padding([.top, .leading, .trailing], 50.0)
                // .padding(.bottom , -10)
                    .position(x:220,y:400)
                Text("Click the Coin button on the screen to\n hidethe Coins in the AR environment.")
                    .font(.caption)
                    .bold()
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.leading)
                    .position(x:265,y:180)
                // .padding([.top,  .trailing], 10.0)
                // .padding(.bottom , 20)
                Text("3-Share code with friends.")
                    .font(.title3)
                    .bold()
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.leading)
                //  .padding([.top,  .trailing], 20.0)
                //   .padding(.bottom , -10)
                    .position(x:260,y:-35)
                Text("4-Watch the players:")
                    .bold()
                    .font(.title3)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.leading)
                    .position(x:235,y:-260)
                //   .padding([.top,  .trailing], 50.0)
                //   .padding(.bottom , -10)
                Text("You can see wht players are doing \n and thier efforts in searching Coins")
                    .font(.caption)
                    .bold()
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.leading)
                    .position(x:265,y:-480)
                // .padding([.top,  .trailing], 50.0)
                // .padding(.bottom , -10)
                //  Spacer()
            }
            
            //  .position(x:100, y:50)
            
            Text("Swipe see players' instructions")
            
                .font(.caption)
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
            //   .padding([.top,  .trailing], 50.0)
            // .padding(.bottom , -10)
              .position(x:250 ,y:850)
            
            
        }
        
    }
    
}
    
#Preview {
    Desc1()
}
