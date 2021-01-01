//
//  ViewController.swift
//  changecolor
//
//  Created by TINA on 2021/1/1.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var cityimage: UIImageView!
    @IBOutlet weak var greenslider: UISlider!
    @IBOutlet weak var blueslider: UISlider!
    @IBOutlet weak var alphaslider: UISlider!
    @IBOutlet weak var redslider: UISlider!
    
    @IBOutlet weak var redlabel: UILabel!
    @IBOutlet weak var greenlabel: UILabel!
    @IBOutlet weak var bluelabel: UILabel!
    @IBOutlet weak var alphalabel: UILabel!
    
    @IBOutlet weak var randombutton: UIButton!
    
    @IBOutlet weak var firework: UIImageView!
    
    @IBOutlet weak var fireworkslider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func changecolor(_ sender: UISlider) {
        cityimage.backgroundColor = UIColor(red: CGFloat(redslider.value), green: CGFloat(greenslider.value), blue: CGFloat(blueslider.value), alpha: CGFloat(alphaslider.value))
        redlabel.text = String(format: "%.2f", (redslider.value))
        greenlabel.text=String(format: "%.2f", (greenslider.value))
        bluelabel.text = String(format: "%.2f", (blueslider.value))
        alphalabel.text = String(format: "%.2f", (alphaslider.value))
    }
    
    @IBAction func changeimage(_ sender: UISegmentedControl) {
        if (sender.selectedSegmentIndex == 0) {
            cityimage.image = UIImage(named: "taiwan")
    }
        else if (sender.selectedSegmentIndex == 1) {
            cityimage.image = UIImage(named: "tk")
    }
        else {cityimage.image = UIImage(named: "ny")
    }
        
}
    @IBAction func random(_ sender: UIButton) {
        redslider.value = Float.random(in: 0...1)
        greenslider.value = Float.random(in: 0...1)
        blueslider.value = Float.random(in: 0...1)
        alphaslider.value = Float.random(in: 0...1)
        
        cityimage.backgroundColor = UIColor(red: CGFloat(redslider.value), green: CGFloat(greenslider.value), blue: CGFloat(blueslider.value), alpha: CGFloat(alphaslider.value))
        
        redlabel.text = String(format: "%.2f", (redslider.value))
        greenlabel.text = String(format: "%.2f", (greenslider.value))
        bluelabel.text = String(format: "%.2f", (blueslider.value))
        alphalabel.text = String(format: "%.2f", (alphaslider.value))
    }
    @IBAction func movefirework(_ sender: UISlider) {
        firework.transform = CGAffineTransform.identity.translatedBy(x: CGFloat(fireworkslider.value), y: 20)
    }
}
