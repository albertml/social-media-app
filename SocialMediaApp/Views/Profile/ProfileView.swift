//
//  ProfileView.swift
//  SocialMediaApp
//
//  Created by Saski Skye on 2/27/21.
//

import SwiftUI

struct ProfileView: View {
    
    var viewModel = ProfileViewModel()
    
    var header: some View {
        HStack {
            Button {
                
            } label: {
                SFSymbol.arrowLeft
                    .font(.system(size: 18, weight: .semibold))
                    .foregroundColor(.primary)
            }
            
            Spacer()
            Text("Guy Mcccoy's Profile")
                .font(.system(size: 18, weight: .bold))
            Spacer()
            Button {
                
            } label: {
                SFSymbol.option
                    .font(.system(size: 18, weight: .semibold))
                    .foregroundColor(.primary)
            }
        }
        .padding(.horizontal, 20)
    }
    
    var followingButton: some View {
        Button(action: {
            
        }, label: {
            HStack {
                SFSymbol.check
                    .foregroundColor(.white)
                Text("Following")
                    .foregroundColor(.white)
            }
            .frame(width: 130, height: 40)
        })
        .foregroundColor(.white)
        .background(Color.fillButtonColor)
        .border(Color.fillButtonBorderColor, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
        .cornerRadius(8)
    }
    
    var followerButton: some View {
        Button(action: {
            
        }, label: {
            HStack {
                SFSymbol.envelope
                    .foregroundColor(Color.fillButtonColor)
                Text("Follower")
                    .foregroundColor(Color.fillButtonColor)
            }
            .frame(width: 130, height: 40)
            .background(
                RoundedRectangle(
                    cornerRadius: 8,
                    style: .continuous
                ).stroke(Color.accentColor)
            )
        })
        .foregroundColor(.white)
    }
    
    var statsView: some View {
        HStack {
            VStack {
                Text("250")
                    .font(.system(size: 20, weight: .bold))
                Text("captures")
                    .font(.system(size: 14, weight: .semibold))
            }
            Spacer()
            VStack {
                Text("1,271")
                    .font(.system(size: 20, weight: .bold))
                Text("followers")
                    .font(.system(size: 14, weight: .semibold))
            }
            Spacer()
            VStack {
                Text("475")
                    .font(.system(size: 20, weight: .bold))
                Text("following")
                    .font(.system(size: 14, weight: .semibold))
            }
        }
        .padding(.horizontal, 40)
    }
    
    var body: some View {
        VStack(spacing: 20) {
            header
            ScrollView {
                VStack(spacing: 20) {
                    HStack(spacing: 10) {
                        CircleImageView(
                            name: "user1",
                            width: 72,
                            height: 72
                        )
                        followingButton
                        followerButton
                        Spacer()
                    }
                    VStack(spacing: 5) {
                        HStack {
                            Text("Guy Mcccoye")
                                .font(.system(size: 18, weight: .bold))
                            SFSymbol.checkMarkSellFill
                                .foregroundColor(Color.fillButtonColor)
                            Spacer()
                        }
                        HStack {
                            Text("Digital Artist / Art Director")
                                .font(.system(size: 13))
                                .foregroundColor(Color.gray)
                            Spacer()
                        }
                    }
                    statsView
                    Divider()
                    FeaturedPhotosView(featuredPhotosViewModels: viewModel.featuredPhotosViewModels)
                        .frame(width: 400, height: 120)
                    Spacer()
                }
                .padding(.leading, 30)
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
