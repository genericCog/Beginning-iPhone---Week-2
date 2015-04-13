//
//  FahrenheitCelsiusCurvesConverterViewController.swift
//  UCISwiftConverter
//
//  Created by justin on 2015/01/13.
//  Copyright (c) 2015年 Justin. All rights reserved.
//
//  Added to homework project 2015-04-09 Adam Cherochak
//

import UIKit

class FCCurvesViewController: UIViewController {
    @IBOutlet weak var graphImageView: UIImageView!
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let imageName = "image_graph.png"
        let image = UIImage (named: imageName)
        let imageView = UIImageView(image: image!)
        
        graphImageView.addSubview(imageView)
}

}
