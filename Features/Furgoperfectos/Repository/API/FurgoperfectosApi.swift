//
//  FurgoperfectosApi.swift
//  Application
//
//  Created by Josep Escobar on 07/06/2019.
//

import Foundation
import KituraNet

class FurgoperfectosApi {
    
    static func fetchData() {

        // create the request
        var options: [ClientRequest.Options] = [
            .schema(""),
            .method("GET"),
            .hostname("https://www.furgovw.org/api.php?getEverything=")
        ]
        // add headers
        var headers = [String:String]()
        headers["Accept"] = "application/json"
        headers["Content-Type"] = "application/json"
        options.append(.headers(headers))
        
        // do call
        let request = HTTP.request(options) { response in
            do {
                //convert ClientResponse to JSON
                if let responseStr = try response?.readString() {
                    
                    print("API Response: \(String(describing: responseStr))")
                    //result = responseStr //result now has final JSON we want
                }
                else {
                    // error handling here
                    
                }
            } catch {
                // error handling here
                print("Error \(error)")
            }
        }
        
        request.end()
        
        //send result back
        
    }

}
