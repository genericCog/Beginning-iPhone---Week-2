//
//  MenuViewController.swift
//  SwiftConverxns
//
//  Created by Adam Cherochak on 4/20/15.
//  Copyright (c) 2015 Adam Cherochak. All rights reserved.
//  2015-04-20-1014 wk3
//

import UIKit

class MenuViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    //wk3-2.d
    var viewControllers: Array<UIViewController>?
    convenience init (viewControllers: Array<UIViewController>) {
        self.init()
        self.viewControllers = viewControllers
        //wk3-2.f
        (self.view as! UITableView).registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    //wk3-2.j override the loadView function, do not try to initialize instances of this calss w/ initWithNibName:bundle
    override func loadView(){
    self.view = NSBundle.mainBundle().loadNibNamed("MenuViewController", owner: self, options: nil) [0] as! UITableView
    }
    
    
    //wk3-2.d
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    //wk3-2.e
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewControllers!.count
    }
    
    //wk3-2.g
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("Cell") as! UITableViewCell
        let viewController = viewControllers![indexPath.row]
        cell.textLabel?.text = viewController.title
        return cell
    }
    
    //wk3-2.k
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let selectedViewController = viewControllers![indexPath.row]
        self.navigationController?.pushViewController(selectedViewController, animated: true)
    }
    
    //wk3-2.c
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
