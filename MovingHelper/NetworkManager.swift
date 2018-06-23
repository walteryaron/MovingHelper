//
//  NetworkManager.swift
//  MovingHelper
//
//  Created by Walter Yaron on 23/06/2018.
//  Copyright © 2018 Razeware. All rights reserved.
//

import Foundation
import Alamofire

func fetchAllRooms() {
    guard let url = URL(string: "http://localhost:5984/rooms/_all_docs?include_docs=true") else {
        return
    }
    Alamofire.request(url,
                      method: .get,
                      parameters: ["include_docs": "true"])
        .validate()
        .responseJSON { response in
            guard response.result.isSuccess else {
                print("Error while fetching remote rooms: \(String(describing:response.result.error))")
                return
            }

            guard let value = response.result.value as? [String: Any],
                let _ = value["rows"] as? [[String: Any]] else {
                    print("Malformed data received from fetchAllRooms service")
                    return
            }
    }
}
