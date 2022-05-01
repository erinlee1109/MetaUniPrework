//
//  SecondViewController.swift
//  MetaUniPrework
//
//  Created by Yujeong Lee on 4/30/22.
//

import UIKit

class SecondViewController: UIViewController {
    // create a delegate property
    weak var delegate: EmotionDelegate?
    
    // create variable to hold the username sent from FirstViewController
    var username: String = ""
    @IBOutlet weak var greetUserLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // set greetUserLabel 
        greetUserLabel.text = "Hello " + username + ", how are you feeling?"
    }
    
    @IBAction func didPickEmotion(_ sender: UIButton) {
        // get button string
        let emotion = sender.titleLabel?.text ?? ""
        // send emotion string to the delegate method
        delegate?.emotionIsPicked(emotion)
        // return to the FirstVC
        dismiss(animated: true, completion: nil)
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
