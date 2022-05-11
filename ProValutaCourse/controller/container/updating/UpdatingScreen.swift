//
//  UpdatingScreen.swift
//  ProValutaCourse
//
//  Created by macbro on 09/05/22.
//

import SwiftUI

struct UpdatingScreen: View {
    var body: some View {
        NavigationView {
            Text("Updating Screen")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationBarTitle("Updating Screen")
        }
    }
}

struct UpdatingScreen_Previews: PreviewProvider {
    static var previews: some View {
        UpdatingScreen()
    }
}
