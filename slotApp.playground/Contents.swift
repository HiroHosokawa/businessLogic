//要件整理
//・メダルを投入することができる。
//・あたり図柄は111、222、333の３種類
//・投入されたメダルが３枚以上の時に抽選可能
//・当選したメダルは、投入メダルに加算



import UIKit

    var inputMedal = 10

    func slotItem(firstItem: Int, secondItem: Int, thirdItem: Int) -> String {
            let result = String(firstItem) + String(secondItem) + String(thirdItem)
            return result
    }
    
    let firstItem = Int.random(in: 0...5)
    let secondItem = Int.random(in: 0...5)
    let thirdItem = Int.random(in: 0...5)
    let sumItem = slotItem(firstItem: Int.random(in: 1...3), secondItem: Int.random(in: 1...3), thirdItem: Int.random(in: 1...3))
    print(sumItem)

    func startSlot() {
        if sumItem == "111" && inputMedal >= 3  {
            inputMedal -= 3
            inputMedal += 100
            print("111が当たりました。100枚の払い出しで残メダルは\(inputMedal)枚です。")
        } else if sumItem == "222" {
            inputMedal -= 3
            inputMedal += 200
            print("222が当たりました。200枚の払い出しで残メダルは\(inputMedal)枚です。")
        } else if sumItem == "333" {
            inputMedal -= 3
            inputMedal += 300
            print("333が当たりました。300枚の払い出しで残メダルは\(inputMedal)枚です。")
        } else if inputMedal <= 3 {
            print("メダルが足りません。残メダルは\(inputMedal)枚です。")
        } else if inputMedal >= 3 {
            inputMedal -= 3
            print("ハズレました。残メダルは\(inputMedal)枚です。")
        }
    }

    print(startSlot())

    




