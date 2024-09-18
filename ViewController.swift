//
//  ViewController.swift
//  RetainCycle
//
//  Created by mert palas on 17.09.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var course : WeakCourse2? = WeakCourse2(name: "iOS", url: URL(string:"https://github.com/palasmert")!)
        var instructor : WeakInstructor2? = WeakInstructor2(name: "Mert Palas")
        
        //İkiside strong reference olduğu icin , retain cycle ortaya cıkıyor
        course!.instructor = instructor
        instructor!.course = course
        
        course!.launch(launchedCourse: LaunchedCourse(title: "iOS"))
    
        course = nil
        instructor = nil
    }


}

