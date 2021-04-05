//
//  PostView.swift
//  SocialMediaApp
//
//  Created by Saski Skye on 4/4/21.
//

import SwiftUI

struct PostView: View {
    
    init() {
        UINavigationBar.appearance().barStyle = .default
        UINavigationBar.appearance().backgroundColor = .clear
        UINavigationBar.appearance().isTranslucent = false
        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .any, barMetrics: .default)
        UINavigationBar.appearance().shadowImage = UIImage()
    }
    
    var navigationTitle: Text {
        Text("Create a Post")
    }
    
    var leadingButton: some View {
        Button {
            
        } label: {
            SFSymbol.arrowLeft
        }
    }
    
    var trailingButton: some View {
        Button {
            
        } label: {
            Text("Save Draft")
                .font(.system(size: 14, weight: .regular))
                .foregroundColor(.gray)
        }
    }
    
    var inputTitleView: some View {
        VStack(alignment: .leading) {
            Text("Add a title")
                .font(.system(size: 14, weight: .regular))
                .foregroundColor(.gray)
            TextField("", text: $title)
                .font(.system(size: 16, weight: .bold))
                .foregroundColor(.black)
            Divider()
        }
    }
    
    var uploadPhotoView: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .stroke(
                    Color.appBlueColor,
                    style: StrokeStyle(
                        lineWidth: 1,
                        lineCap: .round,
                        lineJoin: .miter,
                        miterLimit: 0,
                        dash: [5, 5],
                        dashPhase: 0)
                )
                .frame(height: 176)
                .foregroundColor(Color.appLightBlueColor)
            VStack(spacing: 10) {
                Image("upload-cloud")
                    .resizable()
                    .frame(width: 46, height: 38)
                Text("Upload a photo")
                    .font(.system(size: 16, weight: .bold))
                    .foregroundColor(.appBlueColor)
                Text("Supported formats PNG, GIF or JPG.\n Photos are usually 400 x 300 or 800 x 600.")
                    .multilineTextAlignment(.center)
                    .font(.system(size: 14, weight: .regular))
                    .foregroundColor(.appBlueColor)
            }
            .padding(.horizontal)
        }
        .onTapGesture {
            debugPrint("Browse images")
        }
    }
    
    @State private var title: String = ""
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading,  spacing: 20) {
                    Spacer()
                        .frame(height: 10)
                    inputTitleView
                    uploadPhotoView
                    Spacer()
                }
                .padding(.horizontal)
            }
            .navigationTitle(navigationTitle)
            .navigationBarItems(
                leading: leadingButton,
                trailing: trailingButton
            )
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .accentColor(.primary)
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView()
    }
}
