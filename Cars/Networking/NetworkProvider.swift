//
//  NetworkProvider.swift
//  Cars
//
//  Created by Jose Mena on 7/4/21.
//

import Foundation

//// 1
//NSString *dataUrl = @"YOUR_DATA_URL";
//NSURL *url = [NSURL URLWithString:dataUrl];
//
//// 2
//NSURLSessionDataTask *downloadTask = [[NSURLSession sharedSession]
//  dataTaskWithURL:url completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
//  // 4: Handle response here
//}];
//
//// 3
//[downloadTask resume];


protocol NetworkProvider {
    func sendRequest(urlString: String, completion: (Data) -> ())
}


class DefaultNetworkProvider: NetworkProvider {
    func sendRequest(urlString: String, completion: (Data) -> ()) {
        
        guard let url = URL(string: urlString) else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard error != nil else {
                // hay error
                print("hubo error valiste gaver")
               return
            }
            
            guard let httpResponse = response as? HTTPURLResponse else {
                print("no era http response")
                return
            }
            
            guard httpResponse.statusCode >= 200 && httpResponse.statusCode < 300 else {
                print("status code: \(httpResponse.statusCode)")
                return
            }
            
            //success
            guard let data = data else {
                // Empty Data
                print("data is empty")
                return
            }
            
            let stringData = String(data: data, encoding: .utf8)
            print(stringData ?? "invalid data cannot convert")
        }
        
        task.resume()
    }
}

class MockNetworkProvider: NetworkProvider {
    func sendRequest(urlString: String, completion: (Data) -> ()) {
        completion(Data())
    }
}
