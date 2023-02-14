//
//  TweetRowView.swift
//  ViewPort
//
//  Created by Jude Ganihu on 14/02/2023.
//

import SwiftUI

struct TweetRowView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top, spacing: 12) {
                Circle()
                    .frame(width: 60, height: 60)
                    .foregroundColor(Color.blue)
                    
                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        Text("Kpose Richard")
                            .font(.subheadline).bold()
                        Text("@Kpooose")
                            .foregroundColor(Color.gray)
                            .font(.caption)
                        Text(". 2w ago")
                            .foregroundColor(Color.gray)
                            .font(.caption)
                    }
                    
                    Text("This is the tweet body, how do you respond?").font(.subheadline).multilineTextAlignment(.leading)
                }
                
            }
            //action buttons
            HStack {
                Button {
                    //
                } label: {
                    Image(systemName: "bubble.left").font(.subheadline)
                }
                Spacer()
                
                Button {
                    //
                } label: {
                    Image(systemName: "arrow.2.squarepath").font(.subheadline)
                }
                Spacer()

                Button {
                    //
                } label: {
                    Image(systemName: "heart").font(.subheadline)
                }
                Spacer()

                Button {
                    //
                } label: {
                    Image(systemName: "bookmark").font(.subheadline)
                }
                

            }
            .padding()
            .foregroundColor(.gray)
            
            Divider()
        }
        .padding()
        
    }
    
}

struct TweetRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetRowView()
    }
}
