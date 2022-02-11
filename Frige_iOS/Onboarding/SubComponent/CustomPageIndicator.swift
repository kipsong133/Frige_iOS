//
//  CustomPageIndicator.swift
//  Frige_iOS
//
//  Created by 김우성 on 2022/02/07.
//

import SwiftUI

struct CustomPageIndicator: View {
    
    @Binding var pageIndex: Int
    var maxCount: Int
    
    var body: some View {
        HStack(spacing: 7) {
            
            ForEach(0 ..< maxCount) { index in
                dotImage
                    .foregroundColor(index <= pageIndex ? .black : .gray)
            }
//            dotImage
//                .foregroundColor(pageIndex >= 0 ? .black : .gray)
//            dotImage
//                .foregroundColor(pageIndex >= 1 ? .black : .gray)
//            dotImage
//                .foregroundColor(pageIndex >= 2 ? .black : .gray)
//            dotImage
//                .foregroundColor(pageIndex >= 3 ? .black : .gray)
        }
    }
}

struct CustomPageIndicator_Previews: PreviewProvider {
    static var previews: some View {
        CustomPageIndicator(pageIndex: .constant(1), maxCount: 1)
            .previewLayout(.sizeThatFits)
    }
}


extension CustomPageIndicator {
    var dotImage: some View {
        Image(systemName: "circle.fill")
            .resizable()
            .frame(width: 8 ,height: 8)
            .fixedSize()
    }
}
