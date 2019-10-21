//
//  ScoreViewController.swift
//  SingletonClass0828
//
//  Created by Robert on 2019/8/30.
//  Copyright © 2019 ios1. All rights reserved.
//

import UIKit

class ScoreViewController: UIViewController {
    @IBOutlet var backgroundImageView:UIImageView!;
    @IBOutlet var containerView:UIView!;
    @IBOutlet var cityImageView:UIImageView!;
    @IBOutlet var askLabel:UILabel!;
    var city:City!;
    var passBack:((String) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = city.cityName;        
        let blurEffect = UIBlurEffect(style: .dark);
        let blureEffectView = UIVisualEffectView(effect: blurEffect)
        blureEffectView.frame = view.frame;
        backgroundImageView.image = UIImage(named: city.image);
        view.insertSubview(blureEffectView, aboveSubview: backgroundImageView)
        containerView.transform = CGAffineTransform(scaleX: 0, y: 0);
        cityImageView.image = UIImage(named: city.image)
        askLabel.text = "您曾經來過這裏嗎?\n給這個城市一個描素吧!"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 0.3){
            self.containerView.transform = CGAffineTransform.identity;
        }
    }
    
    @IBAction func userClick(_ sender:UIButton){
        switch sender.tag{
        case 101:
            passBack!("科技");
        case 102:
            passBack!("人文");
        case 103:
            passBack!("鄉野");
        default:
            break;
        }
        
        
    }

    
}
