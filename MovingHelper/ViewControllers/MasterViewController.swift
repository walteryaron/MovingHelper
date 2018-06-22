//
//  MasterViewController.swift
//  MovingHelper
//
//  Created by Ellen Shapiro on 6/7/15.
//  Copyright (c) 2015 Razeware. All rights reserved.
//

import UIKit

//MARK: - Main view controller class
public class MasterViewController: UITableViewController {

  
  //MARK: View Lifecycle
  
  override public func viewDidLoad() {
    super.viewDidLoad()
  }
  
    override public func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)

  }

  //MARK: IBActions
  
  @IBAction func calendarIconTapped() {
  }

  //MARK: File Writing

}


//MARK: - Moving Date Delegate Extension

//MARK: - Table View Data Source Extension

extension MasterViewController {

   public func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    return 1
  }
  
   public func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    return 40
  }

   public func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 1
  }
  
   public func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath as IndexPath)
    cell.backgroundColor = .black
    return cell
  }
}

