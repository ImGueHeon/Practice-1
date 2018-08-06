import UIKit

var str = "Hello, playground"



//실제 더미데이터에서 활용하기

//일 별 기록을 컬렉션으로 받고 정렬을 이용해서 데이터를 정렬해보자.
//더미데이터는 4가지 술의 가격,칼로리,마신사람,위치
//술가격
var drinkDaysAndPriceData:[String:Int] = ["7월1일":2000,"7월3일":4000,"7월5일":6000,"7월8일":20000,"7월15일":15000,"7월19일":30000,"7월20일":25000,"7월22일":25000,"7월23일":5000,"7월26일":15000,"7월31일":6000]
//7월 24일 데이터 추가하기
drinkDaysAndPriceData["7월24일"] = 4000

//술 칼로리
var drinkDaysAndCaloryData:[String:Int] = ["7월1일":250,"7월3일":380,"7월5일":360,"7월8일":980,"7월15일":450,"7월19일":1050,"7월20일":890,"7월22일":1500,"7월23일":250,"7월26일":650,"7월31일":330]
//7월 24일 데이터 추가하기
drinkDaysAndCaloryData["7월24일"] = 280

//술 마신사람
var drinkDaysAndWithWhoData:[String:String] = ["7월1일":"임규헌","7월3일":"술케줄팀","7월5일":"조준오","7월8일":"공대호","7월15일":"공대호","7월19일":"술케줄팀","7월20일":"임규헌","7월22일":"임규헌","7월23일":"공대호","7월26일":"공대호","7월31일":"공대호"]
//7월 24일 데이터 추가하기
drinkDaysAndWithWhoData["7월24일"] = "임규헌"

//술 마신 장소
var drinkDaysAndPlaceData:[String:String] = ["7월1일":"부산집","7월3일":"집","7월5일":"집","7월8일":"곱창의전설","7월15일":"치폴레옹","7월19일":"곱창의전설","7월20일":"동아치","7월22일":"곱창의전설","7월23일":"집","7월26일":"동아치","7월31일":"라이스앤포테이토"]
//7월 24일 데이터 추가하기
drinkDaysAndPlaceData["7월24일"] = "집"


//7월 술 값 데이터 정렬하기
let sortedMonthPrice = drinkDaysAndPriceData.sorted(by: {$0.1 > $1.1 })
print(sortedMonthPrice)

//7월 술 칼로리 데이터 정렬하기
let sortedMonthCalory = drinkDaysAndCaloryData.sorted(by: {$0.1 > $1.1})
print(sortedMonthCalory)

//7월 술 마신사람 데이터 정렬하기

//술 마신사람데이터는 스트링이기 때문에 횟수를 새롭게 세어줘야 할 것이다.
//술 마신 사람과 횟수에 따른 딕셔너리 새롭게 생성

//어떻게 만들어야할지 잘 모르겠어서 대략적인 함수 연습해보기
//간단한 알파벳 횟수 숫자를 세는 함수 만들어보기

var allWords :[String] = ["a","b","d","e","f","e","a","b","a","b","e","f","a"]

var wordCounts = [String:Int]()

for word in allWords {
    if wordCounts[word] == nil {
        //만약 워드카운트가 닐값이면
        wordCounts[word] = 1
        //1을 추가해주고,
    } else {
        wordCounts[word]! += 1
        //닐값이 아니라면 그 값에다가 1을 더해준다.
    }
}

print(wordCounts)
//오른쪽에 값이 안떠서 맞는지 모르겠다.

//이제 제대로 된 함수 만들어보기

var drinkWhoAndTimes:[String:Int] = [:]
//사람이름과 횟수를 넣는 변수 생성

//var drinkWhoCountingDate= drinkDaysAndWithWhoData.values
//이렇게하면 오류 생성...
var drinkWhoCountingData = Array(drinkDaysAndWithWhoData.values)
//요러면 어레이 생성이 될 것 같다.

print(drinkWhoCountingData)
//역시 오른쪽에 안떠서 어레이 생성 확인 불가.

for word in drinkWhoCountingData {
    //드링크후카운팅데이타만큼 포문 돌리고
    if drinkWhoAndTimes[word] == nil {
        //만약 드링크후앤타임즈가 닐값이면
        drinkWhoAndTimes[word] = 1
        //1을 추가해주고,
    } else {
        drinkWhoAndTimes[word]! += 1
        //닐값이 아니라면 그 값에다가 1을 더해준다. 포스옵셔널로 처리
    }
}
print(drinkWhoAndTimes)

//이제 정렬을 해주자.

let sortedMonthWithWho = drinkWhoAndTimes.sorted(by: {$0.1 > $1.1})
//정렬까지 해주면 끝





//술 마신 위치와 횟수에 따른 딕셔너리 새롭게 생성
//술 마신 사람 카운팅과 도일하게 생성
var drinkPlaceAndTimes:[String:Int] = [:]
//술 마신 위치와 횟수를 넣는 변수 생성

var drinkPlaceCountingData = Array(drinkDaysAndPlaceData.values)
//요러면 어레이 생성이 될 것 같다.

for word in drinkPlaceCountingData {
    //드링크플레이스카운팅데이타만큼포문돌리고
    if drinkPlaceAndTimes[word] == nil {
        //만약  드링크 플레이스 앤 타임즈가 닐값이면
        drinkPlaceAndTimes[word] = 1
        //1을 추가해주고,
    } else {
        drinkPlaceAndTimes[word]! += 1
        //닐값이 아니라면 그 값에다가 1을 더해준다.
    }
}
print(drinkPlaceAndTimes)

//이제 정렬을 해주자.

let sortedMonthPlace = drinkPlaceAndTimes.sorted(by: {$0.1 > $1.1})
//정렬까지 해주면 끝
