// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "IGListKit",
    platforms: [ .iOS(.v9),
                 .tvOS(.v9),
                 .macOS(.v10_15),
    ],
    products: [
        .library(name: "IGListDiffKit",
                 type: .static ,
                 targets: ["IGListDiffKit"]),
        .library(name: "IGListKit",
                 type: .static,
                 targets: ["IGListKit"])
    ],
    targets: [
        .target(
            name: "IGListDiffKit",
            path: "spm/Sources/IGListDiffKit"
        ),
        .target(
            name: "IGListKit",
            dependencies: ["IGListDiffKit"],
            path: "spm/Sources/IGListKit"
        ),
    ],
    cLanguageStandard: .c11,
    cxxLanguageStandard: .cxx11
)
