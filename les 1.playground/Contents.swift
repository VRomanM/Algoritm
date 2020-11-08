import UIKit

let x = 50//0000000
var groups = [[Int]]()
var flag = 0

// 1
// 2,3,5,7,11,13,17,19
// 4,6,9,10,14,15
// 8,12,18,20
// 16

func createArray() -> [Int] {
    return []
}

for n in 1...x {
    if n == 1 {
        groups.append([n])
        continue
    }
    flag = 0
    for group in 0..<groups.count {
        if flag == 1 {
            break
        }
        for number in groups[groups.count - 1 - group] { // обходим группы с конца
            if n % number == 0 {
                if groups.count == groups.count - group {
                    groups.append([n])
                } else {
                    groups[groups.count - group].append(n)
                }
                flag = 1
                break
            }
        }
    }
}
print(groups)

