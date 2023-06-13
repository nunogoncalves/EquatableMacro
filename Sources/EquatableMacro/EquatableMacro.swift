// The Swift Programming Language
// https://docs.swift.org/swift-book

@attached(conformance)
public macro Equatable() = #externalMacro(
    module: "EquatableMacroMacros",
    type: "EquatableMacro"
)
