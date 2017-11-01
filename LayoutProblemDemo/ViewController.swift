//
//  ViewController.swift
//  LayoutProblemDemo
//
//  Created by Tomek on 01/11/2017.
//  Copyright © 2017 SmartRecruiters. All rights reserved.
//

import UIKit
import Layout

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tview: UITableView!
    
    
    enum CellIdentifiers {
        static let TimePicker = "DelayedTimePicker"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tview.rowHeight = UITableViewAutomaticDimension
        tview.estimatedRowHeight = 55.0
        
        tview.registerLayout(named: "DelayedTimePickerCell.xml", forCellReuseIdentifier: CellIdentifiers.TimePicker)
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let node = tableView.dequeueReusableCellNode(withIdentifier: CellIdentifiers.TimePicker, for: indexPath)
        node.setState([])
        return node.view as! UITableViewCell
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */


}

