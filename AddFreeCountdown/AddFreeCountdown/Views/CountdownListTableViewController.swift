//
//  CountdownListTableViewController.swift
//  AddFreeCountdown
//
//  Created by Ian Hall on 12/29/19.
//  Copyright © 2019 Ian Hall. All rights reserved.
//

import UIKit

class CountdownListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return CountdownController.shared.countDowns.count
        
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Countdown", for: indexPath) as? CountdownTableViewCell else {return UITableViewCell()}
        let countDown = CountdownController.shared.countDowns[indexPath.row]
        cell.updateCell(countDown)
        
        return cell
    }
//MARK: - Actions
    
    @IBAction func addNewCountDownTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "addCountdown", sender: nil)
    }
    

    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
    
            let countdown = CountdownController.shared.countDowns[indexPath.row]
            CountdownController.shared.delete(countdown: countdown)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    // MARK: - Navigation


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }

}
