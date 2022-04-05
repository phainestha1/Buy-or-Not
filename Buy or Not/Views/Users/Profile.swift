//
//  Profile.swift
//  Buy or Not
//
//  Created by Noah's Ark on 2022/04/05.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        ScrollView {
            VStack {
            HStack {
                Text("나의 프로필")
                    .foregroundColor(Color.gray)
                Spacer()
                Button(action: {}) {
                    Text("수정하기 >")
                }
                .font(.system(size: 14))
            }.padding(.horizontal, 20)

                Divider()
                    .frame(width: 350, height: 1.0)
                    .background(Color.gray)

                HStack {
                    Image("defaultUser")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .cornerRadius(100)
                    
                    VStack (alignment: .leading) {
                        Text("배고픈 20대")
                        Text("전자기기에 관심이 많은 20대 입니다.")
                            .foregroundColor(Color.gray)
                            .font(.system(size: 15))
                            .padding(.vertical, 2)
                    }
                }
                
                HStack (spacing: 30) {
                    Image(systemName: "tshirt")
                        .font(.system(size: 30))
                    Image(systemName: "desktopcomputer")
                        .font(.system(size: 30))
                    Image(systemName: "ellipsis.circle")
                        .font(.system(size: 30))
                }
                
                HStack (spacing: 120) {
                    Button(action: {}) {
                        VStack {
                            Image(systemName: "questionmark.circle.fill")
                                .font(.system(size: 40))
                            Text("나의 질문")
                        }
                        .foregroundColor(Color.gray)
                    }
                    Button(action: {}) {
                        VStack {
                            Image(systemName: "exclamationmark.bubble.fill")
                                .font(.system(size: 40))
                            Text("나의 답변")
                        }
                        .foregroundColor(Color.gray)
                    }
                }
                .padding(.top, 30)
                
                Divider()
                    .frame(width: 350, height: 1.0)
                    .background(Color.gray)
                
                VStack (alignment: .leading, spacing: 15 ) {
                    HStack {
                        Image(systemName: "mic")
                        Text("공지사항")
                    }
                    
                    Divider()
                        .frame(width: 350, height: 0.5)
                        .background(Color.white)
                    
                    HStack {
                        Image(systemName: "phone")
                        Text("자주 묻는 질문")
                    }
                }
            
                NavigationLink(destination: SignIn()
                                .navigationBarBackButtonHidden(true)
                ) { BasicButton(text: "로그아웃") }
                .padding(.vertical)
                
            }
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
