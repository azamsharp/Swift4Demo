//
//  UserDefaultsManager.swift
//  Swift4Demo
//
//  Created by Mohammad Azam on 5/18/17.
//  Copyright © 2017 Mohammad Azam. All rights reserved.
//

import Foundation

struct Storage {
    
    fileprivate var dictionary :[String:Any]
    
    init(dictionary :[String:Any]) {
        self.dictionary = dictionary
    }
    
    subscript<T>(key :String) -> T? {
        return dictionary[key] as? T
    }
    
}

class UserDefaultsManager {
    
    var storage :Storage
    
    fileprivate static var manager :UserDefaultsManager?
    
    private init() {
        
        self.storage = Storage(dictionary :[:])
    
    }
    
    static var shared: UserDefaultsManager {
        
        get {
            if manager == nil {
                manager = UserDefaultsManager()
            }
            
            return manager!
        }
    }
    
}
