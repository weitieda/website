//
//  File.swift
//  
//
//  Created by Tieda Wei on 2020-03-24.
//

import Foundation

struct SocialMediaItem {
    let urlString: String
    let iconName: String
    var className: String?
    
    static var linkedIn = SocialMediaItem(urlString: "https://www.linkedin.com/in/tieda", iconName: "fab fa-linkedin-in", className: nil)
    
    static var github = SocialMediaItem(urlString: "https://github.com/weitieda", iconName: "fab fa-github", className: "github-icon")
    
    static var email = SocialMediaItem(urlString: "mailto:contact@tiedawei.com", iconName: "far fa-envelope", className: nil)
}
