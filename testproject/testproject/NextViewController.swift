//
//  NextViewController.swift
//  testproject
//
//  Created by yeekim on 2022/07/22.
//

import UIKit

class NextViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        print(#function)
        
    }
    
    override class func awakeFromNib() {
        super.awakeFromNib()
        print(#function)
    }
    
    override func loadView() {
        super.loadView()
        print(#function)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        print(#function)
        label.text = "이름바꾸기"

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
