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
                    .forEach(context.site.socialMedia, {
                        .a(
                            .href($0.urlString),
                            .target(.blank),
                            .i(.class("\($0.iconName) fa-social-icons")),
                            .class($0.className ?? "")
                        )
                    })
                ),
                .div(
                    .class("my-works"),
                    .a(
                        .class("my-works-a"),
                        .target(.blank),
                        .href("https://github.com/weitieda/project-demo"),
//                        .href(context.site.path(for: .projects)),
                        .text("View My Projects")
                    ),
                    .i(.class("fas fa-chevron-right"))
                ),
                .footer(for: context.site)
            )
        )
    }
    
    func makeSectionHTML(for section: Section<TiedaWebsite>, context: PublishingContext<TiedaWebsite>) throws -> HTML {
        HTML(
            .lang(.english),
            .projectHead(for: context.site),
            .if(section.id == .projects,
                .body(
                    .div(
                        .h1("My Projects")
                    )
                )
            )
        )
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

