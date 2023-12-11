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
                    Text("كلاعب:")
                        .font(.title3)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.trailing)
                     //   .padding([.top,  .trailing], 50.0)
                     //   .padding(.bottom , -10)
                    Text("1-انضم للتحدي")
                        .font(.title3)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.trailing)
                    Text("قم بادخال اسمك ورمز اللعبه الذي تلقيته من المشرف ")
                        .font(.title3)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.trailing)
                      //  .padding([.top, .leading, .trailing], 50.0)
                       // .padding(.bottom , -10)
                    Text("2-ابدأ في البحث عن العملات:")
                        .font(.title3)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.trailing)
                       // .padding([.top,  .trailing], 10.0)
                       // .padding(.bottom , 20)
                    Text("قم بتحريك الهاتف للبحث عن العملات")
                        .font(.title3)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.trailing)
                      //  .padding([.top,  .trailing], 20.0)
                     //   .padding(.bottom , -10)
                    Text("3-اجمع العملات")
                        .font(.title3)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.trailing)
                      //  .padding([.top,  .trailing], 25.0)
                       // .padding(.bottom , -10)
                    Text("انقر على العملات لتكسب النقاط")
                    
                        .font(.title3)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.trailing)
                     //   .padding([.top,  .trailing], 50.0)
                     //   .padding(.bottom , -10)
                    Text("4-الفوز")
                    
                        .font(.title3)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.trailing)
                       // .padding([.top,  .trailing], 50.0)
                       // .padding(.bottom , -10)
                    Text("اللاعب الذي يجمع اكبر عدد من العملات\n هو الفائز")
                        .font(.title3)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.trailing)
                       // .padding([.top,  .trailing], 50.0)
                       // .padding(.bottom , -10)
                    Spacer()
                }
                .position(x:190 ,y:500)
        
        }
        
        
        
    }
    
}
    
#Preview {
    Desc2()
}
