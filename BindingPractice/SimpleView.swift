//
//  ContentView.swift
//  BindingPractice
//
//  Created by bcs on 2021/10/01.
//

import SwiftUI

struct SimpleView: View {
    
    @State private var isNight = true
    @State private var isShowingSheet = false
    
    var body: some View {
        ZStack {
            Color(isNight ? .black : .systemBlue).ignoresSafeArea()
            
            VStack {
                Image(systemName: isNight ? "moon.stars.fill" : "cloud.sun.fill")
                    .resizable()
                    .renderingMode(.original)
                    .frame(width: 300, height: 300, alignment: .center)
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.black)

                Button {
                    isShowingSheet = true
                } label: {
                    Label("Change Time Of Day", systemImage: "clock.fill")
                        .foregroundColor(.black)
                }
                .frame(width: 300, height: 50)
                .background(Color.gray)
                .foregroundColor(.gray)
                .cornerRadius(12)
                .padding(.vertical, 100)
            }
        }
        .sheet(isPresented:$isShowingSheet,
               content: {
            SelectionView(
                isNight: $isNight,
                showingSelectionView: $isShowingSheet
            )
        })
    }
}
