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
                 type: .dynamic, 
                 targets: ["IGListDiffKit"]),
        .library(name: "IGListKit",
                 type: .dynamic,
                 targets: ["IGListKit"]),
        .library(name: "IGListSwiftKit",
                 type: .dynamic,
                 targets: ["IGListSwiftKit"]),
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
        .target(
            name: "IGListSwiftKit",
            dependencies: ["IGListKit"],
            path: "Source/IGListSwiftKit"
        ),
    ],
    cLanguageStandard: .c11,
    cxxLanguageStandard: .cxx11
)
