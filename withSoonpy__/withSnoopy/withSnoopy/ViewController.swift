//
//  ViewController.swift
//  withSnoopy
//
//  Created by yeekim on 2022/07/13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var switchForTest: UISwitch!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func didButtonClicked(_ sender: Any) {
        print("button clicked")
        textLabel.textColor = .cyan
    }
    @IBAction func changeStatusOfButton(_ sender: Any) {
        print("change status")
        switchForTest.isOn.toggle()
    }
    
    @IBAction func didNextButtonClicked(_ sender: Any) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "SecondVC") as? SecondViewController else {
            print("second vc init from storyboard error")
            return
        }
        vc.modalTransitionStyle = .flipHorizontal
        vc.modalPresentationStyle = .fullScreen
        
        if let text = textField.text {
            vc.inputText = text
        }
        
        
        
        present(vc, animated: true)
    }
}

