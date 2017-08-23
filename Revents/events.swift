//
//  events.swift
//  Revents
//
//  Created by Niraj  Bohra on 8/23/17.
//  Copyright © 2017 Niraj  Bohra. All rights reserved.
//

import Foundation

class events {
    
    let eventImages = ["e1" , "e2"] ;
    let eventHead = ["/dev/world/2017" , "THE GETAWAY PLAN"]
    
    func getEventImages() -> String {
        return eventImages[0];
    }
    func getEventHead() -> Array{
        return eventHead;
    }
}
