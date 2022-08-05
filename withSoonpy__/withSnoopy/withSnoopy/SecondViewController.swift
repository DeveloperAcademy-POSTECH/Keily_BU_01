//
//  SecondViewController.swift
//  withSnoopy
//
//  Created by yeekim on 2022/07/13.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var textLabel: UILabel!
    var inputText: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setText()

    }
    
    func setText() {
        textLabel.text = inputText
    }
    
    @IBAction func didBeforeButtonClicked2(_ sender: Any) {
        // 자살각
        dismiss(animated: true)
        
    }
    
}
