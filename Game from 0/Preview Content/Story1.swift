//
//  Story 1.swift
//  Game from 0
//
//  Created by bsamh on 04/12/2023.
//

//import Foundation
//
//  Story 1.swift
//  Game from 0
//
//  Created by Muna Aiman Al-hajj on 20/05/1445 AH.
//

import SwiftUI

struct Story1: View {
    var body: some View {
        NavigationView{
        ZStack{
                Image("background")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                
                    .ignoresSafeArea()
            
            VStack{
                Image("grandMa")
                    .position(CGPoint(x: 155, y: 349))
                  //  .imageScale(.large)
                ZStack{
                    Image("storyGlassCard")
                        .position(CGPoint(x: 215, y: 240))
                    
                    Text("I long for the past, my children, when I was a child \nand we used to get together and play our favorite game.. \n One of us gets up and hides something,\n then we play our part as players searching for it\n with all enthusiasm, and whoever finds this thing first\n is the winner I wish the days would return\n and these wonderful games would not disappear")
                        .bold()
                        .position(CGPoint(x: 220, y: 220))
                      //  .font(.body)
                       // .fontWeight(.ultraLight)
                        .font(.caption)
                        .multilineTextAlignment(.center)
                       
                    
                    NavigationLink(destination:Story2()       .navigationBarBackButtonHidden(true)) 
                    {
                        
                        Image("arrow")
                            .resizable()
                            .frame(width: 20, height: 30)
                            .position(CGPoint(x: 370, y: 320))
                        
                    }//navigationlink
                    
                }
            }
            
            
          //  .background(Image("storyBackground"))
           // .padding(.bottom)
        }
    }
    }
}

#Preview {
    Story1()
}

