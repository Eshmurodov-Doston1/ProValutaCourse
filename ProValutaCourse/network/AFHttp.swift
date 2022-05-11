
import Foundation
import Alamofire


private let IS_TESTER = false
private let DEP_SER = "https://nbu.uz/"
private let DEV_SER = "https://nbu.uz/"

let headers:HTTPHeaders = [
    "Content-Type":"application/json"
]

class AFHttp {
    
    class func get(url:String,params:Parameters,holder:@escaping (AFDataResponse<Any>) -> Void) {
        AF.request(server(url: url),method: .get,parameters: params,headers: headers)
            .validate()
            .responseJSON(completionHandler: holder)
    }
    
    class func post(url:String,params:Parameters,holder:@escaping (AFDataResponse<Any>) -> Void) {
        AF.request(server(url: url),method: .post,parameters: params,headers: headers)
            .validate()
            .responseJSON(completionHandler: holder)
    }
    
    
    class func delete(url:String,params:Parameters,holder:@escaping (AFDataResponse<Any>) -> Void) {
        AF.request(server(url: url),method: .delete,parameters: params,headers: headers)
            .validate()
            .responseJSON(completionHandler: holder)
    }
    
    class func put(url:String,params:Parameters,holder:@escaping (AFDataResponse<Any>) -> Void) {
        AF.request(server(url: url),method: .put,parameters: params,headers: headers)
            .validate()
            .responseJSON(completionHandler: holder)
    }
    
    // MARK: - AFHttp Server
    class func server(url:String) -> URL{
        if IS_TESTER {
            return URL(string: DEP_SER + url)!
        }
        return URL(string: DEV_SER + url)!
    }
}
