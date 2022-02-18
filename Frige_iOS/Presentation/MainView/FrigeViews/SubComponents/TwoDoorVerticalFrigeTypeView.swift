//
//  TwoDoorVerticalFrigeTypeView.swift
//  Frige_iOS
//
//  Created by 김우성 on 2022/02/18.
//

import SwiftUI

struct TwoDoorVerticalFrigeTypeView: View {
    let height = CGFloat(500)
    let width = CGFloat(274)
    
    var sideWidth: CGFloat {
        return width
    }
    
    var sideHeight: CGFloat {
        return height / 2
    }
    
    var body: some View {
        ZStack {
            Color.mangoTwo
            VStack(spacing: 1.5) {
                
                ZStack {
                    Color.white
                        .frame(
                            width: (sideWidth) - 2,
                            height: sideHeight - 2)
                        .cornerRadius(
                            radius: 8,
                            corners: [.topLeft, .topRight])
                }
                
                ZStack {
                    Color.white
                        .frame(
                            width: (sideWidth) - 2,
                            height: sideHeight - 2)
                        .cornerRadius(
                            radius: 8,
                            corners: [.bottomLeft, .bottomRight])
                }
                    
            }
        }
        .frame(width: width, height: height)
        .cornerRadius(8)
    }
}

struct TwoDoorVerticalFrigeTypeView_Previews: PreviewProvider {
    static var previews: some View {
        TwoDoorVerticalFrigeTypeView()
    }
}
