//
//  ProfileView.swift
//  ViewPort
//
//  Created by Jude Ganihu on 14/02/2023.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectedFilter: TweetFilterViewModel = .tweets

    
    var body: some View {
        VStack(alignment: .leading) {
            headerView
            actionButtons
            userInfoDetails
            tweetFilterBar
            tweetsView
            
            
            
            Spacer()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}


extension ProfileView {
    var headerView: some View {
        ZStack(alignment: .bottomLeading) {
            Color(.systemBlue)
                .ignoresSafeArea()
            
            VStack {
                
                Button {
                    //
                } label: {
                    Image(systemName: "arrow.left")
                        .frame(width: 25, height: 16)
                        .foregroundColor(.white)
                        .offset(x: 10, y: 8)
                        
                }

                Circle()
                    .frame(width: 72, height: 72)
                .offset(x: 20, y: 30)
            }
        }
        .frame(height: 100)
    }
    
    
    var actionButtons: some View {
        HStack (spacing: 12) {
            Spacer()
            Image(systemName: "bell.badge")
                .font(.title3)
                .padding(6)
                .overlay(Circle().stroke(.gray, lineWidth: 0.8))
            
            Button {
                //
            } label: {
                Text("Edit Profile")
                    .font(.subheadline).bold()
                    .foregroundColor(.black)
                    .frame(width: 120, height: 32)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.gray, lineWidth: 0.8))

            }
        }
        .padding(.trailing)
    }
    
    var userInfoDetails: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack {
                Text("Kpose Richard")
                    .font(.title2).bold()
                
                Image(systemName: "checkmark.seal.fill")
                    .foregroundColor(Color(.systemBlue))
            }
            Text("@kpoosee")
                .foregroundColor(.gray)
                .font(.subheadline)
        
            Text("Everything between the center")
                .font(.subheadline)
                .padding(.vertical)
        
            HStack(spacing: 20) {
                HStack {
                    Image(systemName: "mappin.and.ellipse")
                    Text("Amsterdam, ND")
                }
                
                HStack {
                    Image(systemName: "link")
                    Text("www.kpose.com")
                }
            
            }.foregroundColor(.gray)
                .font(.caption)
            
            HStack(spacing: 20) {
                HStack(spacing:24) {
                    Text("2").font(.subheadline).bold()
                    Text("Following").foregroundColor(.gray)
                }
                
                HStack {
                    Text("2").font(.subheadline).bold()
                    Text("Followers").foregroundColor(.gray).font(.caption)
                    
                }
            }
            .padding(.vertical)
            
        }.padding(.horizontal)
    }
    
    var tweetFilterBar: some View {
        HStack {
            ForEach(TweetFilterViewModel.allCases, id: \.rawValue) { item in
                VStack {
                    Text(item.title)
                        .fontWeight(selectedFilter == item ? .semibold : .regular)
                        .foregroundColor(selectedFilter == item ? .black : .gray)
                    if (selectedFilter == item) {
                        Capsule()
                            .foregroundColor(Color(.systemBlue))
                            .frame(height: 3)
                            
                    } else {
                        Capsule()
                            .foregroundColor(Color(.clear))
                            .frame(height: 3)
                    }
                }
                .onTapGesture {
                    withAnimation(.easeInOut) {
                        self.selectedFilter = item
                    }
                }
            }
        }
        .overlay(Divider().offset(x: 0, y: 16))
    }
    
    var tweetsView: some View {
        ScrollView {
            ForEach(0 ... 9, id: \.self) { _ in
                TweetRowView()
                    .padding()
            }
        }
    }
}
