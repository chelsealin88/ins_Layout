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
        
        let story1 = Story(id: "Your story", avatarName: "image-1")
        let story2 = Story(id: "testing", avatarName: "image-2")
        let story3 = Story(id: "test2", avatarName: "image-6")
        let story4 = Story(id: "test3", avatarName: "image-3")
        let story5 = Story(id: "test4", avatarName: "image-4")
        let story6 = Story(id: "test5", avatarName: "image-5")

        storyDatas.append(story1)
        storyDatas.append(story2)
        storyDatas.append(story3)
        storyDatas.append(story4)
        storyDatas.append(story5)
        storyDatas.append(story6)
        
        return storyDatas
    }
    
    
    static func getUserData() -> [User]{
        
        var users : [User] = []
        
        let userid = ["EXO", "real_pcy", "TestA"]
        
        let describe = ["hello world", "goooooooood!!!!!", "🤟🤟🤟🤟", "EXO❤️"]
        
        let post = ["Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet erat nisl. Maecenas in tempus elit.", "Donec pellentesque vel tellus non dapibus. Nulla convallis orci id mauris placerat sollicitudin. Vivamus luctus tempus metus ac convallis. ", "Donec hendrerit odio in eros cursus posuere. Lorem ipsum dolor sit amet, consectetur adipiscing elit.", "Donec ac finibus metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur ac nisl et nunc pharetra faucibus eget non augue. Duis mollis malesuada mollis. "]
        
        for num in 1...15 {
            let randomID = Int.random(in: userid.indices)
            let randomPost = Int.random(in: post.indices)
            let randomDescribe = Int.random(in: describe.indices)
            let randonNumber = Int.random(in: 10...100)
            
            // fake timelines
            // todo: 區分不同user的timeline
            var timelines = [UserTimeline]()
            
            for num in 1...15 {
                let timeline = UserTimeline(id: userid[randomID], avatarName: "avatar-\(num)", post: post[randomPost], photoName: "image-\(num)")
                timelines.append(timeline)
            }
            
            
            let user = User(avatar: "avatar-\(num)", id: userid[randomID], post: "\(randonNumber)k", followers: "\(randonNumber)M", following: "\(randonNumber)", descirbe: describe[randomDescribe], timeLine: timelines)
           
            users.append(user)
        }
        return users
    }
    
    
    
    
}
