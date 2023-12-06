//
//  Story2.swift
//  Game from 0
//
//  Created by bsamh on 04/12/2023.
//

//import Foundation
//
//  Story 2.swift
//  Game from 0
//
//  Created by Muna Aiman Al-hajj on 20/05/1445 AH.
//

import SwiftUI

struct Story2: View {
    var body: some View {
        NavigationView{
            ZStack{
                Image("background")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .ignoresSafeArea()
            
            VStack{
                Image("NajdStory")
                    .resizable()
                    .frame(width: 290)
                .position(CGPoint(x: 250, y: 327))
                   
                ZStack{
                    Image("storyGlassCard")
                        .position(CGPoint(x: 215, y: 250))
                    
                    
                    Text("اجل وش رايك ياجدتي نرجع هاللعبة للحياة؟\nونخليها توصل لكل الأجيال بسحرها القديم..\nولعبتك ياجدتي راح تستمر وكلنا نستمتع فيها ! \n\n تعالو نلعبها")
                        .bold()
                        .position(CGPoint(x: 225, y: 240))
                      //  .font(.body)
                       // .fontWeight(.ultraLight)
                        .font(.headline)
                        .multilineTextAlignment(.center)
                       
                    
                    NavigationLink(destination:startPage()       .navigationBarBackButtonHidden(true)) {
                        
                        Image("arrow")
                            .resizable()
                            .frame(width: 20, height: 30)
                            .position(CGPoint(x: 370, y: 320))
                        
                    }//navigationlink
                    
                }//zstack
            }//vstack
            
            
           // .background(Image("storyBackground"))
           // .padding(.bottom)
        }
    }
    }
}

#Preview {
    Story2()
}

