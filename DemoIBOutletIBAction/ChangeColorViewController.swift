//
//  ChangeColorViewController.swift
//  DemoIBOutletIBAction
//
//  Created by Chao Shin on 27/03/2018.
//  Copyright © 2018 Chao Shin. All rights reserved.
//

import UIKit

class ChangeColorViewController: UIViewController {
    @IBOutlet weak var changeColorImageView: UIImageView!
    
    @IBOutlet weak var redSlider: UISlider!
    

    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var redValueLabel: UILabel!
    
    @IBOutlet weak var greenValueLabel: UILabel!
    
    @IBOutlet weak var blueValueLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func colorSliderChange(_ sender: Any) {
/* 方法一（改變Image View的Background的顏色）：
        changeColorImageView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1) // 更改ImageView的Background Color，需注意UIColor的RGB設定需要是CGFloat型別，而Slider的Value是Float，所以需要轉換。
 */
        
// 方法二（改變View的Background顏色）：
        backgroundView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
        
        redValueLabel.text = "\(Int(redSlider.value * 255))"    // Slider的Value為0到1的Float，而RGB的範圍為0-255，所以先乘255，然後轉型Int，但是Label的Text為String，所以再轉一次為String
        greenValueLabel.text = "\(Int(greenSlider.value * 255))"
        blueValueLabel.text = "\(Int(blueSlider.value * 255))"
 }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
