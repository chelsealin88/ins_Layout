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
        let story3 = Story(id: "test2", avatarName: "c")
        let story4 = Story(id: "test3", avatarName: "d")
        let story5 = Story(id: "test4", avatarName: "e")
        let story6 = Story(id: "test5", avatarName: "f")

        storyDatas.append(story1)
        storyDatas.append(story2)
        storyDatas.append(story3)
        storyDatas.append(story4)
        storyDatas.append(story5)
        storyDatas.append(story6)


        
        
        
        return storyDatas
    }
    
    
}
