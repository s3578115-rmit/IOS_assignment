//
//  BookedEvents.swift
//  Revents
//
//  Created by Niraj  Bohra on 8/25/17.
//  Copyright © 2017 Niraj  Bohra. All rights reserved.
//

import Foundation

class BookedEvents {
    
    var bookingID:Int;
    var bookingName:String;
    var bookingDate:String;
    var bookedEventName:String;
    var eventDate:String;
    var eventAddress:String;
    
    init(bID:Int,bName:String,bDate:String,eName:String,eDate:String,eventAdd:String){
        bookingID = bID;
        bookingName = bName;
        bookingDate = bDate ;
        bookedEventName = eName;
        eventDate =  eDate;
        eventAddress = eventAdd;
        
    }
    
    func getBookingID()->Int{
        return bookingID
    }
    
    func getBookingName()->String{
        return bookingName
    }
    func getBookingDate() ->String {
        return bookingDate
    }
    func getBookedEventName()->String{
        return bookedEventName
    }
    func getEventDate()->String{
        return eventDate
    }
    func getEventAddress()->String{
        return eventAddress
    }
}
