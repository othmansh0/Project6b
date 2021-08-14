//
//  ViewController.swift
//  Project6b
//
//  Created by othman shahrouri on 8/12/21.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label1 = UILabel()
        label1.translatesAutoresizingMaskIntoConstraints = false //Removes default constraints
        label1.backgroundColor = UIColor.red
        label1.text = "THESE"
        label1.sizeToFit()
        
        let label2 = UILabel()
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.backgroundColor = UIColor.cyan
        label2.text = "ARE"
        label2.sizeToFit()
        
        let label3 = UILabel()
        label3.translatesAutoresizingMaskIntoConstraints = false
        label3.backgroundColor = UIColor.yellow
        label3.text = "SOME"
        label3.sizeToFit()
        
        let label4 = UILabel()
        label4.translatesAutoresizingMaskIntoConstraints = false
        label4.backgroundColor = UIColor.green
        label4.text = "AWESOME"
        label4.sizeToFit()
        
        let label5 = UILabel()
        label5.translatesAutoresizingMaskIntoConstraints = false
        label5.backgroundColor = UIColor.orange
        label5.text = "LABELS"
        label5.sizeToFit()
        
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(label3)
        view.addSubview(label4)
        view.addSubview(label5)
        
        
//        // we need to create a dictionary of the views we want to lay out
//        let viewsDictionary = ["label1": label1, "label2": label2, "label3": label3, "label4": label4 , "label5": label5]
//
//        //view.addConstraints():  adds an array of constraints to our view controller's view.
//       // NSLayoutConstraint.constraints(withVisualFormat:) Auto Layout method  converts VFL into an array of constraints
//
//        for label in viewsDictionary.keys {
//            view.addConstraints( NSLayoutConstraint.constraints(withVisualFormat: "H:|[\(label)]|", options: [], metrics: nil, views: viewsDictionary))
//            //H means horizontal, | means edge of view
//        }
//
//        //v for vertial, - space by default 10 points ,
//        //our vertical VFL doesn't have a pipe at the end
//        //we're not forcing the last label to stretch all the way to the edge
//        //This will leave whitespace after the last label
//
//        //when specifying the size of a space, you need to use the - before and after the size -(>=10)-
//
//        //constraints are evaluated from highest priority down to lowest
//        //1000 required anything less optional
//        //tell Auto Layout that we want all the labels to have the same height. This is important, because if all of them have optional heights using labelHeight, Auto Layout might solve the layout by shrinking one label and making another 88
//        //making them have same height (label1)
//        let metrics = ["labelHeight": 88]
//
//        view.addConstraints( NSLayoutConstraint.constraints(withVisualFormat: "V:|[label1(labelHeight@999)]-[label2(label1)]-[label3(label1)]-[label4(label1)]-[label5(label1)]-(>=10)-|", options: [], metrics: metrics, views: viewsDictionary))

        
        
        var previous: UILabel?

        for label in [label1, label2, label3, label4, label5] {
            label.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
            label.heightAnchor.constraint(equalToConstant: 88).isActive = true

            if let previous = previous {
                // we have a previous label – create a height constraint
                //combines a different anchor with a constant value (10) to get spacing between the views
                label.topAnchor.constraint(equalTo: previous.bottomAnchor, constant: 10).isActive = true
            }
            else {
                // this is the first label
                label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
            }

            // set the previous label to be the current one, for the next loop iteration
            previous = label
        }
        
    }
    
    
}

