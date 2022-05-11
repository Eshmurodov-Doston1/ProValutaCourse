//
//  TabItem.swift
//  ProValutaCourse
//
//  Created by macbro on 09/05/22.
//

import SwiftUI

struct TabItem: View {
    var image:String = "sound"
    var title:String = "Salom"
    
    // selected Tab..
    @Binding var selectedTab:String
    
    // For hero animation Slide...
    var animation:Namespace.ID
    
    var body: some View {
        Button(action: {
            withAnimation(.spring()){
                selectedTab = title
                
            }
        }, label: {
            HStack(spacing:10){
                Image(image)
                    .font(.title2)
                    .frame(height:25)
                Text(title)
                    .font(.system(size:15))
                    .fontWeight(.semibold)
            }
        })
        .foregroundColor(selectedTab == title ? .white : .white)
        .padding(.vertical,12)
        .padding(.horizontal,15)
        // Max Frame...
        .frame(maxWidth: getRect().width - 160 , alignment: .leading)
        .background(
            ZStack {
                if selectedTab == title {
                    Color.white.opacity(selectedTab == title ? 0.3 : 0)
                        .blur(radius: 2)
                        .clipShape(CustomCorners(corners: [.topRight,.bottomRight], radius: 10))
                        .matchedGeometryEffect(id: "TAB", in: animation)
                }
            }
        )
    }
}

struct TabItem_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
