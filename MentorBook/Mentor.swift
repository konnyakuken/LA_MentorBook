//
//  Mentor.swift
//  MentorBook
//
//  Created by 若宮拓也 on 2022/08/24.
//

import UIKit

class Mentor{
    
    var name:String!
    var course: String!
    var imageName: String!
    
    //初期化はinit(明示)
    init(name: String, imageName: String, course: String){
        self.name = name
        self.imageName = imageName
        self.course = course
    }
    
    func getImagr() ->UIImage{
        return UIImage(named: imageName)!
    }
}
