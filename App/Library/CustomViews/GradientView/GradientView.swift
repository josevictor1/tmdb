//
//  GradientView.swift
//  tmdb
//
//  Created by José Victor Pereira Costa on 21/07/19.
//  Copyright © 2019 José Victor Pereira Costa. All rights reserved.
//

import UIKit

@IBDesignable
open class GradientView: UIView {
    
    @IBInspectable
    open var graditenDirection: GradientDirection = .vertical {
        didSet{
            updateGradientDirection()
        }
    }
    
    @IBInspectable
    open var firstColor: UIColor = .clear {
        didSet {
            updateGradientColor()
        }
    }
    
    @IBInspectable
    open var secondColor: UIColor = UIColor(red: 31/255, green: 33/255, blue: 35/255, alpha: 1) {
        didSet{
            updateGradientColor()
        }
    }
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setUpGradient()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUpGradient()
    }
    
    lazy var gradientLayer: CAGradientLayer = {
        let layer = CAGradientLayer()
        layer.frame = bounds
        return layer
    }()
    
    open func setUpGradient() {
        addGradientAsSublayer()
        updateGradient()
    }
    
    private func addGradientAsSublayer() {
        //gradientLayer.removeFromSuperlayer()
        layer.insertSublayer(gradientLayer, at: 0)
    }
    
    private func updateGradient() {
        updateGradientColor()
        updateGradientDirection()
    }
    
    private func updateGradientColor() {
        gradientLayer.colors = [firstColor.cgColor, secondColor.cgColor]
    }
    
    private func updateGradientDirection() {
        gradientLayer.startPoint = graditenDirection.startPoint
        gradientLayer.endPoint = graditenDirection.endPoint
    }
    
    open override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setUpGradient()
    }
    
    open override func layoutSubviews() {
        super.layoutSubviews()
        setUpGradient()
    }
    
}
