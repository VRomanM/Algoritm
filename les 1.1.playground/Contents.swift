import UIKit

// 1
// 2,3,5,7,11,13,17,19
// 4,6,9,10,14,15
// 8,12,18,20
// 16

let lengthSequence = 10_000
var groups = [[Int]]()
var result = 2 // результат деления
var countDividers = 0 // количество делителей, на единицу делится любое число, значит 1 делитель есть всегда и число по умолчанию 1
var indDevider = 0 // текущий индекс делителя. Не имеет смысла делить следующее получившееся в результате число,
    //если оно уже не делится на предыдущий делитель. Пример 50 / 2 = 25, 25 на 2 делится с остатком, значит следующий цикл начинаем с 3
for n in 1...lengthSequence {
    indDevider = 0
    countDividers = 1
    result = n
    
    if n == 1 {
        groups.append([n])
        continue
    } else if n == 2 {
        groups.append([n])
        continue
    } else {
        repeat {
            if result % groups[1][indDevider] == 0 {
                countDividers += 1
                result = result / groups[1][indDevider]
                continue
                // повторяем процедуру пока число не перестанет делиться без остатка, считаем количество делителей. Количество делителей - это номер группы текущего числа.
            }
            indDevider += 1
        } while result > 1 && groups[1].count - 1 >= indDevider // продолжаем цикл пока результатом деления на простые числа не будет 1,
            //и пока простые числа в группе не закончатся, если закончились - текущее число - простое
        if countDividers == 1 {
            groups[1].append(n)
        } else if groups.count < countDividers {
            groups.append([n])
        } else {
            groups[countDividers - 1].append(n)
        }
    }
}
print(groups)
