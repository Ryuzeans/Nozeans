//
//  RotationView2.swift
//  MC2
//
//  Created by YU WONGEUN on 2023/05/02.
//

import SwiftUI

struct RotationView2: View {
    
    @State private var currentAmount = Angle.degrees(180)
    @State private var finalAmount = Angle.zero
    @State private var revolving = false
    @State private var showingSuccess = false
    
    var body: some View {
        GeometryReader { geo in
            
            ZStack {
                
                VStack {
                    
                    Text("화면의 먼지의 얼굴을 \n 돌려주세요")
                        .font(.system(size: geo.size.width / 11).weight(.bold))
                        .multilineTextAlignment(.center)
                        .padding(.bottom,geo.size.width / 6)
                    
                    Image("Munji")
                        .resizable()
                        .cornerRadius(45)
                        .frame(width: geo.size.width / 1.2, height: geo.size.width / 1.2)
                        .rotationEffect(currentAmount + finalAmount)
                    
                }
                .frame(width: geo.size.width, height: geo.size.height)
                .gesture(
                    RotationGesture()
                        .onChanged { angle in
                            currentAmount = angle
                        }
                        .onEnded { angle in
                            finalAmount += currentAmount
                            currentAmount = .zero
                            print(Int(finalAmount.degrees))
                        })
                
            }
        }
        
        
    }
}

struct RotationView2_Previews: PreviewProvider {
    static var previews: some View {
        RotationView2()
    }
}
