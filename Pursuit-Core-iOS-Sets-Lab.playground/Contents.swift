import UIKit

// Uncomment the "assert" lines for each problem when you have a solution, and run the playground to test.  When you have uncommented out the assert lines, no error messages or print statements means that your code is working correctly.

// Question One

// Create a new array numbersWithNoDuplicates that has all of the elements from numbers without any duplicates.  It should be in the same order as the original.
/*
let numbers = [1,1,2,4,4,4,6,6,7,8]

//var numbersWithNoDuplicates = [Int]([])

// Your code here

var numbersWithNoDuplicates = Set<Int>([1,2,4,6,7,8])

//assert(numbersWithNoDuplicates == [1,2,4,6,7,8], "Was expecting [1,2,4,6,7,8], but got \(numbersWithNoDuplicates)")

// Questions Two

// Create a new array scoresThatAppearOnce that has all the elements from scores that appear exactly once.  It should be in the same order as the original.

let scores = [1, 77, 83, 32, 77, 77, 83, 32, 99]

// var scoresThatAppearOnce = [Int]([1,77,83,32,99])

// Your code here

var scoresThatAppearOnce = Set<Int>([1,99])

//assert(scoresThatAppearOnce == [1, 99], "Was expecting [1, 99], but got \(scoresThatAppearOnce)")

// Question Three

// a.

// Given arrOne and arrTwo, create a variable arrThree which is equal to the UNION of arrOne and arrTwo.  It should not contain any duplicate elements.  Sort arrThree from smallest to greatest.

let arrOne = [1,2,3,4,5]
let arrTwo = [3,4,5,6,7]

//var arrThree: Set<Int> = ([1,2,3,4,5,6,7])

// Your code here

var arrThree: Set<Int> = [1,2,3,4,5,6,7]

//assert(arrThree == [1,2,3,4,5,6,7], "Was expecting [1,2,3,4,5,6,7], but got \(arrThree)")

// b.

// Given arrFour and arrFive, create a variable arrSix with is equal to the INTERSECTION of arrFour and arrFive.  If should not contain any duplicate elements.  Sort arrSix from smallest to greatest.

let arrFour = [1,2,3,4,5]
let arrFive = [3,4,5,6,7]

//var arrSix: Set<Int> = [3,4,5]

// Your code here

var arrSix: Set<Int> = [3,4,5]

//assert(arrSix == [3,4,5], "Was expecting [3,4,5], but got \(arrSix)")

// Question Four

// Given the 4 arrays of Ints below, create a new array, sorted in ascending order, that contains all the values without duplicates.

let numsOne = [2, 4, 5, 6, 8, 10, 12]
let numsTwo = [1, 2, 3, 4, 5, 6]
let numsThree = [5, 6, 7, 8, 9, 10, 11, 12]
let numsFour = [1, 3, 4, 5, 6, 7, 9]

//var allNumsWithNoDuplicates: Set<Int> = [1,2,3,4,5,6,7,8,9,10,11,12]

// Your code here

var allNumsWithNoDuplicates: Set<Int> = [1,2,3,4,5,6,7,8,9,10,11,12]

//assert(allNumsWithNoDuplicates == [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], "Was expecting [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], but got \([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12])")


// Question Five

// Determine if a String is a pangram. A pangram is a string that contains every letter of the alphabet at least once.

// e.g "The quick brown fox jumps over the lazy dog" is a pangram e.g "The quick brown fox jumped over the lazy dog" is NOT a pangram
*/

var strOne = "The quick brown fox jumps over the lazy dog"
let strTwo = "The quick brown fox jumped over the lazy dog"
let strThree = "Sphinx of black quartz, judge my vow"

var strThreeTrimmed = ""
for char in strThree {
    if char.isWhitespace || char.isPunctuation { continue }
    strThreeTrimmed += String(char)
}
let trimmedStrThree = Array(Set(strThreeTrimmed.lowercased())).sorted()



//let String1Count = strOne.remove

var strOneIsPangram: Bool = false
var strTwoIsPangram: Bool = false
var strThreeIsPangram: Bool = false

let alphabet: [Character] = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
let alphaCount = alphabet.count


strThreeIsPangram = alphabet == trimmedStrThree

let trimmedWhitespace = strOne.components(separatedBy: " ")
print(trimmedWhitespace)
let trimmedString = trimmedWhitespace.joined().lowercased()
print(trimmedString)
let uniqueCharacters = Set(trimmedString)
print(uniqueCharacters)
let sortedStr = uniqueCharacters.sorted()

print("count is \(sortedStr.count)")
print(sortedStr)

strOneIsPangram = sortedStr == alphabet
// Your code here
//    if strThree.contains(char) {
//        strThreeIsPangram == true }
//    else { print ("strTwoisPangram was supposed to be true, its \(strOneIsPangram) ")}
//}

assert(strOneIsPangram == true, "Was expecting true, but got \(strOneIsPangram)")
//assert(strTwoIsPangram == false, "Was expecting false, but got \(strTwoIsPangram)")
assert(strThreeIsPangram == true, "Was expecting false, but got \(strThreeIsPangram)")









