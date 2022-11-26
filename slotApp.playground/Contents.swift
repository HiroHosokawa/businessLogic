//要件整理
//・メダルを投入することができる。
//・あたり図柄は111、222、333の３種類
//・投入されたメダルが３枚以上の時に抽選可能
//・当選したメダルは、投入メダルに加算



import UIKit

class SlotMachien {

    var inputMedal = 10
    var firstItem = Int.random(in: 0...5)
    var secondItem = Int.random(in: 0...5)
    var thirdItem = Int.random(in: 0...5)
    
    func check() -> Bool {
        let startSlot = inputMedal >= 3
        if startSlot {
            inputMedal -= 3
        }
        return startSlot
    }
    
    func slotItem(firstItem: Int, secondItem: Int, thirdItem: Int) -> String {
            let result = String(firstItem) + String(secondItem) + String(thirdItem)
            return result
    }
}

let slotMachien = SlotMachien()
let checkMedal = slotMachien.check()
slotMachien.inputMedal = 3

let sumItem = slotMachien.slotItem(firstItem: Int.random(in: 1...3), secondItem: Int.random(in: 1...3), thirdItem: Int.random(in: 1...3))

print("現在のメダルは\(slotMachien.inputMedal)枚です。")

if checkMedal == true {
    print("スロットを回します！")
    }else {
    print("メダルが足りません。追加投入して下さい")
}

func slotResult() {
    if checkMedal != true {
        print("メダルが足りません。残メダルは\(slotMachien.inputMedal)枚です。")
    } else if sumItem == "111" && slotMachien.inputMedal >= 3  {
        slotMachien.inputMedal += 100
        print("111が当たりました。100枚の払い出しで残メダルは\(slotMachien.inputMedal)枚です。")
    } else if sumItem == "222" {
        slotMachien.inputMedal += 200
        print("222が当たりました。200枚の払い出しで残メダルは\(slotMachien.inputMedal)枚です。")
    } else if sumItem == "333" {
        slotMachien.inputMedal += 300
        print("333が当たりました。300枚の払い出しで残メダルは\(slotMachien.inputMedal)枚です。")
        
    } else  {
        print("ハズレました。残メダルは\(slotMachien.inputMedal)枚です。")
    }
}

print(sumItem)
slotMachien.inputMedal -= 3
print(slotResult())

