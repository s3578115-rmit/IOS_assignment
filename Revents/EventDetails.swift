//
//  EventDetails.swift
//  Revents
//
//  Created by Niraj  Bohra on 8/24/17.
//  Copyright © 2017 Niraj  Bohra. All rights reserved.
//

import Foundation

class EventDetails {
    
    var currentIndex:Int;
    
    init(value:Int) {
        self.currentIndex = value;
    }
    
    func setIndex(value:Int){
       self.currentIndex = value;
    }
    
    func getIndex()->Int {
        return currentIndex;
    }
    
}
