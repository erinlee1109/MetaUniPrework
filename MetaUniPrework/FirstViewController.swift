//
//  ViewController.swift
//  MetaUniPrework
//
//  Created by Yujeong Lee on 4/30/22.
//

import UIKit

class FirstViewController: UIViewController, EmotionDelegate {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emotionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // grab name from text field
        let name = nameTextField.text ?? ""
        
        // set username's destination as SecondViewController
        let destinationVC = segue.destination as! SecondViewController
        
        // pass name to SecondViewController's username variable
        destinationVC.username = name
        
        destinationVC.delegate = self
    }
    
    func emotionIsPicked(_ emotion: String) {
        let emotion = emotion.lowercased()
        emotionLabel.text = "You are feeling " + emotion
    }
}

