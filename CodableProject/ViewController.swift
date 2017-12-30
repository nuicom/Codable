//
//  ViewController.swift
//  CodableProject
//
//  Created by Metas Umsuwan on 30/12/2560 BE.
//  Copyright © 2560 Metas Umsuwan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        //Object to json
//        let photoObject = Photo(title: "Hibiscus", url: URL(string: "www.google.com")!, isSample: false, metaData: ["color":"red"], type: .flower, size: Size(height: 200, width: 200))
//        let encodeData = try? JSONEncoder().encode(photoObject)
//        let jsonString = String(data: encodeData!, encoding: .utf8)
//        print(jsonString)
//
//
//        //json to Object
//        if let jsonData = getMockJson().data(using: .utf8){
//            let object = try? JSONDecoder().decode(Photo.self, from: jsonData)
//            print(object)
//        }
        
        
        //generic to json
//        let photo = Photo(title: "Hibiscus", url: URL(string: "www.google.com")!, isSample: false, metaData: ["color":"red"], type: .flower, size: Size(height: 200, width: 200))
//        let request = RequestGeneric(request: photo)
//        let encodeData = try? JSONEncoder().encode(request)
//        let jsonString = String(data: encodeData!, encoding: .utf8)
//        print(jsonString)
        
        //json to generic
//        if let jsonData = getMockJson3().data(using: .utf8){
//            let object = try? JSONDecoder().decode(ResponseGeneric<Photo>.self, from: jsonData)
//            print(object)
//        }
        
        if let jsonData = getMockJson4().data(using: .utf8){
            let object = try? JSONDecoder().decode(ResponseGeneric<CompositionResult>.self, from: jsonData)
            print(object)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getMockJson()->String{
        return """
        {
        "type":"fruit",
        "size":{
        "width":150,
        "height":150
        },
        "title":"Apple",
        "url":"https:\\/\\/www.fruits.com\\/apple",
        "isSample":true,
        "metaData":{
        "color":"green"
        }
        }
        """
    }
    
    func getMockJson2()->String{
        return """
        {"request" :
        {
        "type":"fruit",
        "size":{
        "width":150,
        "height":150
        },
        "title":"Apple",
        "url":"https:\\/\\/www.fruits.com\\/apple",
        "isSample":true,
        "metaData":{
        "color":"green"
        }
        }
        }
        """
    }
    
    func getMockJson3()->String{
        return """
        {"results" :
        [
        {
        "type":"fruit",
        "size":{
        "width":150,
        "height":150
        },
        "title":"Apple",
        "url":"https:\\/\\/www.fruits.com\\/apple",
        "isSample":true,
        "metaData":{
        "color":"green"
        }
        }
        ]
        }
        """
    }
    
    func getMockJson4() ->String {
        return """
        {
        "results": [
        {
        "totalAmount2": 674.78,
        "totalAmount3": 670,
        "flagDetailPlus": true,
        "compositions": [
        {
        "seriesNo": 1,
        "formCode": "0001",
        "compositionSeq": 1,
        "compositionCode": "001",
        "compositionDesc": "ห้องอเนกประสงค์",
        "sumPrice": 532,
        "resComRef": 226,
        "MSumQuantity": 2,
        "paintWallArea": 15,
        "paintCeilingArea": 30
        }
        ]
        }
        ],
        "isSuccess": true
        }
        """
    }

}

