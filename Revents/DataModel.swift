//
//  DataController.swift
//  Revents
//
//  Created by Niraj  Bohra on 8/24/17.
//  Copyright © 2017 Niraj  Bohra. All rights reserved.
//

import UIKit

class DataModel {
    
  
    static var get:DataModel = DataModel();
 
    var currentIndex:Int;
    
    
    init() {
   
        currentIndex =  0;
        
    }
    
    var events : Array<Event> = [  Event(
                                            name:"/dev/world/2017",
                                            image:"e1.jpg",
                                            address:"RMIT Swanston Academic Building 80/445 Swanston St Melbourne, VIC 3000",
                                             date: "28th - 30th September",
                                             time: " 9:00am - 5:00pm",
                                             description: "/dev/world—Australia's longest-running conference for macOS and iOS developers and designers—returns to Melbourne for its tenth anniversary year!We've been working for years to build a community that also welcomes tinkerers, artists and scientists. Software isn't just about making money with in-app purchases—come and see a wider world.The conference sessions cover a wide range of topics including iOS, macOS, tvOS and watchOS frameworks, Apple and third-party development tools, and open source software, and provides developers with an opportunity to meet and network with others working in the same space.Learn more about /dev/world/2017 at http://devworld.com.auIf you are an individual AUC member, check your email for a discount promo code.Special discount pricing is available for students, but if you register to become an AUC student member ($50), then entry to the conference is free.If you are a staff member at an AUC institutional member, contact your AUC Coordinator for a discount promo code.This event is open to everyone."
                                      )
                                ,
                                      Event(
                                                name:"The Gateway Plan",
                                                image:"e2.jpg",
                                                address:"The Corner Hotel 57 Swan Street Richmond, VIC 312",
                                                date: "10th September",
                                                time: "7:30am",
                                                description: "THIS SHOW IS STRICTLY 18+ PLAYING 'OTHER VOICES, OTHER ROOMS' IN FULL - 2ND SHOW DUE TO POPULAR DEMAND! In september, The Getaway Plan will be embarking on a tour performing their critically acclaimed album,  Other Voices, Other Rooms .The band s breakthrough album reached #3 ARIA Australian Album chart and #1 on the AIR album charts.The national tour will see the band performing 2 sets in each city, including  Other Voices, Other Rooms  in its entirety."
                                        
                                        )
                                    ];
    
    
    var eventTimes:Array = [ "Today" , "Tomorrow" ,"Upcoming"];
    
    
    
    

    func getEvents() ->Array<Event> {
        return events;
    }
    
    func getEventTimes()->Array<String>{
        return eventTimes;
    }
    
//    func setIndex(val:Int){
//        self.currentIndex =  val;
//    }
//    func getIndex() -> Int {
//        return currentIndex;
//    }
    
 
  
       
}



