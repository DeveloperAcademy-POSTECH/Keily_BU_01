//
//  ViewController.swift
//  testproject
//
//  Created by yeekim on 2022/07/22.
//

import UIKit

class SuperViewController: UIViewController {
    func testFunction() {
        print(#function, "실행되었습니다.")
    }
}

class ViewController: SuperViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        testFunction()
    }
    
    override func testFunction() {
        print(#function, "ViewController에서 실행되었습니다.")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        print(#function)
    }
}

// 라이프 사이클에 대한 개념 찾아보기

