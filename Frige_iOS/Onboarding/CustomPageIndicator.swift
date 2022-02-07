//
//  CustomPageIndicator.swift
//  Frige_iOS
//
//  Created by 김우성 on 2022/02/07.
//

import SwiftUI

struct CustomPageIndicator: View {
    
    @Binding var pageIndex: Int
        
    var remainPageIndex: Int {
        return 4 - pageIndex
    }
    
    var body: some View {
        HStack(spacing: 0) {
     
            ForEach(0 ..< pageIndex ) { _ in
                Image(systemName: "circle.fill")
                    .resizable()
                    .frame(width: 8 ,height: 8)
                    .fixedSize()
                Spacer()
                    .frame(width: 7)
            }
            
            ForEach(0 ..< remainPageIndex ) { index in
                Image(systemName: "circle.fill")
                    .resizable()
                    .frame(width: 8 ,height: 8)
                    .fixedSize()
                    .foregroundColor(Color(red: 230/255, green: 230/255, blue: 230/255))
                if index != remainPageIndex - 1 {
                    Spacer()
                        .frame(width: 7)
                }
            }
        }
    }
}

struct CustomPageIndicator_Previews: PreviewProvider {
    static var previews: some View {
        CustomPageIndicator(pageIndex: .constant(1))
            .previewLayout(.sizeThatFits)
    }
}
