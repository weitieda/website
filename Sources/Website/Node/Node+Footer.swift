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
        return .footer(
            .class("footer"),
            .div(
                .text("© \(currentYear) \(site.name). Written in Swift")
            ),
            .script(.src(URL(string: "https://www.gstatic.com/firebasejs/7.12.0/firebase-app.js")!)),
            .script(.src(URL(string: "https://www.gstatic.com/firebasejs/7.12.0/firebase-analytics.js")!)),
            .script("""
                   var firebaseConfig = {
                     apiKey: "AIzaSyCM38prEWEDWkuumMhe6w0hFQgJlfDCNVM",
                     authDomain: "tieda-website.firebaseapp.com",
                     databaseURL: "https://tieda-website.firebaseio.com",
                     projectId: "tieda-website",
                     storageBucket: "tieda-website.appspot.com",
                     messagingSenderId: "298663877799",
                     appId: "1:298663877799:web:f8ed579a054f34ac364f82",
                     measurementId: "G-LYQM6ZC04H"
                   };
                   // Initialize Firebase
                   firebase.initializeApp(firebaseConfig);
                   firebase.analytics();
                """)
        )
    }
}
