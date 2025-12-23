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
    static var youtube = SocialMediaItem(urlString: "https://www.youtube.com/channel/UC_k166vBPbUmyflrHuoP_3w", iconName: "fab fa-youtube", className: "ytb-icon")
    static var instagram = SocialMediaItem(urlString: "https://www.instagram.com/twei3", iconName: "fab fa-instagram", className: "ytb-icon")
}
