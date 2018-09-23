import XCTest
@testable import Swift_Algorithms_Structures

class StackTests: XCTestCase {
    
    func testEmptyInit() {
        let stack = Stack<Int>()
        XCTAssertEqual(stack.elements, [])
    }
    
    func testInitWithInitialValues() {
        let initialValues = [-12, 8, 7, 120]
        let stack = Stack(elements: initialValues)
        XCTAssertEqual(stack.elements, initialValues)
    }
    
    func testPush() {
        var stack = Stack<Int>()
        XCTAssertEqual(stack.count, 0)
        
        let element = 3
        stack.push(element)
        
        XCTAssertEqual(stack.elements, [element])
    }
    
    func testPop() {
        var stack = Stack(elements: [0x000001, 0x00002A])
        
        let poppedElement = stack.pop()
        
        XCTAssertEqual(stack.elements, [0x000001])
        XCTAssertEqual(poppedElement, 0x00002A)
    }
    
    func testPopLastElement() {
        var stack = Stack(elements: [0x000001])
        
        let poppedElement = stack.pop()
        
        XCTAssertTrue(stack.isEmpty)
        XCTAssertEqual(poppedElement, 0x000001)
    }
    
    func testPopOnEmptyStack() {
        var stack = Stack(elements: [])
        
        let poppedElement = stack.pop()
        XCTAssertNil(poppedElement)
    }
    
    func testPeek() {
        let stack = Stack(elements: ["Hello","Stack"])
        XCTAssertEqual(stack.count, 2)
        
        let peek = stack.peek()
        
        XCTAssertEqual(stack.count, 2)
        XCTAssertEqual(peek, "Stack")
    }
    
    func testPeekEmptyStack() {
        let stack = Stack<Int>()
        let peek = stack.peek()
        
        XCTAssertNil(peek)
    }
    
    func testCount() {
        let stack = Stack<Int>(elements: [1,2,3,4,12])
        XCTAssertEqual(stack.count, 5)
    }

    static var allTests = [
        ("testEmptyInit", testEmptyInit),
        ("testInitWithInitialValues", testInitWithInitialValues),
        ("testPush", testPush),
        ("testPop", testPop),
        ("testPopLastElement", testPopLastElement),
        ("testPopOnEmptyStack", testPopOnEmptyStack),
        ("testPeek", testPeek),
        ("testPeekEmptyStack", testPeekEmptyStack),
        ("testCount", testCount)
    ]
}
