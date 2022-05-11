
import Foundation

class Default:ObservableObject{
    
    @Published  var language:String? {
        didSet {
            UserDefaults.standard.set(language, forKey: "app_lan")
        }
    }
    
    init() {
        self.language = UserDefaults.standard.string(forKey: "app_lan")
    }
    
    
    
    
    
    
}
