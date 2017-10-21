//
//  ColorsViewController.swift
//  Colors
//
//  Created by Blake Endsley on 10/20/17.
//  Copyright © 2017 Blake Endsley. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var colorsTableView: UITableView!
    var colors = ["red", "orange", "yellow", "green", "blue", "purple", "brown"]

    override func viewDidLoad() {
        super.viewDidLoad()
        colorsTableView.dataSource = self
        colorsTableView.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        cell.textLabel?.text = colors[indexPath.row]
        if colors[indexPath.row] == "red"
        {
            cell.backgroundColor = UIColor.red
        }
        if colors[indexPath.row] == "orange"
        {
            cell.backgroundColor = UIColor.orange
        }
        if colors[indexPath.row] == "yellow"
        {
            cell.backgroundColor = UIColor.yellow
        }
        if colors[indexPath.row] == "green"
        {
            cell.backgroundColor = UIColor.green
        }
        if colors[indexPath.row] == "blue"
        {
            cell.backgroundColor = UIColor.blue
        }
        if colors[indexPath.row] == "purple"
        {
            cell.backgroundColor = UIColor.purple
        }
        if colors[indexPath.row] == "brown"
        {
            cell.backgroundColor = UIColor.brown
        }
        
        return cell
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
