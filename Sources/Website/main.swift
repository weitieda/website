import Foundation
import Publish
import Plot

try TiedaWebsite().publish(
    withTheme: .tieda,
    additionalSteps: [.deploy(using: .gitHub("weitieda/website", useSSH: false))]
)
