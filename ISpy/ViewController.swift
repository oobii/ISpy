//
//  ViewController.swift
//  ISpy
//
//  Created by martynov on 2018-01-15.
//  Copyright © 2018 martynov. All rights reserved.
//



// Hint: Use Option-drag to zoom in Simulator.

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet var scrollViewOulet: UIScrollView!
    
    @IBOutlet weak var imageViewOutlet: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        // there already scrollViewOulet.addSubview(imageViewOutlet)
        
        imageViewOutlet.image = UIImage(imageLiteralResourceName: "stanford")
        imageViewOutlet.sizeToFit()
        let width = imageViewOutlet.frame.size.width
        let height = imageViewOutlet.frame.size.height
        
        scrollViewOulet.contentSize = CGSize(width: width/2.0, height: height/2.0)
        scrollViewOulet.minimumZoomScale = 0.05
        scrollViewOulet.maximumZoomScale = 3.0
        
        scrollViewOulet.delegate = self
        
        
        //updateZoomFor(size: view.bounds.size)
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageViewOutlet
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
 
    // ??????
    
    func updateZoomFor(size: CGSize) {
        
        let widthScale = size.width / imageViewOutlet.bounds.width
        let heightScale = size.height / imageViewOutlet.bounds.height
        let scale = min(widthScale, heightScale)
        scrollViewOulet.minimumZoomScale = 0.05
        scrollViewOulet.maximumZoomScale = 3.0
        
        
        
        
    }
}

