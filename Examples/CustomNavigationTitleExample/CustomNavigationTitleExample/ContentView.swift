//
//  ContentView.swift
//  CustomNavigationTitleExample
//  
//  Created by Chronos2500 on 2025/02/13.
//

import SwiftUI
import CustomNavigationTitle

struct ContentView: View {
    var body: some View {
        NavigationStack{
            List {
                Section{
                    VStack(spacing: 10){
                        Image(systemName: "hand.raised.app.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 62)
                            .foregroundStyle(.blue)
                        Text("Privacy & Security")
                            .font(.title2)
                            .bold()
                            .titleVisibilityAnchor()
                        Text("Control which apps can access your data, location, camera, and microphone, and manage safety protections. [Learn more..](https://www.apple.com).")
                            .multilineTextAlignment(.center)

                    }
                    .padding(22)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .overlay(alignment: .topLeading){
                        Text("This is Demo")
                            .fontWeight(.heavy)
                            .foregroundStyle(.red)
                    }
                }
                Section{
                    section1
                }
                Section{
                    section2
                }
            }
#if canImport(UIKit)
            .listStyle(.insetGrouped)
#endif
            .scrollAwareTitle("Privacy & Security")
            .navigationTitle("Hello!")
        }

    }

    @ViewBuilder
    var section1: some View {
        ListRowItem(title: "Location Services", systemName: "location.app.fill", style: .blue)
        ListRowItem(title: "Traking", systemName: "hand.raised.app.fill", style: .orange)
    }

    @ViewBuilder
    var section2: some View {
        ForEach(0..<10) { index in
            ListRowItem(title: "Some App", systemName: "plus.app.fill", style: .green)
        }
    }
}

struct ListRowItem: View {
    let title: String
    let systemName: String
    let style: Color
    var body: some View {
        HStack(spacing: 16){
            Image(systemName: systemName)
                .resizable()
                .scaledToFit()
                .frame(height:30)
                .foregroundStyle(style)
                .padding(.leading,2)
            VStack(alignment: .leading){
                Text(title)
                Text("None")
                    .font(.system(size: 16))
                    .foregroundStyle(.secondary)
            }
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
