//
//  RotationView1.swift
//  MC2
//
//  Created by YU WONGEUN on 2023/05/02.
//

import SwiftUI

struct RotationView1: View {
    @State private var revolving = false

    var body: some View {
        GeometryReader { geo in
            VStack(alignment: .center) {
                
                Text("움직이는 \n두 개의 원처럼 \n두 손가락으로 \n화면을 돌려봐요 !")
                    .font(.system(size: geo.size.width / 11).weight(.bold))
                    .multilineTextAlignment(.center)
                    .padding(.bottom, geo.size.height / 3)
                
             
                
                VStack (spacing: 50){
                    ZStack {
                        ZStack {
                            Image("TapCircle")
                                .resizable()
                                .frame(width: geo.size.width / 5, height: geo.size.width / 5)
                                .rotationEffect(.degrees(revolving ? -360 : 360))
                                .offset(x: 60, y: -80)
                            
                            Image("TapCircle")
                                .resizable()
                                .frame(width: geo.size.width / 5, height: geo.size.width / 5)
                                .rotationEffect(.degrees(revolving ? -360 : 360))
                                .offset(x: -60, y: 80)
                        }
                        .rotationEffect(.degrees(revolving ? -360 : 360))
                        .animation(.easeInOut(duration: 5).repeatForever(autoreverses: false), value: revolving)
                        .onAppear {
                            revolving.toggle()
                        }
                    }
                }
                
                
            }
            .frame(width: geo.size.width, height: geo.size.height)
        }
    }
}

struct RotationView1_Previews: PreviewProvider {
    static var previews: some View {
        RotationView1()
    }
}
