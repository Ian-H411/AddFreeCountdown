//
//  AddCountdownTableViewController.swift
//  AddFreeCountdown
//
//  Created by Ian Hall on 1/7/20.
//  Copyright © 2020 Ian Hall. All rights reserved.
//

import UIKit

class AddCountdownTableViewController: UITableViewController {
    
    //MARK: - Outlets
    
    @IBOutlet weak var titleTextField: UITextField!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var addPicButton: UIButton!
    
    @IBOutlet weak var countdownImage: UIImageView!
    
    //MARK: - Variables
    
    var selectedDate: Date?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleTextField.delegate = self
        jk
    }
    //MARK: - Actions
    
    @IBAction func addButtonTapped(_ sender: Any) {
        
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        
    }
    
    
    //MARK: - Helper functions
    func checkTextFields() {
        
    }
    
    
    //MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    
}
extension AddCountdownTableViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let string = ((textField.text ?? "") + string)
        if string.count <= 25 {
            return true
        } else {
            return false
        }
       
    }
}
