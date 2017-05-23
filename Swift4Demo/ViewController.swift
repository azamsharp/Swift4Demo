//
//  ViewController.swift
//  Swift4Demo
//
//  Created by Mohammad Azam on 5/18/17.
//  Copyright © 2017 Mohammad Azam. All rights reserved.
//

import UIKit

struct Language {
    
    var name :String
    var version :Int
    
    func toDictionary() -> [String:Any] {
        return ["name":self.name,"version":self.version]
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let language = Language(name: "swift", version: 4)
        
        let data = try? JSONSerialization.data(withJSONObject: language.toDictionary(), options: [])
        
        print(data!)
        
        
    }

}

