//
//  TransitionExampleView.swift
//  Frige_iOS
//
//  Created by 김우성 on 2022/02/07.
//

import SwiftUI

struct TransitionExampleView: View {
    
    @State private var show = false
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 300, height: 300)
                .foregroundColor(.green)
                .overlay(
                    Text("Show Detail")
                        .font(.system(.largeTitle, design: .rounded))
                        .bold()
                        .foregroundColor(.white)
                )
            
            if show {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 300, height: 300)
                    .foregroundColor(.purple)
                    .overlay(
                        Text("Well here is the detail")
                            .font(.system(.largeTitle, design: .rounded))
                            .bold()
                            .foregroundColor(.white)
                    )
                    .transition(.assymetricCustomTransition)
            }
        }
        .onTapGesture {
            withAnimation(Animation.spring()) {
                self.show.toggle()
            }
        }
    }
}

struct TransitionExampleView_Previews: PreviewProvider {
    static var previews: some View {
        TransitionExampleView()
    }
}

extension AnyTransition {
    static var offsetScaleOpacity: AnyTransition {
        AnyTransition.offset(x: -600, y: 0)
            .combined(with: .scale)
            .combined(with: .opacity)
    }
    
    static var assymetricCustomTransition: AnyTransition {
        AnyTransition.asymmetric(
            insertion: .scale(scale: 0, anchor: .bottom),
            removal: .offset(x: -600, y: 00))
    }
}
