//
//  MainPageScreen.swift
//  ProValutaCourse
//
//  Created by macbro on 09/05/22.
//

import SwiftUI

struct MainPageScreen: View {
    
    @ObservedObject var valutaViewModel:ValutaViewModel = ValutaViewModel()

    var body: some View {
        NavigationView{
            
            ZStack {
                List(self.valutaViewModel.listValutaApp, id: \.cb_price) { valuta in
                    ItemValuta(valutaCourse: valuta)
                        .padding(.bottom,8)
                }
                .listStyle(PlainListStyle())
                
                .navigationBarTitle("NBU Valuta Kurslari",displayMode:.inline)
                .onAppear{
                    UITableView.appearance().separatorColor = .clear
                }
                if self.valutaViewModel.isloading {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle(tint: .blue.opacity(0.5)))
                        .scaleEffect(1.5)
                }
            }
            
        }
        .onAppear{
            valutaViewModel.getValutaCourse()
        }
    }
}

struct MainPageScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainPageScreen()
    }
}
