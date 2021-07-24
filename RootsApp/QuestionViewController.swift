//
//  QuestionViewController.swift
//  RootsApp
//
//  Created by Jessica Akemi Meguro on 23/07/21.
//

import UIKit

var score : CGFloat = 98

class QuestionViewController: UIViewController {

    @IBOutlet weak var porcentageLabel: UILabel!
    
    @IBOutlet weak var progressBar: UIView!
    
    @IBOutlet weak var progressBarWidth: NSLayoutConstraint!
    
    @IBOutlet weak var progressBarBackgroundView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      

        // Do any additional setup after loading the view.
    }
    override func viewDidLayoutSubviews() {
        progressBarWidth.constant = progressBarBackgroundView.frame.width - (CGFloat(score / CGFloat(100)) * progressBarBackgroundView.frame.width) //tava *
        porcentageLabel.text = "\(score)%"
        progressBarBackgroundView.bringSubviewToFront(porcentageLabel)
    }
    
    @IBAction func question1Tap(_ sender: UIButton) {
        if sender.tag == 1 {
            score -= 5
        } else if sender.tag == 2 {
            score -= 3
        } else if sender.tag == 3 {
            score += 3
        } else if sender.tag == 4 {
            score -= 15
        }
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
