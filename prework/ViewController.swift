//
//  ViewController.swift
//  prework
//
//  Created by Evelyn on 1/27/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var FirstName: UITextField!
    @IBOutlet weak var LastName: UITextField!
    @IBOutlet weak var SchoolName: UITextField!
    @IBOutlet weak var PetNum: UILabel!
    
    @IBOutlet weak var PetStepper: UIStepper!
    @IBOutlet weak var YearSelection: UISegmentedControl!
    @IBOutlet weak var PetSwitch: UISwitch!
    
    @IBAction func Introduce(_ sender: UIButton) {
        let year = YearSelection.titleForSegment(at: YearSelection.selectedSegmentIndex)
        let introduction = "My name is \(FirstName.text!) \(LastName.text!) and I attend \(SchoolName.text!). I am currently in my \(year!) year and I own \(PetNum.text!) cat. It is \(PetSwitch.isOn) that I want more pets."
        
        let alert = UIAlertController(title:"My Introduction", message: introduction, preferredStyle: .alert)
        
        let dismiss = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
        alert.addAction(dismiss)
        present(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func ModifyPetNum(_ sender: UIStepper) {
        PetNum.text = "\(Int(sender.value))"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

