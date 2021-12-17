//
//  ViewController.swift
//  calculator
//
//  Created by Siyahul Haq on 17/12/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var percent: UIButton!;
    @IBOutlet var plusMinus: UIButton!;
    @IBOutlet var ac: UIButton!;
    @IBOutlet var divide: UIButton!;
    @IBOutlet var one: UIButton!;
    @IBOutlet var two: UIButton!;
    @IBOutlet var three: UIButton!;
    @IBOutlet var four: UIButton!;
    @IBOutlet var five: UIButton!;
    @IBOutlet var six: UIButton!;
    @IBOutlet var seven: UIButton!;
    @IBOutlet var eight: UIButton!;
    @IBOutlet var nine: UIButton!;
    @IBOutlet var zero: UIButton!;
    @IBOutlet var mul: UIButton!;
    @IBOutlet var minus: UIButton!;
    @IBOutlet var plus: UIButton!;
    @IBOutlet var equal: UIButton!;
    @IBOutlet var dot: UIButton!;
    @IBOutlet var display: UILabel!;
    var value: String = "";

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        percent.addTarget(self, action:#selector(self.buttonClicked), for: .touchUpInside)
        plusMinus.addTarget(self, action:#selector(self.buttonClicked), for: .touchUpInside)
        ac.addTarget(self, action:#selector(self.buttonClicked), for: .touchUpInside)
        divide.addTarget(self, action:#selector(self.buttonClicked), for: .touchUpInside)
        one.addTarget(self, action:#selector(self.buttonClicked), for: .touchUpInside)
        two.addTarget(self, action:#selector(self.buttonClicked), for: .touchUpInside)
        three.addTarget(self, action:#selector(self.buttonClicked), for: .touchUpInside)
        four.addTarget(self, action:#selector(self.buttonClicked), for: .touchUpInside)
        five.addTarget(self, action:#selector(self.buttonClicked), for: .touchUpInside)
        six.addTarget(self, action:#selector(self.buttonClicked), for: .touchUpInside)
        seven.addTarget(self, action:#selector(self.buttonClicked), for: .touchUpInside)
        eight.addTarget(self, action:#selector(self.buttonClicked), for: .touchUpInside)
        nine.addTarget(self, action:#selector(self.buttonClicked), for: .touchUpInside)
        zero.addTarget(self, action:#selector(self.buttonClicked), for: .touchUpInside)
        mul.addTarget(self, action:#selector(self.buttonClicked), for: .touchUpInside)
        minus.addTarget(self, action:#selector(self.buttonClicked), for: .touchUpInside)
        plus.addTarget(self, action:#selector(self.buttonClicked), for: .touchUpInside)
        equal.addTarget(self, action:#selector(self.buttonClicked), for: .touchUpInside)
        dot.addTarget(self, action:#selector(self.buttonClicked), for: .touchUpInside)
    }
    
    @objc func buttonClicked(button: UIButton){
        if let text = button.titleLabel?.text {
            if(text == "AC") {
                value = "0"
                display.text = "0"
                return
            }
            value += text
            display.text = value
        }
    }


}

