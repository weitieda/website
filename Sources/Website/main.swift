import Foundation
import Publish
import Plot
import CNAMEPublishPlugin

try TiedaWebsite().publish(
    withTheme: .tieda,
    additionalSteps: [
        .installPlugin(.generateCNAME(with: "tiedawei.com")),
        .deploy(using: .gitHub("weitieda/website", useSSH: false))
    ]
)
