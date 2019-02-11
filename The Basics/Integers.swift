//
//  Integers.swift
//  
//
//  Created by Tyler P Admin on 2/11/19.
//

import Foundation
import UIKit

/*
 Integers are whole numbers with no fractional component, such as 42 and -23. Integers are either signed (positive, zero, or negative) or unsigned (positive or zero).
 Swift provides signed and unsigned integers in 8, 16, 32, and 64 bit forms. These integers follow a naming convention similar to C, in that an 8-bit unsigned integer is of type UInt8, and a 32-bit signed integer is of type Int32. Like all types in Swift, these integer types have capitalized names.
 */

let minValue = UInt8.min // minValue is equal to 0, and is of type UInt8
let maxValue = UInt8.max // maxValue is equal to 255, and is of type UInt8

//You can also declare a value of type Int
let oddNumber: Int = 3
var evenNumber: Int = 6
evenNumber = 2

//or

var randomNumber: Int
randomNumber = 35

//Both work well, but I prefer the first option

/*
 In most cases, you don’t need to pick a specific size of integer to use in your code.
 Swift provides an additional integer type, Int, which has the same size as the current platform’s native word size:
 On a 32-bit platform, Int is the same size as Int32.
 On a 64-bit platform, Int is the same size as Int64.

 Unless you need to work with a specific size of integer, always use Int for integer values in your code.
 This aids code consistency and interoperability.
 Even on 32-bit platforms, Int can store any value between -2,147,483,648 and 2,147,483,647, and is large enough for many integer ranges.
*/

/*
 Floating-Point Numbers

 Floating-point numbers are numbers with a fractional component, such as 3.14159, 0.1, and -273.15.

 Floating-point types can represent a much wider range of values than integer types, and can store numbers that are much larger or smaller than can be stored in an Int. Swift provides two signed floating-point number types:

 Double represents a 64-bit floating-point number.
 Float represents a 32-bit floating-point number.
*/

/*
 Type Safety and Type Inference

 Swift is a type-safe language. A type safe language encourages you to be clear about the types of values your code can work with. If part of your code requires a String, you can’t pass it an Int by mistake.

 Because Swift is type safe, it performs type checks when compiling your code and flags any mismatched types as errors. This enables you to catch and fix errors as early as possible in the development process.

 Type-checking helps you avoid errors when you’re working with different types of values. However, this doesn’t mean that you have to specify the type of every constant and variable that you declare. If you don’t specify the type of value you need, Swift uses type inference to work out the appropriate type. Type inference enables a compiler to deduce the type of a particular expression automatically when it compiles your code, simply by examining the values you provide.

 Because of type inference, Swift requires far fewer type declarations than languages such as C or Objective-C.
 Constants and variables are still explicitly typed, but much of the work of specifying their type is done for you.
 Type inference is particularly useful when you declare a constant or variable with an initial value.
 This is often done by assigning a literal value (or literal) to the constant or variable at the point that you declare it.
 (A literal value is a value that appears directly in your source code, such as 42 and 3.14159 in the examples below.)

 For example, if you assign a literal value of 42 to a new constant without saying what type it is, Swift infers that you want the constant to be an Int, because you have initialized it with a number that looks like an integer.
 */

let meaningOfLife = 42
// meaningOfLife is inferred to be of type Int

//Likewise, if you don't specify a type for a floating-point literal, Swift infers that you want to create a Double.
let pi = 3.14159
// pi is inferred to be of type Double

/*
 Swift always chooses Double (rather than Float) when inferring the type of floating-point numbers.
 If you combine integer and floating-point literals in an expression, a type of Double will be inferred from the context.
*/

let anotherPi = 3 + 0.14159
// anotherPi is also inferred to be of type Double

/*
The literal value of 3 has no explicit type in and of itself, and so an appropriate output type of Double is inferred from the presence of a floating-point literal as part of the addition.
*/


 let meaningOfLife = 42
 // meaningOfLife is inferred to be of type Int

/*
 Likewise, if you don’t specify a type for a floating-point literal, Swift infers that you want to create a Double:
*/

 let pi = 3.14159
 // pi is inferred to be of type Double

 /*
 Swift always chooses Double (rather than Float) when inferring the type of floating-point numbers.

 If you combine integer and floating-point literals in an expression, a type of Double will be inferred from the context:
 */

 let anotherPi = 3 + 0.14159
 // anotherPi is also inferred to be of type Double

/*
 The literal value of 3 has no explicit type in and of itself, and so an appropriate output type of Double is inferred from the presence of a floating-point literal as part of the addition.
*/

/*
 Numeric Literals

 Integer literals can be written as:
 A decimal number, with no prefix
 A binary number, with a 0b prefix
 An octal number, with a 0o prefix
 A hexadecimal number, with a 0x prefix
 All of these integer literals have a decimal value of 17:
*/

let decimalInteger = 17
let binaryInteger = 0b1001      //17 in binary notation
let octalInteger = 0o21         //17 in octal notation
let hexadecimalInteger = 0x11   //17 in hexadecimal notation

/*
 Floating-point literals can be decimal (with no prefix), or hexadecimal (with a 0x prefix). They must always have a number (or hexadecimal number) on both sides of the decimal point. Decimal floats can also have an optional exponent, indicated by an uppercase or lowercase e; hexadecimal floats must have an exponent, indicated by an uppercase or lowercase p.

 For decimal numbers with an exponent of exp, the base number is multiplied by 10exp:
 1.25e2 means 1.25 x 102, or 125.0.
 1.25e-2 means 1.25 x 10-2, or 0.0125.

 For hexadecimal numbers with an exponent of exp, the base number is multiplied by 2exp:
 0xFp2 means 15 x 22, or 60.0.
 0xFp-2 means 15 x 2-2, or 3.75.

 All of these floating-point literals have a decimal value of 12.1875:
 */

let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0

/*
 Numeric literals can contain extra formatting to make them easier to read.
 Both integers and floats can be padded with extra zeros and can contain underscores to help with readability.
 Neither type of formatting affects the underlying value of the literal:
 */

let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000_1

/*
 Numeric Type Conversion

 “Use the Int type for all general-purpose integer constants and variables in your code, even if they’re known to be nonnegative.
 Using the default integer type in everyday situations means that integer constants and variables are immediately interoperable in your code and will match the inferred type for integer literal values.

 Use other integer types only when they’re specifically needed for the task at hand, because of explicitly sized data from an external source, or for performance, memory usage, or other necessary optimization.
 Using explicitly sized types in these situations helps to catch any accidental value overflows and implicitly documents the nature of the data being used.
*/

/*
 Integer Conversions

 The range of numbers that can be stored in an integer constant or variable is different for each numeric type.
 An Int8 constant or variable can store numbers between -128 and 127, whereas a UInt8 constant or variable can store numbers between 0 and 255.
 A number that won’t fit into a constant or variable of a sized integer type is reported as an error when your code is compiled:
 */

let cannotBeNegative = UInt8 = -1
// UInt8 cannot store negative numbers, and so this will report an error

let tooBig: Int8 = Int8.max + 1
// Int8 cannot store a number larger than it's maximum value, and so this will also report an error

/*
 Because each numeric type can store a different range of values, you must opt in to numeric type conversion on a case-by-case basis.
 This opt-in approach prevents hidden conversion errors and helps make type conversion intentions explicit in your code.

 To convert one specific number type to another, you initialize a new number of the desired type with the existing value.
 In the example below, the constant twoThousand is of type UInt16, whereas the constant one is of type UInt8.
 They can’t be added together directly, because they’re not of the same type. Instead, this example calls UInt16(one) to create a new UInt16 initialized with the value of one, and uses this value in place of the original:
 */

let twoThousand: UInt8 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)

/*
 Because both sides of the addition are now of type UInt16, the addition is allowed. The output constant (twoThousandAndOne) is inferred to be of type UInt16, because it’s the sum of two UInt16 values.
 SomeType(ofInitialValue) is the default way to call the initializer of a Swift type and pass in an initial value. Behind the scenes, UInt16 has an initializer that accepts a UInt8 value, and so this initializer is used to make a new UInt16 from an existing UInt8.
 You can’t pass in any type here, however—it has to be a type for which UInt16 provides an initializer.
 Extending existing types to provide initializers that accept new types (including your own type definitions) is covered in Extensions.
 */

/*
 Integer and Floating-Point Conversion

 Conversions between integer and floating-point numeric types must be made explicit:
*/

let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi = Double(three) + pointOneFourOneFiveNine
// pi equals 3.14159, and is inferred to be of type Double

/*
 Here, the value of the constant three is used to create a new value of type Double, so that both sides of the addition are of the same type. Without this conversion in place, the addition would not be allowed.

Floating-point to integer conversion must also be made explicit. An integer type can be initialized with a Double or Float value:
*/

let integerPi = Int(pi)
// integerPi equals 3, and is inferred to be of type Int

/*
 Floating-point values are always truncated when used to initialize a new integer value in this way.
 This means that 4.75 becomes 4, and -3.9 becomes -3.
*/

