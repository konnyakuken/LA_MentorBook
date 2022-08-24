//
//  ViewController.swift
//  MentorBook
//
//  Created by 若宮拓也 on 2022/08/24.
//

import UIKit

class ViewController: UIViewController {
    var menterArray:[Mentor] = []
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var courseLabel: UILabel!
    
    var index: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        menterArray.append(Mentor(name: "ながた", imageName: "nagata.jpg", course: "iPhone"))
        menterArray.append(Mentor(name: "りょう", imageName: "ryo.jpg", course: "Unity"))
        menterArray.append(Mentor(name: "たいてぃ", imageName: "taithi.jpg", course: "WebS,WebD"))
        
        setUI()
    }
    
    func setUI(){
        imageView.image = menterArray[index].getImagr()
        nameLabel.text = menterArray[index].name
        courseLabel.text = menterArray[index].course
    }
    
    @IBAction func mae(){
        if(index == 0){
            index = 2
        }else{
            index -= 1
        }
        
        setUI()
    }
    
    @IBAction func tugi(){
        if(index == 2){
            index = 0
        }else{
            index += 1
        }
        setUI()
    }


}

