import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct TiedaWebsite: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case posts
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://tiedawei.com")!
    var name = "Tieda Wei"
    var description = "hi"
    var language: Language { .english }
    var imagePath: Path? { nil }
}

// This will generate your website using the built-in Foundation theme:
try TiedaWebsite().publish(
    withTheme: .foundation,
    additionalSteps: [.deploy(using: .gitHub("weitieda/website", useSSH: false))]
)
