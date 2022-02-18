
//  ThreeDoorHorizontalFrigeTypeView.swift
//  Frige_iOS
//
//  Created by 김우성 on 2022/02/18.
//

import SwiftUI

struct FourDoorUnBalanceFrigeTypeView: View {
    let height = CGFloat(500)
    let width = CGFloat(274)
    let cornerRadiusValue = CGFloat(8)
    
    var sideWidth: CGFloat {
        return width
    }
    
    var largeHeight: CGFloat {
        return (height / 6) * (3.1)
    }
    
    var sideHeight: CGFloat {
        return (height / 6) * (2.9/2)
    }
    
    var body: some View {
        ZStack {
            Color.mangoTwo
            VStack(spacing: 1.5) {
                
                HStack(spacing:1) {
                    ZStack {
                        Color.white
                            .frame(
                                width: (sideWidth / 2) - 2,
                                height: largeHeight - 2)
                            .cornerRadius(
                                radius: cornerRadiusValue,
                                corners: [.topLeft])
                    }
                    ZStack {
                        Color.white
                            .frame(
                                width: (sideWidth / 2) - 2,
                                height: largeHeight - 2)
                            .cornerRadius(
                                radius: cornerRadiusValue,
                                corners: [.topRight])
                    }
                }
                
                ZStack {
                    Color.white
                        .frame(
                            width: (sideWidth) - 2,
                            height: sideHeight - 2)
                }
                
                ZStack {
                    Color.white
                        .frame(
                            width: (sideWidth) - 2,
                            height: sideHeight - 2)
                        .cornerRadius(
                            radius: cornerRadiusValue,
                            corners: [.bottomLeft, .bottomRight])
                }
                    
            }
        }
        .frame(width: width, height: height)
        .cornerRadius(8)
    }
}

struct FourDoorUnBalanceFrigeTypeView_Previews: PreviewProvider {
    static var previews: some View {
        FourDoorUnBalanceFrigeTypeView()
    }
}
