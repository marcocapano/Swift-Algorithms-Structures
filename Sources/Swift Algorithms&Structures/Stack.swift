///A stack. LIFO (Last-in first-out) structure.
struct Stack<Element> {
    ///The elements on the stack.
    var elements = [Element]()
    
    ///Pushes an element on the top of the stack.
    mutating func push(_ element: Element) {
        elements.append(element)
    }
    
    ///Retreives the top element on the stack and removes it.
    mutating func pop() -> Element? {
        return elements.popLast()
    }
    
    ///Retrieves the top element on the stack.
    func peek() -> Element? {
        return elements.last
    }
    
    var isEmpty: Bool {
        return elements.isEmpty
    }
    
    var count: Int {
        return elements.count
    }
    
}
