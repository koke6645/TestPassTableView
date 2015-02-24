//
//  FilterTableViewController.swift
//  TestPassTableView
//
//  Created by Red_iMac on 2/22/15.
//  Copyright (c) 2015 Red_iMac. All rights reserved.
//

import UIKit

class FilterTableViewController: UITableViewController {

    var categories : [String]?
    var tags : [(String,Bool)] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        categories = [
        "Cat: 1",
        "Cat: 2",
        "Cat: 3",
        "Cat: 4",
        "cat: 5"]
        
        tags = [
        ("Tag: 1",true),
        ("Tag: 2",true),
        ("Tag: 3",true),
        ("Tag: 4",true),
        ("Tag: 5",true),
        ("Tag: 6",true),
        ("Tag: 7",true),
        ("Tag: 8",true),
        ("Tag: 9",true),
        ("Tag: 10",true),
        ("Tag: 11",true),
        ("Tag: 12",true),
        ("Tag: 13",true)]
        
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
        return 2
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        if section == 0 {
            return categories!.count
        } else {
            return tags.count
        }
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        if indexPath.section == 0 {
            let categoryCell = tableView.dequeueReusableCellWithIdentifier("categoryCell", forIndexPath: indexPath) as UITableViewCell
            let category = categories![indexPath.row]
            categoryCell.textLabel?.text = category
            return categoryCell
        } else {
            let tagCell = tableView.dequeueReusableCellWithIdentifier("tagCell", forIndexPath: indexPath) as UITableViewCell
            let (title,select) = tags[indexPath.row]
            tagCell.textLabel?.text = title
            if select {
                tagCell.accessoryType = UITableViewCellAccessoryType.Checkmark
            } else {
                tagCell.accessoryType = UITableViewCellAccessoryType.None
            }
            return tagCell
        }
    }

    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Categories"
        } else {
            return "Tags"
        }
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.section == 1 {
            println("row \(indexPath)")
            /*
            tableView.cellForRowAtIndexPath(indexPath)?.accessoryType = UITableViewCellAccessoryType.None
            */
            let (title,select) = tags[indexPath.row]
            tags[indexPath.row] = (title,!select)
            tableView.reloadRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.None)
        }
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
        if segue.identifier == "routeFilter" {
            let routeScene = segue.destinationViewController as RouteTableViewController
            let routes = [
                ("route: 1",1),
                ("route: 2",2),
                ("route: 5",5),
                ("route: 7",7),
                ("route: 9",9),
                ("route: 11",11),
                ("route: 12",12)]
            routeScene.routes = routes
        }
    }
    */
    
}
