  //
//  EventController.swift
//  Revents
//
//  Created by Niraj  Bohra on 8/23/17.
//  Copyright © 2017 Niraj  Bohra. All rights reserved.

 import UIKit
 
 class EventController: UIViewController, UITableViewDelegate , UITableViewDataSource{

    let get = DataModel();
    
    var rID:Int =  0;
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section:Int) -> Int {
        return  (get.getEvents().count);
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell" , for:indexPath) as! viewTableControllerCell
        cell.myImage.image = UIImage(named: get.getEvents()[indexPath.row].eventImage+".jpg")
        
        cell.myEvent.text  =  get.getEvents()[indexPath.row].eventName;
        
        cell.myAddress.text = get.getEvents()[indexPath.row].eventAddress;
        
        cell.myDate.text = get.getEvents()[indexPath.row].eventDate;
        
        cell.myTime.text = get.getEvents()[indexPath.row].eventTime
    

  
        
        return (cell)
    }

    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
         rID = indexPath.row; // rowID to be sent to EventDescriptionController
        
        performSegue(withIdentifier: "eventDesc", sender: self ); // Segue navigates screen
    }
    // This function is called before the segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // get a reference to the second view controller
        let secondViewController = segue.destination as! EventDescriptionController
        
        // set a variable in the second view controller with the data to pass
        secondViewController.receivedData = String(rID);
    }

    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
   
    
 
 }
