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
    
    
    var eventName: String;
    var eventImage: String;
    var eventAddress: String;
    var eventDate: String;
    var eventTime: String;
    var eventDescription: String;
    
 

   
    init(name: String , image:String   , address:String , date:String , time:String ,description:String ) {
        eventName = name
        eventImage = image;
        eventAddress = address;
        eventDate = date;
        eventTime = time;
        eventDescription = description;
        
    }
    
    func getEventHeadingByName()  -> String{
        return eventName;
    }
    func getEventImagesByName()  -> String{
        return eventImage;
    }
    func getEventAddressByName() -> String {
        return eventAddress;
    }
    func getEventDateByName() -> String {
        return eventDate;
    }
    func getEventTimeByName() -> String {
        return eventTime;
    }
    func getEventDescription() -> String {
        return eventDescription;
    }
  
}

