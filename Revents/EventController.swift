 //
//  EventController.swift
//  Revents
//
//  Created by Niraj  Bohra on 8/23/17.
//  Copyright © 2017 Niraj  Bohra. All rights reserved.

 import UIKit
 
 class EventController: UIViewController, UITableViewDelegate , UITableViewDataSource{

        var events : Array<Event> = [];
        
    //}
    
   

    
    
   
    
  //  myEvents[1] = Event(name:"/dev/world/2017",image:"e2" )
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section:Int) -> Int {
        return  (events.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell" , for:indexPath) as! viewTableControllerCell
        cell.myImage.image = UIImage(named: events[indexPath.row].eventImage+".jpg")
        
        cell.myEvent.text  =  events[indexPath.row].eventName;
        
        cell.myAddress.text = events[indexPath.row].eventAddress;
        
        cell.myDate.text = events[indexPath.row].eventDate;
        
        cell.myTime.text = events[indexPath.row].eventTime
    
        return (cell)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        events.append(Event(name:"/dev/world/2017",
                            image:"e1",
                            address:"RMIT Swanston Academic Building 80/445 Swanston St Melbourne, VIC 3000",
                            date: "28th - 30th September",
                            time: " 9:00am - 5:00pm"
                       ));
        events.append(Event(name:"The Gateway Plan",
                            image:"e2",
                            address:"The Corner Hotel 57 Swan Street Richmond, VIC 312",
                            date: "10th September",
                            time: "7:30am"
                       ));
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
   
    
 
 }
