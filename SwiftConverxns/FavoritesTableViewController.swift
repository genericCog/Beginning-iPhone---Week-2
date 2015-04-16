//
//  FavoritesTableViewController.swift
//  SwiftConverxns
//
//  Created by Adam Cherochak on 4/16/15.
//  Copyright (c) 2015 Adam Cherochak. All rights reserved.
//  2015-04-16-1521 homework week 3 page 23, 4.c

import UIKit

class FavoritesTableViewController: UIViewController {

    //load the Favorites array into memory from NSUserDefaults so that we can use it to drive the table view
    var favorites: Array<AnyObject> = []
    
    //4.d wk-3 prepare a cell class for reuse
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        self.title = "Favorites"
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }
    required init(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
    }
    
    override func viewWillAppear(animated: Bool) {
        if let data: NSData = NSUserDefaults.standardUserDefaults().objectForKey("FavoriteConversions") as? NSData{
            if var savedFavorites: Array<AnyObject> = NSKeyedUnarchiver.unarchiveObjectWithData(data) as? Array{
                self.favorites = savedFavorites
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        //WARNING
        return 1
    }
    
    //4.e wk-3 provide datasource and configure the cells to display fav's
    override func tableView(UITableView, numberOfRowsInSection section: Int) -> Int {
        //WARNING
        return favorites.count
    }
    
    override func tableView(tableView:UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) ->UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath:indexPath) as? UITableViewCell
        // configure the cell
        let favorite: Favorite = favorites[indexPath.row] as! Favorite // threw error ~ 'as!'
        cell.textLabel.text = NSString(format: "%f%@ = %f%@", favorite.inputValue, favorite.inputUnits, favorite.outputValue, favorite.outputUnits)
        return cell
    }
    
    



    



    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
