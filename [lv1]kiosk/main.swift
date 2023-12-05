//
//  main.swift
//  Game
//
//  Created by t2023-m0006 on 12/4/23.
//

//burgerHouse class 구현
// shakeShake Menu
class burgerHouse  {
    var shakeShakeMenu : String
    var burgerSpec : String
    
 //메뉴, 스펙 입력 전 초기화
    init(shakeShakeMenu: String, burgerSpec: String) {
        self.shakeShakeMenu = shakeShakeMenu
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
            print("선택하신 메뉴는 \(kioskMenuList[menuNumber - 1].shakeShakeMenu)이며, 스펙은 \(kioskMenuList[menuNumber - 1].burgerSpec)입니다.")
        } else {
            print("유효한 메뉴 번호를 입력해주세요.")
        }
    }
}

var burgers = burgerHouse(shakeShakeMenu: "Burgers", burgerSpec: "앵거스 비프 통살을 다져만든 버거")
var frozenCustard = burgerHouse(shakeShakeMenu: "Frozen Custard", burgerSpec: "매장에서 신선하게 만드는 아이스크림")
var drinks = burgerHouse(shakeShakeMenu: "Drinks", burgerSpec: "매장에서 직접 만드는 음료")
var beer = burgerHouse(shakeShakeMenu: "Beer", burgerSpec: "뉴욕 브루클린 브루어리에서 양조한 맥주")
var exit = burgerHouse(shakeShakeMenu: "종료", burgerSpec: "프로그램 종료")

//키오스크 메뉴 변수를 리스트에 저장
var kioskMenuList: [burgerHouse] = [burgers, frozenCustard, drinks, beer, exit]

//------------------------------------------------------------------------------------------------------------------------------------------
//버거메뉴

class burgersMenu {
    var burgerItem : String
    var burgerPrice : String
    var itemSpec : String
    
 //메뉴, 스펙 입력 전 초기화
    init(burgerItem: String, burgerPrice: String, itemSpec : String) {
        self.burgerItem = burgerItem
        self.burgerPrice = burgerPrice
        self.itemSpec = itemSpec
    }
    
    
// burgerHouse의 class 메소드
    func startKioskMenu() {
// 키오스크 리스트를 출력하는 함수 출력 후
     kioskMenuListPrint()
//command Line에 출력 "원하는 메뉴 번호를 선택해주세요.
 print("원하는 메뉴 번호를 선택해주세요.")
//commandLine에 readLine() 활용 키보드로 입력, menuNumber는 키보드로 userInput입력, menuNumber가 1보다 크고 kioskMenuList.count가 menuNumber보다 작거나 같을 때
        if let userInput = readLine(), let menuNumber = Int(userInput), menuNumber > 0 && menuNumber <= burgerMenuList.count {
//"선택하신 메뉴는 숫자 대비 인덱스 순서 - 1 적용하여 프린터
            print("선택하신 메뉴는 \(burgerMenuList[menuNumber - 1].burgerItem)이며, 가격은 \(burgerMenuList[menuNumber - 1].burgerPrice), 스펙은 \(burgerMenuList[menuNumber - 1].itemSpec)입니다.")
        } else {
            print("유효한 메뉴 번호를 입력해주세요.")
        }
    }
}

var shackBurger = burgersMenu(burgerItem: "ShackBurger", burgerPrice: "w 6.9", itemSpec: "토마토, 양상추, 쉑소스가 토핑된 치즈버거")
var smokeShack  = burgersMenu(burgerItem: "SmokeShack", burgerPrice: "w 8.9", itemSpec: "베이컨, 체리 페퍼에 쉑소스가 토핑된 치즈버거")
var shroomBurger = burgersMenu(burgerItem: "SmokeShack", burgerPrice: "w 9.4", itemSpec: "몬스터 치즈와 체다 치즈로 속을 채운 베지테리안 버거")
var cheeseburger = burgersMenu(burgerItem: "Cheeseburger", burgerPrice: "w 6.9", itemSpec: "포테이토 번과 비프패티, 치즈가 토핑된 치즈버거")
var hamburger = burgersMenu(burgerItem: "Hamburger", burgerPrice: "w 5.4", itemSpec: "비프패티를 기반으로 야채가 들어간 기본버거")
var exit2 = burgersMenu(burgerItem: "exit2", burgerPrice: "", itemSpec: "")

//키오스크 메뉴 변수를 리스트에 저장
var burgerMenuList: [burgersMenu] = [shackBurger, smokeShack, shroomBurger, cheeseburger, hamburger, exit2]





//------------------------------------------------------------------------------------------------------------------------------------------
//디버그 영역에 보여지기만 하는 함수
//키오스크 리스트를 출력하는 함수
func kioskMenuListPrint() {
    print("[ BurgerHouse MENU ]")
    for i in 0..<kioskMenuList.count {
        //"메뉴번호 (0번째+1). \(kioskMenuList[인덱스 0번째의].burgerMenu | \(kioskMenuList[인덱스 0번쩨]의 burgerSpec"
        print("메뉴번호 \(i+1). \(kioskMenuList[i].shakeShakeMenu) | \(kioskMenuList[i].burgerSpec)")
    }
    print("-----------------------------------------------------------")
    print("[ Burgers MENU ]")
    for i in 0..<burgerMenuList.count {
        //"메뉴번호 (0번째+1). \(kioskMenuList[인덱스 0번째의].burgerMenu | \(kioskMenuList[인덱스 0번쩨]의 burgerSpec"
        print("메뉴번호 \(i+1). \(burgerMenuList[i].burgerItem) | \(burgerMenuList[i].burgerPrice) | \(burgerMenuList[i].itemSpec)")
    }
}

burgers.startKioskMenu()


