//
//  AddCountdownTableViewController.swift
//  AddFreeCountdown
//
//  Created by Ian Hall on 1/7/20.
//  Copyright © 2020 Ian Hall. All rights reserved.
//

import UIKit

class AddCountdownTableViewController: UITableViewController, UIPickerViewDelegate {

    //MARK: - Outlets
    
    @IBOutlet weak var titleTextField: UITextField!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var addPicButton: UIButton!
    
    @IBOutlet weak var countdownImage: UIImageView!
    
    //MARK: - Variables
    
    var selectedDate: Date?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
//MARK: - Actions
    
    @IBAction func addButtonTapped(_ sender: Any) {
    }
    
    
   //MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
   
    }

}
