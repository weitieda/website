//
//  File.swift
//  
//
//  Created by Tieda Wei on 2020-03-22.
//

import Foundation
import Publish
import Plot

struct TiedaWebsite: Website {
    enum SectionID: String, WebsiteSectionID {
        case projects
    }

    struct ItemMetadata: WebsiteItemMetadata { }

    var url = URL(string: "www.tiedawei.com")!
    var name = "Tieda Wei"
    var description = "I like to build stuff."
    var language: Language { .english }
    var imagePath: Path? { nil }
    var favicon: Favicon? { Favicon() }
    
    var socialMedia = [SocialMediaItem.email, .github, .linkedIn]
}
