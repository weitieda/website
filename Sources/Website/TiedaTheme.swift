//
//  File.swift
//  
//
//  Created by Tieda Wei on 2020-03-22.
//

import Plot
import Publish

extension Theme where Site == TiedaWebsite {
    static var tieda: Self {
        Theme(htmlFactory: TiedaHTMLFactory())
    }
}

struct TiedaHTMLFactory: HTMLFactory {
    func makeIndexHTML(for index: Index, context: PublishingContext<TiedaWebsite>) throws -> HTML {
        HTML(
            .lang(.english),
            .head(for: context.site),
            .body(
                .h1(.text(context.site.name)),
                .p(.text(context.site.description)),
                .div(
                    .class("icons"),
                    .a(
                        .href("mailto:contact@tiedawei.com"),
                        .target(.blank),
                        .i(.class("far fa-envelope fa-social-icons"))
                    ),
                    .a(
                        .class("github-icon"),
                        .href("https://github.com/weitieda"),
                        .target(.blank),
                        .i(.class("fab fa-github fa-social-icons"))
                    ),
                    .a(
                        .href("https://www.linkedin.com/in/tieda"),
                        .target(.blank),
                        .i(.class("fab fa-linkedin-in fa-social-icons"))
                    )
                ),
                .footer(for: context.site)
            )
        )
    }
    
    func makeSectionHTML(for section: Section<TiedaWebsite>, context: PublishingContext<TiedaWebsite>) throws -> HTML {
        HTML()
    }
    
    func makeItemHTML(for item: Item<TiedaWebsite>, context: PublishingContext<TiedaWebsite>) throws -> HTML {
        HTML()
    }
    
    func makePageHTML(for page: Page, context: PublishingContext<TiedaWebsite>) throws -> HTML {
        HTML()
    }
    
    func makeTagListHTML(for page: TagListPage, context: PublishingContext<TiedaWebsite>) throws -> HTML? {
        HTML()
    }
    
    func makeTagDetailsHTML(for page: TagDetailsPage, context: PublishingContext<TiedaWebsite>) throws -> HTML? {
        HTML()
    }
}
