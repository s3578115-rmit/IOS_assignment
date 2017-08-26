//
//  EventDescriptionController.swift
//  Revents
//
//  Created by Niraj  Bohra on 8/25/17.
//  Copyright © 2017 Niraj  Bohra. All rights reserved.
//

import UIKit

class EventDescriptionController: UIViewController {
    
    @IBOutlet weak var myEventName: UILabel!
    
    @IBOutlet weak var myEventImage: UIImageView!
    
    @IBOutlet weak var myEventAddress: UITextView!
    @IBOutlet weak var myEventDates: UILabel!
    
    @IBOutlet weak var myEventDate: UILabel!
    
    
    @IBOutlet weak var myEventDetails: UILabel!
    
    @IBOutlet weak var myEventTime: UILabel!
    
    @IBOutlet weak var myEventDescription: UITextView!
     
 //   @IBOutlet weak var bookNow: UIButton!
    
    @IBOutlet weak var backButton: UIBarButtonItem!
    
    
    var receivedData = ""
    
    let obj = DetailsController();
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var index = Int(receivedData);
        myEventName.text? = DataModel.get.getEvents()[index!].eventName;
        myEventImage.image = UIImage(named: DataModel.get.getEvents()[index!].eventImage);
        myEventAddress.text? = DataModel.get.getEvents()[index!].eventAddress;
        myEventDate.text? = DataModel.get.getEvents()[index!].eventDate;
        
        myEventTime.text? = DataModel.get.getEvents()[index!].eventTime;
        myEventDescription.text? = DataModel.get.getEvents()[index!].eventDescription;
        
      //  bookNow.addTarget(self, action: #selector(EventDescriptionController.buttonPressed(sender:)), for: .touchUpInside)
        
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let childViewController = segue.destination as! DetailsController
      //  childViewController.delegate = self
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
