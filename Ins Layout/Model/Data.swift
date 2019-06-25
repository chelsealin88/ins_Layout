//
//  Data.swift
//  Ins Layout
//
//  Created by Chelsea Lin on 2019/6/22.
//  Copyright © 2019 chelsea lin. All rights reserved.
//

import Foundation


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
    
    static func getTimeline() -> [TimeLine] {
        
        var timelines : [TimeLine] = []
        
        let post1 = TimeLine(id: "Testing", avatarName: "a", post: "Lorem ipsum dolor sit amet, viderer recusabo mediocrem in eum, dicunt possim mollis ad has. In mel nostrud saperet, ei.", photoName: "b")
        let post2 = TimeLine(id: "TestABC", avatarName: "d", post: "Lorem ipsum dolor sit amet, viderer recusabo mediocrem in eum, dicunt possim mollis ad has. In mel nostrud saperet, ei.Lorem ipsum dolor sit amet, viderer recusabo mediocrem in eum, dicunt possim mollis ad has. In mel nostrud saperet, ei.", photoName: "e")
        let post3 = TimeLine(id: "AAA111", avatarName: "f", post: "Lorem ipsum dolor sit amet, viderer recusabo mediocrem in eum, dicunt possim mollis ad has. In mel nostrud saperet, ei.Lorem", photoName: "g")
        let post4 = TimeLine(id: "BBBCCC", avatarName: "h", post: "dicunt possim mollis ad has. In mel nostrud saperet, ei.Lorem", photoName: "i")
        let post5 = TimeLine(id: "DD123", avatarName: "j", post: "mel nostrud saperet, ei.Loremmel nostrud saperet, ei.Loremmel nostrud saperet, ei.Lorem", photoName: "k")
        let post6 = TimeLine(id: "Testxxx", avatarName: "l", post: "ad has. In mel nostrud saperet, ei.Lorem ipsum dolor sit amet, viderer recusabo mediocrem in eum, dicunt possim mollis ad has.", photoName: "m")
        
    
        
        timelines.append(post1)
        timelines.append(post2)
        timelines.append(post3)
        timelines.append(post4)
        timelines.append(post5)
        timelines.append(post6)
    
        
        return timelines
    }
    
    
}
