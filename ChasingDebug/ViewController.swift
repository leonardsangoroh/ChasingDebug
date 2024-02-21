//
//  ViewController.swift
//  ChasingDebug
//
//  Created by Lee Sangoroh on 21/02/2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("I am inside the viewDidLoad method")
        
        ///variadic functions
        ///separator - provide string that should be placed btw every item in the print() call
        ///terminator - what should be placed after the end item (default is \n)
        print(1,2,3,4,5, separator: "-", terminator: "\n")
        
        /// using assertions
        /// running your code in strict mode
        /// will force app to crash when a certain condition is not met
        /// only happen when debugging and aren't carried to production
        assert(myReallySlowMethod() == true, "The slow method returned false, which is a bad thing!")
        
        ///breakpoints
        ///per line - (fn + F^)
        ///continue (until you hit another breakpoint) - (Ctrl + Cmnd + Y)
        for i in 1...100 {
            print("Got number \(i)")
        }
    }
    
    func myReallySlowMethod()->Bool{
        return true
    }


}

