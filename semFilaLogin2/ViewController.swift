//
//  ViewController.swift
//  semFilaLogIn
//
//  Created by Piero Genovese on 11/23/15.
//  Copyright © 2015 GENiOS. All rights reserved.
//

import UIKit
import Foundation
import CoreData

extension UIView {
    func rotate360Degrees(duration: CFTimeInterval = 1.0, completionDelegate: AnyObject? = nil) {
        let rotateAnimation = CABasicAnimation(keyPath: "transform.rotation")
        rotateAnimation.fromValue = 0.0
        rotateAnimation.toValue = CGFloat(M_PI)*2
        rotateAnimation.duration = duration
        
        if let delegate: AnyObject = completionDelegate {
            rotateAnimation.delegate = delegate
        }
        
        self.layer.addAnimation(rotateAnimation, forKey: nil)
    }
}

class ViewController: UIViewController {
    
    @IBOutlet weak var bgImage: UIImageView!
    
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var signupButton: UIButton!
    @IBOutlet weak var signinButton: UIButton!
    @IBOutlet weak var facebookButton: UIButton!
    
    @IBOutlet weak var orLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.Light)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = bgImage.bounds
        blurEffectView.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
        bgImage.addSubview(blurEffectView)
        
        nameField.alpha = 0.5
        passwordField.alpha = 0.5
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        view.addGestureRecognizer(tap)
        
    }
    
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    
    override func viewWillAppear(animated: Bool) {
        topLabel.center.y -= self.view.bounds.width
        nameField.center.x -= self.view.bounds.width
        passwordField.center.x += self.view.bounds.width
        signupButton.alpha = 0.0
        signinButton.alpha = 0.0
        facebookButton.alpha = 0.0
        orLabel.center.y += self.view.bounds.width
        
        UIView.animateWithDuration(1.0, delay: 0.2, options: [.CurveEaseOut], animations: {
            self.topLabel.center.y += self.view.bounds.width
            }, completion: nil)
        
        UIView.animateWithDuration(1.0, delay: 0.2, options: [.CurveEaseOut], animations: {
            self.nameField.center.x += self.view.bounds.width
            }, completion: nil)
        
        UIView.animateWithDuration(1.0, delay: 0.2, options: [.CurveEaseOut], animations: {
            self.passwordField.center.x -= self.view.bounds.width
            }, completion: nil)
        
        UIView.animateWithDuration(1.0, delay: 0.2, options: [.CurveEaseOut], animations: {
            self.orLabel.center.y -= self.view.bounds.width
            }, completion: nil)
        
        self.orLabel.rotate360Degrees()
        
        UIView.animateWithDuration(1.0, delay: 1.2, options: [.CurveEaseOut], animations: {
            self.signinButton.alpha = 1.0
            }, completion: nil)
        
        UIView.animateWithDuration(1.0, delay: 1.3, options: [.CurveEaseOut], animations: {
            self.signupButton.alpha = 1.0
            }, completion: nil)
        
        UIView.animateWithDuration(1.0, delay: 1.4, options: [.CurveEaseOut], animations: {
            self.facebookButton.alpha = 1.0
            }, completion: nil)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

