//
//  main.swift
//  Game
//
//  Created by t2023-m0006 on 12/4/23.
//

//burgerHouse class 구현
class burgerHouse  {
    var burgerMenu : String
    var burgerSpec : String
    
 //메뉴, 스펙 입력 전 초기화
    init(burgerMenu: String, burgerSpec: String) {
        self.burgerMenu = burgerMenu
        self.burgerSpec = burgerSpec
    }
// burgerHouse의 class 메소드
    func startKioskMenu() {
// 키오스크 리스트를 출력하는 함수 출력 후
     kioskMenuListPrint()
//command Line에 출력 "원하는 메뉴 번호를 선택해주세요.
 print("원하는 메뉴 번호를 선택해주세요.")
//commandLine에 readLine() 활용 키보드로 입력, menuNumber는 키보드로 userInput입력, menuNumber가 1보다 크고 kioskMenuList.count가 menuNumber보다 작거나 같을 때
        if let userInput = readLine(), let menuNumber = Int(userInput), menuNumber > 0 && menuNumber <= kioskMenuList.count {
//"선택하신 메뉴는 숫자 대비 인덱스 순서 - 1 적용하여 프린터
            print("선택하신 메뉴는 \(kioskMenuList[menuNumber - 1].burgerMenu)이며, 스펙은 \(kioskMenuList[menuNumber - 1].burgerSpec)입니다.")
        } else {
            print("유효한 메뉴 번호를 입력해주세요.")
        }
    }
}

var menu1 = burgerHouse(burgerMenu: "Burgers", burgerSpec: "앵거스 비프 통살을 다져만든 버거")
var menu2 = burgerHouse(burgerMenu: "Frozen Custard", burgerSpec: "매장에서 신선하게 만드는 아이스크림")
var menu3 = burgerHouse(burgerMenu: "Drinks", burgerSpec: "매장에서 직접 만드는 음료")
var menu4 = burgerHouse(burgerMenu: "Beer", burgerSpec: "뉴욕 브루클린 브루어리에서 양조한 맥주")
var menu5 = burgerHouse(burgerMenu: "End", burgerSpec: "처음으로 가기")

//키오스크 메뉴 변수를 리스트에 저장
var kioskMenuList: [burgerHouse] = [menu1, menu2, menu3, menu4, menu5]

//키오스크 리스트를 출력하는 함수
func kioskMenuListPrint() {
    print("[ BurgerHouse MENU ]")
    for i in 0..<kioskMenuList.count {
        //"메뉴번호 (0번째+1). \(kioskMenuList[인덱스 0번째의].burgerMenu | \(kioskMenuList[인덱스 0번쩨]의 burgerSpec"
        print("메뉴번호 \(i+1). \(kioskMenuList[i].burgerMenu) | \(kioskMenuList[i].burgerSpec)")
    }
}

menu1.startKioskMenu()


