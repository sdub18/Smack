//
//  MessageService.swift
//  Smack
//
//  Created by Sam DuBois on 2/5/18.
//  Copyright © 2018 Sam DuBois. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class MessageService {
    
    static let instance = MessageService()
    
    var channels = [Channel]()
    
    func findAllChannels(completion: @escaping CompletionHandler) {
        Alamofire.request(URL_GET_CHANNELS, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: BEARER_HEADER).responseJSON { (response) in
            if response.result.error == nil {
                guard let data = response.data else { return }
                
                //New Swift 4 way of doing things (NEED TO HAVE NAMING CONVENTIONS THE SAME WAY) LECTURE 81 IOS 11
                do {
                    self.channels = try JSONDecoder().decode([Channel].self, from: data)
                } catch let error{
                    debugPrint(error as Any)
                }
                print(self.channels)
                
                //The ussual way we go about doing things
                
//                if let json = JSON(data: data).array {
//                for item in json {
//                    let name = item["name"].stringValue
//                    let channelDescription = item["description"].stringValue
//                    let id = item["_id"].stringValue
//                    let channel = Channel(channelTitle: name, ChannelDescription: channelDescription, id: id)
//                    self.channels.append(channel)
//                }
//                completion(true)
//                }
            } else {
                completion(false)
                debugPrint(response.result.error as Any)
            }
        }
    }
}



