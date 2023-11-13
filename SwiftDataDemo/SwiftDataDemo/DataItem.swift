//
//  DataItem.swift
//  SwiftDataDemo
//
//  Created by Serena Savarese on 05/11/23.
//

import Foundation
import SwiftData

@Model
class DataItem: Identifiable {
    
    var id: String
    var name: String
    
    init(name: String){
        
        self.id = UUID().uuidString
        self.name = name
    }
    
}
