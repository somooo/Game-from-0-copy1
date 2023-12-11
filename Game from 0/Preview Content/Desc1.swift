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
            
           Image("HowToPlay")
            
            .ignoresSafeArea()
            
            Color(.black)
                .blur(radius: 140)
                .opacity(0.3)
                .ignoresSafeArea()
           
                VStack(alignment: .trailing) {
                    
                    Text(" وش السالفة؟  🤔")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.trailing)
                        .padding(.trailing, 50)
                        .padding(.top, 80.0)
                       // .position(y:100)
                    Text("كمشرف:")
                        .font(.title3)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.trailing)
                     //   .padding([.top,  .trailing], 50.0)
                     //   .padding(.bottom , -10)
                    Text("1-ابدا تحدي جديد")
                        .font(.title3)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.trailing)
                    Text("2-قم بتحديد مواقع العملات:")
                        .font(.title3)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.trailing)
                      //  .padding([.top, .leading, .trailing], 50.0)
                       // .padding(.bottom , -10)
                    Text("انقر على العملة في الشاشة لاخفاء \nالعملات في البيئة")
                        .font(.title3)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.trailing)
                       // .padding([.top,  .trailing], 10.0)
                       // .padding(.bottom , 20)
                    Text("3-شارك الرمز مع اصدقائك:")
                        .font(.title3)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.trailing)
                      //  .padding([.top,  .trailing], 20.0)
                     //   .padding(.bottom , -10)
                    Text("بعد م تنتهي من اخفاء العملات شارك رمز \nاللعبة مع اصدقائك")
                        .font(.title3)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.trailing)
                      //  .padding([.top,  .trailing], 25.0)
                       // .padding(.bottom , -10)
                    Text("4-مراقبة اللاعبين:")
                    
                        .font(.title3)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.trailing)
                     //   .padding([.top,  .trailing], 50.0)
                     //   .padding(.bottom , -10)
                    Text("تستطيع مراقبة جهود اللاعبين في البحث عن العملات")
                    
                        .font(.title3)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.trailing)
                       // .padding([.top,  .trailing], 50.0)
                       // .padding(.bottom , -10)
                    Spacer()
                }
                .position(x:190 ,y:500)
            
            Text("لف وشوف تعليمات اللاعبين")
            
                .font(.title3)
                .foregroundColor(Color.white)
                .multilineTextAlignment(.trailing)
                .padding([.top,  .trailing], 50.0)
                .padding(.bottom , -10)
                .position(x:220 ,y:600)
        }
        
    
        
    }
    
}
    
#Preview {
    Desc1()
}
