//
//  ViewController.swift
//  AnimateDrawCircle
//
//  Created by Queenie Peng on 11/7/17.
//  Copyright © 2017 Queenie Peng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var circleView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        addCircleView()
    }

    func addCircleView() {
        let circleWidth = CGFloat(200)
        let circleHeight = circleWidth
        
        // Create a new CircleView
        // 建立圆形
        let circle = CircleView(frame: CGRect(x: 0,y: 0,
                                              width: circleWidth,
                                              height: circleHeight))
        circleView.addSubview(circle)
        
        // Animate duration:
        // 动画时长： > 1s
        // from: 0 (no circle) to 1 (full circle)
        // 从：零圆 到 整圆 0 - 1

        circle.animateCircle(duration: 30.0, from: 0)
    }
}

