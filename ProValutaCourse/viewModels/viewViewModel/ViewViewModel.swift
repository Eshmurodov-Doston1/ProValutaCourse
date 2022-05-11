
import Foundation

class ViewViewModel:ObservableObject {
    
    @Published var lang:String = Bundle.getLanguage()
    
    
   
    
    
    func setLanguage(lang:String) {
        Bundle.setLanguage(lang: lang)
    }
    
    
}
