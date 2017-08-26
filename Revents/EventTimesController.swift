//
//  EventTimes.swift
//  Revents
//
//  Created by Niraj  Bohra on 8/25/17.
//  Copyright © 2017 Niraj  Bohra. All rights reserved.
//
import UIKit


protocol Refresh
{
    func refresh(card:String)
}


class EventTimes: UITableViewController {
    
    // Get a reference to our model so we can get our deck of cards
    // Note here we are instantiating a new model, not best practice as we have already done
    // this in our app in our main view controller, later we will look at solving this issue.
   
    var rID:Int = 0;
    var delegate:Refresh?
  
       
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Events"
        
    }
    
    
    
    // UITableviewController function for determining how many rows are needed to hold the data from our model
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return (DataModel.get.getEventTimes().count)
    }
    
    // UITableviewController function for determining what to display in each row of the table
    // this function is called for every row in the table as determined by the previous overidden function
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell     {
        //ask for a reusable cell from the tableview, the tableview will create a new one if it doesn't have any
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "cell") as UITableViewCell!
        
        // check which data source should be used for loading up each row in the table.
        let card : String = changeDataSource(indexPath: indexPath as NSIndexPath)
        
        // Configure the cell
        cell?.textLabel!.text = card;
        cell?.accessoryType = UITableViewCellAccessoryType.disclosureIndicator
        
        return cell!
        
    }
    func changeDataSource(indexPath: NSIndexPath) -> String
    {
        var card: String;
        
        card = DataModel.get.getEventTimes()[indexPath.row];
        
        return card
    }

 
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        rID = indexPath.row;
        
        var textData:String = "S";
        
        // This points to our detail View controller so we are setting the property on the detail view
        // when we select a card in our master view.
        self.delegate?.refresh(card: textData)
        
        // This is needed for when displayed in portrait and you need show the detail
        // view as a result of selecting an item.
        if let detailViewController = self.delegate as? EventTimeDetails {
            splitViewController?.showDetailViewController(detailViewController.navigationController!, sender: nil)
        }
    }
    
    
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
//    {
//        rID = indexPath.row;
//        
//    }
//    
//    
    override func prepare (for segue: UIStoryboardSegue, sender: Any?)
    {
        // Grab the current card
        let indexPath = self.tableView .indexPathForSelectedRow!
        
        
        // Set a property on the destination view controller
        let detailsVC = segue.destination as! EventTimeDetails
        
        let destinationTitle = "l";
        detailsVC.title = destinationTitle
        detailsVC.cardName = destinationTitle;
    }


 


   
    
}
