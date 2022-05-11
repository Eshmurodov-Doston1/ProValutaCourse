import SwiftUI

struct SlideMenu: View {
    
    @Binding var seletedTab:String
    
    @Namespace var animation
    
    @ObservedObject var viewViewModel = ViewViewModel()
    
    @State var mainText = "main_text".localized()
    @State var soundText = "sound_text".localized()
    @State var updateText = "update_text".localized()
    @State var languageText = "language_text".localized()
    @State var infoText = "info_text".localized()
    
    
    var body: some View {
            VStack(alignment: .leading, spacing: 10, content: {
                // image app
                Image("image_app")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 70, height: 70)
                    .padding(.top)
                VStack(alignment: .leading, spacing: 8, content: {
                    Text("app_name".localized())
                        .font(.system(size: 15))
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                })
                VStack(alignment: .leading, spacing: 10, content: {
                    TabItem(image: "home", title: self.mainText, selectedTab: self.$seletedTab, animation: animation)
                    TabItem(image: "sound", title: soundText, selectedTab: self.$seletedTab, animation: animation)
                    TabItem(image: "notification", title: updateText, selectedTab: self.$seletedTab, animation: animation)
                    TabItem(image: "language", title: languageText, selectedTab: self.$seletedTab, animation: animation)
                    TabItem(image: "info", title: infoText, selectedTab: self.$seletedTab, animation: animation)
                    })
                    .padding(.leading,-15)
                    .padding(.top,30)
                
              
                Spacer()
                    
            })
            .padding(.top,20)
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        
        
       
    }
}

struct SlideMenu_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
