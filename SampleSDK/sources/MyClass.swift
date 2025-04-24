//
//  MyClass.swift
//  SampleSDK
//
//  Created by Suman Chatterjee on 24/04/25.
//

import Foundation

// This is a dummy class to demonstrate how to create a basic class within a Swift framework.
// You can use this as a starting point and add more complex functionality as needed.

public class MyDummyClass {

    // MARK: - Properties

    /// A sample string property.
    public var sampleProperty: String

    // MARK: - Initializers

    /// Initializes a new instance of `MyDummyClass`.
    /// - Parameter sampleProperty: The initial value for the `sampleProperty`.
    public init(sampleProperty: String) {
        self.sampleProperty = sampleProperty
    }

    /// A convenience initializer with a default value for `sampleProperty`.
    public convenience init() {
        self.init(sampleProperty: "Hello, Framework!")
    }

    // MARK: - Methods

    /// A sample method that performs a simple task and returns a string.
    /// - Parameter input: A string to be included in the output.
    /// - Returns: A string that includes the input and the sample property.
    public func doSomething(with input: String) -> String {
        return "Input was: \(input), and sampleProperty is: \(sampleProperty)"
    }

    /// Another sample method that prints a message to the console.  Useful for debugging.
    /// This method demonstrates using private helper methods.
    public func printMessage() {
        let message = privateHelperMethod()
        print(message)
    }

    // MARK: - Private Methods

    /// A private helper method that generates a message.
    private func privateHelperMethod() -> String {
        return "This is a message from a private method within MyDummyClass."
    }

     // MARK: - Class Methods

     /// A sample class method (static method) that returns a pre-defined message.
     /// - Returns: A string that is a class level message
     public static func classMethodExample() -> String{
        return "This is a class method example"
     }

    // MARK: - Example of using an enum
    /// Example enum to be used within the class
    public enum ExampleEnum : String{
        case firstCase = "First Case"
        case secondCase = "Second Case"
        case thirdCase = "Third Case"

        /// Example function within the enum
        func enumFunction() -> String{
            switch self{
                case .firstCase:
                    return "Handling First Case"
                case .secondCase:
                    return "Handling Second Case"
                case .thirdCase:
                    return "Handling Third Case"
            }
        }
    }

    /// Example of a function using the enum
    public func enumExample(input: ExampleEnum) -> String{
        return "The enum value is \(input.rawValue) and the function output is \(input.enumFunction())"
    }
}
