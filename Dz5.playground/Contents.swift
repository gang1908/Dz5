import UIKit

var greeting = "Hello, playground"

// Прости, пожалуйста, у меня айкью минус 7. я ничего не понимаю(((


//enum currency: String {
//case USD = "$"
//case EUR = "€"
//case BYN = "Br"
//}
//
//func getExchangeRate(from: currency, to: currency) -> Double? {
//    let usdToByn = 3.2
//    let bynToUsd = 0.32
//    let eurToByn = 3.56
//    let bynToEur = 0.356
//    
//    if currency == .USD && currency == .BYN {
//        return usdToByn
//    }
//}



enum Grade: Int {
    
    case A = 90
    case B = 80
    case C = 70
    case D = 60
    case F = 50
}

//func getLetterGrade(score: Int) -> Grade? {
//    switch score {
//    case 90...100:
//        return .A
//    case 80...89:
//        return .B
//    case 70...79:
//        return .C
//    case 60...69:
//        return .D
//    case 0...59:
//        return .F
//    default:
//        return nil
//    }
//}
//
//print(getLetterGrade(score:75))

func getLetterGrade(_ score: Int) -> Grade? {
    if score >= 90 && score <= 100 { return .A}
    else if score >= 80 && score <= 89 {return .B}
    else if score >= 70 && score <= 79 {return .C}
    else if score >= 60 && score <= 69 {return .D}
    else if score >= 0 && score <= 59 {return .F}
    else {return nil}

}

let studentResult = getLetterGrade(90)
print(studentResult)

// let studentResults = "\(name) получил \(studentResult), (Балл: \(score))"


func printExamResult(name: String, score: Int) -> String {
    if score >= 0 && score <= 100 {
        return("\(name) получил \(String(describing: studentResult)), Балл: \(score)")
    } else {
        return("\(name) получил недопустимый балл: \(score)")
    }
}

print(printExamResult(name:"Angelina", score:-5))
print(printExamResult(name:"Angelina", score:60))
print(printExamResult(name:"Angelina", score:102))
print(printExamResult(name:"Angelina", score:99))


