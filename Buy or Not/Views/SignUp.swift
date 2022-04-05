//
//  SignUp.swift
//  Buy or Not
//
//  Created by Noah's Ark on 2022/03/31.
//

import SwiftUI

struct SignUp: View {
    
    @State var userId = ""
    @State var userName = ""
    @State var userNickName = ""
    
    @State private var checkedFashion = false
    @State private var checkedFurniture = false
    @State private var checkedFood = false
    @State private var checkedMonitor = false
    @State private var checkedGame = false
    @State private var checkedEtc = false
    
    @ObservedObject var passwordObj = PasswordConfirmationInRegister()

    var body: some View {
        ScrollView (showsIndicators: false) {
            VStack {
                /// Title subview sets a gray(#aaaaaa) colored title by the given text
                Title(title: "회원가입")
                    .padding()
                
                VStack {
                    HStack {
                        TextInput(
                            placeholder: "아이디",
                            value: $userId,
                            width: 195
                        )
                        DuplicationValidateButton(text: userId)
                    }
                    
                    TextInput(
                        placeholder: "비밀번호",
                        value: $passwordObj.password,
                        width: 300
                    )
                    ZStack {
                        TextInput(
                            placeholder: "비밀번호 확인",
                            value: $passwordObj.passwordConfirmation,
                            width: 300
                        )
                    }
                                  
                    if ( passwordObj.password != "" &&
                         passwordObj.passwordConfirmation != "" &&
                         passwordObj.message != "" ) {

                        Text(passwordObj.message)
                            .foregroundColor(
                                passwordObj.matchBoolean == true ? Color.blue : Color.red
                            )
                    }
                    
                    TextInput(placeholder: "이름", value: $userName, width: 300)
                    
                    HStack {
                        TextInput(placeholder: "닉네임", value: $userNickName, width: 195)
                        DuplicationValidateButton(text: userNickName)
                    }
                }
                
                Title(title: "관심분야")
                    .padding()

                InterestedCategory (
                    isTrue: $checkedFashion,
                    iconName: "tshirt",
                    categoryName: "패션 / 뷰티",
                    hashTagsInString: "#신발 #티셔츠 #화장품 #가을코디" )
                InterestedCategory (
                    isTrue: $checkedFurniture,
                    iconName: "bed.double",
                    categoryName: "가구 / 인테리어",
                    hashTagsInString: "#소파 #매트리스 #스탠드 #그릇" )
                InterestedCategory (
                    isTrue: $checkedFood,
                    iconName: "fork.knife",
                    categoryName: "식품 / 외식",
                    hashTagsInString: "#자취요리 #맛집 #가성비 #JMT" )
                InterestedCategory (
                    isTrue: $checkedMonitor,
                    iconName: "desktopcomputer",
                    categoryName: "전자제품 / 디지털 가전",
                    hashTagsInString: "#컴퓨터 #세탁기 #맥북 #모니터" )
                InterestedCategory (
                    isTrue: $checkedGame,
                    iconName: "gamecontroller",
                    categoryName: "취미 / 여가",
                    hashTagsInString: "#여행 #게임 #스포츠 #힐링 #음악" )
                InterestedCategory (
                    isTrue: $checkedEtc,
                    iconName: "ellipsis.circle",
                    categoryName: "기타",
                    hashTagsInString: "#자동차 #결혼기념일 #생일선물" )

                NavigationLink(destination: SignIn()
                                .navigationBarBackButtonHidden(true)
                ) { BasicButton(text: "가입 완료") }
                .padding(.vertical)
            }
        }
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}


