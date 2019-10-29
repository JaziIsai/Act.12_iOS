//
//  ViewController.swift
//  GestoAnimacion
//
//  Created by alicharlie on 11/05/16.
//  Copyright © 2016 codepix. All rights reserved.
//

import UIKit
class ViewController: UIViewController {

    @IBOutlet weak var tipoGesto: UILabel!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        let gestoTap = UITapGestureRecognizer(target: self, action:#selector(accionGesto(_:)))
        
        let gestoSwipe = UISwipeGestureRecognizer(target: self, action:#selector(accionGesto(_:)))
        
        self.view.addGestureRecognizer(gestoTap)
        self.view.addGestureRecognizer(gestoSwipe)
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)

    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tipoGesto.alpha = 0.0
    }
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func animacion(){
        UIView.animateWithDuration( 3, delay: 0.2, options: [], animations: {
            self.tipoGesto.alpha = 1.0
        }, completion: { _ in
            self.tipoGesto.alpha = 0.0
        })
    }
    
    func accionGesto(sender: UIGestureRecognizer){
        if sender.isKind(of:UITapGestureRecognizer){
            tipoGesto.text = "Tap"
        }
        if sender.isKind(of:UISwipeGestureRecognizer){
            tipoGesto.text = "Swipe"
        }
        animacion()
    }
}
