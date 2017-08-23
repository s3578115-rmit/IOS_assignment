//
//  Event.swift
//  Revents
//
//  Created by Niraj  Bohra on 8/23/17.
//  Copyright © 2017 Niraj  Bohra. All rights reserved.
//

import Foundation
//

class Event{
    
    
    
    let eventHeadings = ["/dev/world/2017" , "The Gateway Plan"]
    let eventAddress = ["/dev/world/2017" , "The Gateway Plan"]
    let eventHeadings = ["/dev/world/2017" , "The Gateway Plan"]
    let eventImages = ["e1" , "e2"]
    
    func getEventHeadingByIndex( _ index: Int)  -> String{
        return eventHeadings[index];
    }
    func getEventImagesByIndex( _ index: Int)  -> String{
        return eventImages[index];
    }
    func getEventCount() -> Int {
        return (eventHeadings.count)
    }
    
}
