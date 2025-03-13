import UIKit

var greeting = "Hello, playground"

// Прости, пожалуйста, у меня айкью минус 7. я ничего не понимаю(((

// TODO: Ты же почти правильно всё написала)
// 1. Когда мы создаем enum названия пишем с большой буквы, для case делаем отступ.

enum Сurrency: String {
    case USD = "$"
    case EUR = "€"
    case BYN = "Br"
}

// TODO: С курсами все правильно в целом. Нужно только добавить еще для доллара и евро.
// Крусы можно смотреть в конвертере https://myfin.by/converter?val_nbrb=byn-1
// Для перевода долларов в евро ставишь 1 в доллраы и смотришь сколько это евро на текущий момент это 0.917
// Так же в рамках задачи курс должен быть опциональным, для этого нужно указать просто опцилнальный тип.
// И для одной пары установить курс в nil
func getExchangeRate(from: Currency, to: Currency) -> Double? {
   let usdToByn = 3.2
   let bynToUsd = 0.32
   let eurToByn = 3.56
   let bynToEur = 0.356
   let usdToEur = 0.917
   let eurToUsd: Double? = nil

   // Здесь из-за того что назвала enum с маленькой буквы, перепутала к чему обращаться. Currency - это типы перменных from и to
    // соответвенно работаем мы с переменными.
   if from == .USD && to == .BYN {
       return usdToByn
   } else if from == .BYN && to == .USD {
        // и так далее
   }
}



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

// TODO: Эта функция у тебя выводит сейчас число. Выводить она должна оценку буквой. Для этого у тебя уже напсиана функция getLetterGrade
// Ты должна вызвать функцию getLetterGrade внутри функции printExamResult, чтобы из числа получить буквенную оценку.
// Результат ты получишь опциональным. Пытаешь извлечь опционал: если там nil, пишешь "Некорректный балл",
// если же значение извлечь удается, печаетешь "Стуент X получил оценку Y" Y - это уже будет буквенное значение.

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


