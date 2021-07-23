//
//  MeasureViewController.swift
//  clothing_hacked
//
//  Created by Sarah Wattimena on 7/21/21.
//

import UIKit

class MeasureViewController:
    UIViewController {
    var foreverSizes = ["XS", "S", "M", "L", "0x", "1x", "2x"]
    var foreverHips = [34, 36, 40, 44, 47, 49, 51]
    var foreverBust = [32, 35, 37, 39, 43, 45, 47]
    var foreverWaist = [25, 27, 29, 31, 37, 39, 41]

    @IBOutlet weak var measureAppTitle: UILabel!
    
    @IBOutlet weak var measureInstructions: UILabel!
    

    @IBOutlet weak var measureBustLabel: UILabel!
    
    @IBOutlet weak var bustInput: UITextField!
    
    @IBOutlet weak var measureWaistLabel: UILabel!
    

    @IBOutlet weak var waistInput: UITextField!
    
    @IBOutlet weak var measureHipsLabel: UILabel!
    
    @IBOutlet weak var hipsInput: UITextField!
    
    @IBAction func measureSubmitButton(_ sender: Any) {
        let hipsInt:Int!=Int(hipsInput.text!)
        let waistInt:Int!=Int(waistInput.text!)
        let bustInt:Int!=Int(bustInput.text!)
        var largestMeasurement = Int()
        var whichMeasurement = ""

        if hipsInput.text!.isEmpty ||  waistInput.text!.isEmpty || bustInput.text!.isEmpty{
            outputLabel.text = "Please enter values for all textfields before hitting enter."
        }
        else {
            if hipsInt! > bustInt! && hipsInt! > waistInt! {
                largestMeasurement = hipsInt!
                whichMeasurement = "hips"
            }else if bustInt! > hipsInt! && bustInt! > waistInt! {
                largestMeasurement = bustInt
                whichMeasurement = "bust"
            }else if waistInt! > hipsInt! && waistInt! > bustInt!{
                largestMeasurement = waistInt
                whichMeasurement = "waist"
            }
        
            if whichMeasurement == "hips" {
                for i in foreverHips{
                    if largestMeasurement <= i {
                        outputLabel.text = "Forever 21's \(foreverSizes[foreverHips.firstIndex(of: i)!]) size would be bestfor you."
                        break
                    }else if largestMeasurement > foreverHips[foreverHips.count - 1]{
                        outputLabel.text = "Forever 21's sizes are too small for you."
                    }
                }
            }else if whichMeasurement  == "waist" {
                for i in foreverWaist{
                    if largestMeasurement <= i {
                        outputLabel.text = "Forever 21's \(foreverSizes[foreverWaist.firstIndex(of: i)!]) size would be best for you."
                        break
                    }else if largestMeasurement > foreverWaist[foreverWaist.count - 1]{
                        outputLabel.text = "Forever 21's sizes are too small for you."
                    }
                }
            }else if whichMeasurement == "bust"  {
                for i in foreverBust{
                    if largestMeasurement <= i {
                        outputLabel.text = "Forever 21's \(foreverSizes[foreverBust.firstIndex(of: i)!]) would be best for you."
                        break
                    }else if largestMeasurement > foreverBust[foreverBust.count - 1]{
                        outputLabel.text = "Forever 21 doesn't have any  sizes that suit you."
                    }
                }
            }
        }
    }
    
    @IBOutlet weak var outputLabel: UILabel!
    
    
    @IBOutlet weak var measureHomeCircle: UIImageView!
    
    @IBOutlet weak var measureSizingCircle: UIImageView!
    
    @IBOutlet weak var measureShoppingCircle: UIImageView!
    
    @IBOutlet weak var measureHistoryCircle: UIImageView!
    
    @IBAction func measureHomeButton(_ sender: Any) {
    }
    
    @IBAction func measureSizingButton(_ sender: Any) {
    }
    
    @IBAction func measureShoppingButton(_ sender: Any) {
    }
    
    @IBAction func measureHistoryButton(_ sender: Any) {
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
