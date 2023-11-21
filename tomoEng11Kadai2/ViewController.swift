//
//  ViewController.swift
//  tomoEng11Kadai2
//
//  Created by 井本智博 on 2023/11/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var label: UILabel!
    @IBOutlet private weak var calculateSegment: UISegmentedControl!

    var selectedSegmentNumber: Int?

    override func viewDidLoad() {
        super.viewDidLoad()

        textField1.keyboardType = .numberPad
        textField2.keyboardType = .numberPad
    }
    
    @IBAction func caluculateButtonPressed(_ sender: UIButton) {

        if let num1 = Double(textField1.text!), let num2 = Double(textField2.text!) {

            switch selectedSegmentNumber {
            case 0:
                label.text = String(num1 + num2)
            case 1:
                label.text = String(num1 - num2)
            case 2:
                label.text = String(num1 * num2)
            case 3:
                if num2 != 0 {
                    label.text = String(num1 / num2)
                } else {
                    label.text = "割る数には0以外の数字を入力してください"
                }
            default:
                label.text = String(num1 + num2)
            }
        }
    }
    @IBAction func caluculateSegmentPressed(_ sender: UISegmentedControl) {

        selectedSegmentNumber = calculateSegment.selectedSegmentIndex
    }


}

