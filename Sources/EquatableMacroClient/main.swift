import EquatableMacro

@Equatable
struct SomeStruct { }

let a = SomeStruct()
let b = SomeStruct()

print(a == b)
