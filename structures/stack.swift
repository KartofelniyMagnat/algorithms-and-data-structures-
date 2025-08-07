struct Stack {
    private var items: [String] = []
    func peek() -> String { // без mutating так как не изменяем массив
        guard let firstItem = items.first else { // безопасно извлекаем firstItem в случае если он nil
            fatalError("the stack is empty")
        }
        return firstItem
    }
    mutating func pop(){
        items.removeFirst()
    }
    mutating func push(_ data: String) {
        items.insert(data, at: 0)
    }
    func printStack (){
        for i in 0..<items.count{
            print("\(items[i])", terminator: " -> ")
        }
    }
}
var newStack = Stack()
newStack.push("10")
newStack.push("30")
newStack.push("50")
newStack.pop()

newStack.printStack()