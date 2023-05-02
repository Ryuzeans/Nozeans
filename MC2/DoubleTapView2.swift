//
//  DoubleTapView2.swift
//  MC2
//
//  Created by YU WONGEUN on 2023/05/02.
//

import SwiftUI

struct DoubleTapView2: View {
    
    var body: some View {
        GeometryReader { geo in
            VStack(alignment: .center) {
                Text("가볍게 \n눌러볼까요?")
                    .font(.system(size: geo.size.width / 11).weight(.bold))
                    .multilineTextAlignment(.center)
            }
        }
    }
}

struct DoubleTapView2_Previews: PreviewProvider {
    static var previews: some View {
        DoubleTapView2()
    }
}
