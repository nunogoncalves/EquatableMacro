import SwiftSyntaxMacros
import SwiftSyntaxMacrosTestSupport
import XCTest
import EquatableMacroMacros

let testMacros: [String: Macro.Type] = [
    "Equatable": EquatableMacro.self,
]

final class EquatableMacroTests: XCTestCase {
    func testMacro() {
        assertMacroExpansion(
            """
            @Equatable____
            class XXX {}
            """,
            expandedSource: """
            """,
            macros: testMacros
        )
    }
}
