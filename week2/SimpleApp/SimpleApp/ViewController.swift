//
//  ViewController.swift
//  SimpleApp
//
//  Created by 陳建綸 on 2022/8/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    func UIColorFromHex(_ rgbValue: Int) -> UIColor! {
        return UIColor(
            red:   CGFloat((Float((rgbValue & 0xff0000) >> 16)) / 255.0),
            green: CGFloat((Float((rgbValue & 0x00ff00) >> 8)) / 255.0),
            blue:  CGFloat((Float((rgbValue & 0x0000ff) >> 0)) / 255.0),
            alpha: 1.0)
    }
    
    func updateBackgroundColor() {
        let randomNumber = Int.random(in: 0..<K.RainbowColor.colorHex.count)
        view.backgroundColor = UIColorFromHex(K.RainbowColor.colorHex[randomNumber])
    }
    
    func updateTextContent() {
        let randomNumber = Int.random(in: 0..<K.TextContent.text.count)
        textLabel.text = K.TextContent.text[randomNumber]
    }
    
    @IBAction func addButtonPressed(_ sender: UIButton) {
        updateBackgroundColor()
        updateTextContent()
    }

}

