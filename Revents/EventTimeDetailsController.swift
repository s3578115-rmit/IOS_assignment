//
//  EventTimeDetails.swift
//  Revents
//
//  Created by Niraj  Bohra on 8/25/17.
//  Copyright © 2017 Niraj  Bohra. All rights reserved.
//

import Foundation
import UIKit

class EventTimeDetails: UIViewController {
    
    /* this property is so it can receive the name of the image
     it needs to display from the MasterTableViewController
     */

    
    @IBOutlet weak var eventName: UILabel!
    var cardName:String?
    var currentEvent:DataModel?
    var cardID:Int?
    
    
    // Lifecycle method for performing tasks after the view has loaded
    override func viewDidLoad()
    {
        super.viewDidLoad()
        eventName.text = cardName;
        
 
    }
    
    // Lifecycle method for clearing up memory resources
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
extension EventTimeDetails:Refresh
{
    func refresh(card: String) {
        self.cardName =  DataModel.get.getEventTimes()[0];
    
    }
}


