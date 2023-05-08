//
//  PanViewMain.swift
//  MC2
//
//  Created by YU WONGEUN on 2023/05/08.
//

import SwiftUI

struct PanViewMain: View {
    @State private var tag: Int = 0
    var body: some View {
        
        switch tag {
            
        case 0:
            PanView0()
        case 1:
            PanView1()
        case 2:
            PanView2()
        default:
            PanView0()
        }
    }
}

struct PanViewMain_Previews: PreviewProvider {
    static var previews: some View {
        PanViewMain()
    }
}
