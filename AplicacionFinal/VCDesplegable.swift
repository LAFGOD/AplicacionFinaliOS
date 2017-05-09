//
//  VCDesplegable.swift
//  AplicacionFinal
//
//  Created by Eduardo Lafoz Corella on 27/4/17.
//  Copyright © 2017 Eduardo Lafoz Corella. All rights reserved.
//

import UIKit

class VCDesplegable: UIViewController {
    
    @IBOutlet var vistaPrincipal:UIView?
    @IBOutlet var vistaMenu:UIView?


    override func viewDidLoad() {
        super.viewDidLoad()
        
        var marcoPrincipal = self.vistaPrincipal?.frame
        marcoPrincipal?.origin.x = (marcoPrincipal?.size.width)!
        self.vistaMenu?.frame = marcoPrincipal!
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func mostrarMenuLateral(){
        
        
        UIView.animate(withDuration: 0.7, delay: 1.0, options: .curveEaseOut, animations: {
            var marcoMenu = self.vistaMenu?.frame
            marcoMenu?.origin.x = (marcoMenu?.origin.x)!-(marcoMenu?.size.width)!
            self.vistaMenu?.frame = marcoMenu!
            //var basketBottomFrame = self.basketBottom.frame
            //basketBottomFrame.origin.y += basketBottomFrame.size.height
            
            //self.basketTop.frame = basketTopFrame
            //self.basketBottom.frame = basketBottomFrame
        }, completion: { finished in
            //println("Basket doors opened!")
        })
        
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
