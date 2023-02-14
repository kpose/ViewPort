//
//  ProfileView.swift
//  ViewPort
//
//  Created by Jude Ganihu on 14/02/2023.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            headerView
            actionButtons
            
            
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
}
