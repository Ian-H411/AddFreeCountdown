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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        tableView.reloadData()
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
    
    // MARK: - Navigation


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                if let destination = segue.destination as? CountdownDetailViewController {
                    let countdown = CountdownController.shared.countDowns[indexPath.row]
                    destination.countdownLandingPad = countdown
                }
            }
        }
    }

}
