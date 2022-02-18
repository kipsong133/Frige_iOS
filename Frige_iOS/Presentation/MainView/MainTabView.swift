//
//  MainTabView.swift
//  Frige_iOS
//
//  Created by 김우성 on 2022/02/12.
//

import SwiftUI

struct MainTabView: View {
    private enum Tabs {
      case frige, recipe, community, favorite, myProfile
    }
    
    @State private var selectedTab: Tabs = .frige
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Group {
                frige
                    .tag(Tabs.frige)
                    .border(width: 1, edges: [.bottom], color: .darkGray)
                recipe
                    .tag(Tabs.recipe)
                    .border(width: 1, edges: [.bottom], color: .darkGray)
                myProfile
                    .tag(Tabs.myProfile)
                    .border(width: 1, edges: [.bottom], color: .darkGray)
            }
        }
        .accentColor(.darkGray)
        
        .edgesIgnoringSafeArea(.top)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}

extension MainTabView {
    var frige: some View {
        FrigeView()
            .tag(Tabs.frige)
            .tabItem(
                image: selectedTab == .frige ? "SelectedFrige" : "UnSelectedFrige",
                text: "냉장고")
            .onTapGesture {
                selectedTab = .frige
            }
        //        .onAppear { UITableView.appearance().separatorStyle = .none }
    }
    
    var recipe: some View {
      Text("레시피")
        .tag(Tabs.recipe)
        .tabItem(
            image: selectedTab == .recipe ? "SelectedRecipe" : "UnSelectedRecipe",
            text: "레시피")
        .onTapGesture {
            selectedTab = .recipe
        }
    }
    
    var myProfile: some View {
      Text("내정보")
        .tag(Tabs.recipe)
        .tabItem(
            image: selectedTab == .myProfile ? "SelectedProfile" : "UnSelectedProfile",
            text: "내정보")
        .onTapGesture {
            selectedTab = .myProfile
        }
    }
}

fileprivate extension View {
  func tabItem(image: String, text: String) -> some View {
    self.tabItem {
      Image(image)
        .font(Font.system(size: 17, weight: .light))
      Text(text)
    }
  }
}

struct EdgeBorder: Shape {

    var width: CGFloat
    var edges: [Edge]

    func path(in rect: CGRect) -> Path {
        var path = Path()
        for edge in edges {
            var x: CGFloat {
                switch edge {
                case .top, .bottom, .leading: return rect.minX
                case .trailing: return rect.maxX - width
                }
            }

            var y: CGFloat {
                switch edge {
                case .top, .leading, .trailing: return rect.minY
                case .bottom: return rect.maxY - width
                }
            }

            var w: CGFloat {
                switch edge {
                case .top, .bottom: return rect.width
                case .leading, .trailing: return self.width
                }
            }

            var h: CGFloat {
                switch edge {
                case .top, .bottom: return self.width
                case .leading, .trailing: return rect.height
                }
            }
            path.addPath(Path(CGRect(x: x, y: y, width: w, height: h)))
        }
        return path
    }
}
extension View {
    func border(width: CGFloat, edges: [Edge], color: Color) -> some View {
        overlay(EdgeBorder(width: width, edges: edges).foregroundColor(color))
    }
}
