import SwiftCompilerPlugin
import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros

public struct EquatableMacro: ConformanceMacro {

    public static func expansion(
        of node: AttributeSyntax,
        providingConformancesOf decl: some DeclGroupSyntax,
        in context: some MacroExpansionContext
    ) throws -> [(TypeSyntax, GenericWhereClauseSyntax?)] {
        let protocolName: TypeSyntax = "Equatable"
        return [(protocolName, nil)]
    }
}

@main
struct EquatableMacroPlugin: CompilerPlugin {
    let providingMacros: [Macro.Type] = [
        EquatableMacro.self,
    ]
}
