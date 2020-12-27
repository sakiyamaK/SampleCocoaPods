//
//  ViewController.swift
//  SampleCocoaPods
//
//  Created by sakiyamaK on 2020/02/23.
//  Copyright © 2020 sakiyamaK. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
  
  let protocolStr = "https"
  let domain = "connpass.com"
  let apiVersion = "v1"
  let endpoint = "event"
  var parameters: [String:String] = [:]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    parameters = [
      "keyword_or": "東京"]
    
    let urlStr = protocolStr + "://" + domain + "/api/" + apiVersion + "/" + endpoint
    debugPrint(urlStr)
    AF.request(urlStr, method: .get, parameters: parameters).response { (response) in
      guard
        let _data = response.data, let jsonStr = String(data: _data, encoding: .utf8) else {
        return
      }
      debugPrint(jsonStr)
    }
  }
}

