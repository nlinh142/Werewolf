//
//  SetupTableViewController.swift
//  Werewolf
//
//  Created by Linh Nguyen on 30/10/2016.
//  Copyright © 2016 N2L. All rights reserved.
//

import UIKit

class SetupTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

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

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "setupCell", for: indexPath)
        cell.textLabel?.text = indexPath.row == 0 ? "Voice" : "Player"
        
        return cell
    }
    
    // MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let segueIdentifier = indexPath.row == 0 ? "voiceManagerSegue" : "playerManagerSegue"
        self.performSegue(withIdentifier: segueIdentifier, sender: indexPath);
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if  segue.identifier == "voiceManagerSegue",
            let _ = segue.destination as? VoiceManagerViewController
        {
            print("Push to Voice Manager")
        } else if  segue.identifier == "playerManagerSegue",
            let _ = segue.destination as? VoiceManagerViewController
        {
            print("Push to Player Manager")
        }
    }

}
