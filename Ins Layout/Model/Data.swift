//
//  Data.swift
//  Ins Layout
//
//  Created by Chelsea Lin on 2019/6/22.
//  Copyright © 2019 chelsea lin. All rights reserved.
//

import Foundation


class Data {
    
    static var stories = [Story]()
    
}


class GetData {
    
    static func getStory() -> [Story] {
        
        var storyDatas : [Story] = []
        
        let story1 = Story(id: "Your story", avatarName: "a")
        let story2 = Story(id: "testing", avatarName: "b")
        
        storyDatas.append(story1)
        storyDatas.append(story2)
        
        return storyDatas
    }
    
}
