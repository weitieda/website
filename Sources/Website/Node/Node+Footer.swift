//
//  File.swift
//  
//
//  Created by Tieda Wei on 2020-03-22.
//

import Plot
import Foundation

extension Node where Context == HTML.BodyContext {
    static func footer(for site: TiedaWebsite) -> Node {
        let currentYear = Calendar.current.component(.year, from: Date())
        return .div(
            .class("footer"),
            .div(
                .text("© \(currentYear) \(site.name). Written in Swift")
            )
        )
    }
}

