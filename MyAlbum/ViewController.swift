//
//  ViewController.swift
//  MyAlbum
//
//  Created by eunjin kim on 2021/03/14.
//

import UIKit
// ui 레이블이 뷰 컨트롤러에 연결되어 있어야 뷰의 값을 변경할 수 있다.
class ViewController: UIViewController {
    
    var currentValue = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func showAlert(_ sender: Any) {
        let message = "가격은 \(currentValue) 입니다."
        
        let alert = UIAlertController(title: "Hello", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
        // 1~10000까지의 랜덤 숫자
        let randomPrice = arc4random_uniform(10000) + 1
        currentValue = Int(randomPrice)
    }
}

