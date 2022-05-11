//
//  InfoScreen.swift
//  ProValutaCourse
//
//  Created by macbro on 10/05/22.
//

import SwiftUI

struct InfoScreen: View {
    var body: some View {
        NavigationView {
            Text("Info Screen")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationBarTitle("Info Screen")
        }
    }
}

struct InfoScreen_Previews: PreviewProvider {
    static var previews: some View {
        InfoScreen()
    }
}
