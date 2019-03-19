//
//  ViewController.swift
//  2MD
//
//  Created by Students on 17/03/2019.
//  Copyright © 2019 Students. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var trafflight: UIView!
    @IBOutlet var backColor: UIView!
    @IBOutlet weak var getTime: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()
        trafflight.layer.cornerRadius = trafflight.frame.size.width/2
        trafflight.clipsToBounds = true
        trafflight.layer.borderWidth = 4.0
        backColor.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        getTime.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
    }
        var lightsss = false
       var timer = Timer()

    @IBAction func time(_ sender: UIDatePicker) {
        var time: Int = Int(getTime.countDownDuration / 60)
        //New stuff on 22:00-06:00 all traffic lights is blinking orange
        if(time>1320 || time<360){
            backColor.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)
            getTime.backgroundColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
            let mod: Int = time % 2
           if(mod == 1 || mod == 0){
                switch (lightsss) {
                case (true):
                    trafflight.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
                case (false):
                    trafflight.backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
                }
            }
            lightsss = !lightsss
         }
       // if(time>1320 || time<360){
       //         timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: Selector(("updateCounting")), userInfo: nil, repeats: true)
       //     func updateCounting(){
       //         backColor.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)
       //         getTime.backgroundColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
       //         switch (lightsss) {
       //         case (true):
       //             trafflight.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
       //         case (false):
       //             trafflight.backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
       //         }
       //         lightsss = !lightsss
       //     }
       // }

        else if(time<1320 || time>360) {
            backColor.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            getTime.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        time -= 3
        let modulo: Int = time % 7
        if (modulo == 0 || modulo == 1) {
                trafflight.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        } else if (modulo == 2 || modulo == 6) {
                trafflight.backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
        } else if(modulo == 5 || modulo == 4){
                trafflight.backgroundColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
            }
        }
    }
    
}
