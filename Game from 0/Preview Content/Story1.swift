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
                    
                    Text("والله انّي حنيت للماضي ياعيالي،\n يوم كنت بعمركم وكنا نجتمع ونلعب لعبتنا المفضله \nويقوم واحد من بيننا ويخبي عننا شي \nثم نبدا كلنا ندور عليه بحماس والفايز هو من يلقاه..\nليت هالايام ترجع وليت هالالعاب الزينه ماتختفي  ")
                        .bold()
                        .position(CGPoint(x: 220, y: 230))
                      //  .font(.body)
                       // .fontWeight(.ultraLight)
                        .font(.headline)
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

