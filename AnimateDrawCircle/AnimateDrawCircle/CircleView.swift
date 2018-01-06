//
//  CircleView.swift
//  AnimateDrawCircle
//
//  Created by Queenie Peng on 11/7/17.
//  Copyright © 2017 Queenie Peng. All rights reserved.
//

import UIKit

final class CircleView: UIView {
    
    var circleLayer: CAShapeLayer!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.black
        // create circle path rules
        // 创造画圆规则
        let circlePath = UIBezierPath(arcCenter: CGPoint(
                                      x: frame.size.width / 2.0,
                                      y: frame.size.height / 2.0),
                                      radius: (frame.size.width - 10)/2,
                                      startAngle: CGFloat(-Double.pi / 2),
                                      endAngle: CGFloat((.pi * 2.0) - Double.pi / 2),
                                      clockwise: true)
        circleLayer = CAShapeLayer()
        circleLayer.path = circlePath.cgPath
        circleLayer.fillColor = UIColor.gray.cgColor
        circleLayer.strokeColor = UIColor.yellow.cgColor
        circleLayer.lineWidth = 5.0;
        
        circleLayer.strokeEnd = 0 // init value
        layer.addSublayer(circleLayer)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func animateCircle(duration: TimeInterval, from percentage: Double) {

        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.duration = duration
        animation.fromValue = percentage  // Animate from 0 (no circle) to 1 (full circle)
        animation.toValue = 1
        animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
        circleLayer.strokeEnd = 1.0
        
        circleLayer.add(animation, forKey: "animateCircle")
    }
}
