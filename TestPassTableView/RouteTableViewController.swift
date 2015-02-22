//
//  RouteTableViewController.swift
//  TestPassTableView
//
//  Created by Red_iMac on 2/22/15.
//  Copyright (c) 2015 Red_iMac. All rights reserved.
//

import UIKit

class RouteTableViewController: UITableViewController {

    var routes : [(String,Int)] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        routes = [
            ("route: 1",1),
            ("route: 2",2),
            ("route: 3",3),
            ("route: 4",4),
            ("route: 5",5),
            ("route: 6",6),
            ("route: 7",7),
            ("route: 8",8),
            ("route: 9",9),
            ("route: 10",10),
            ("route: 11",11),
            ("route: 12",12),
            ("route: 13",13),
            ("route: 14",14),
            ("route: 15",15)]
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return routes.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("routeCell", forIndexPath: indexPath) as UITableViewCell

        // Configure the cell...
        var (route,id) = routes[indexPath.row]
        cell.textLabel?.text = route
        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
        var listScene = segue.destinationViewController as ListTableViewController
        if let indexPath = self.tableView.indexPathForSelectedRow() {
            let attractionList = [
                ("title: 21",21),
                ("title: 22",22),
                ("title: 23",23),
                ("title: 24",24),
                ("title: 25",25),
                ("title: 26",26),
                ("title: 27",27),
                ("title: 28",28),
                ("title: 29",29)]
            listScene.attractions = attractionList
        }
    }

}
