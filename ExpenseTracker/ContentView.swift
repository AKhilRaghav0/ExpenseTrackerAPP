//
//  ContentView.swift
//  ExpenseTracker
//
//  Created by Akhil on 22/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ScrollView {
                VStack(alignment: .leading, spacing: 24){
                    Text("Overview")
                        .font(.title2)
                        .bold()
                }
                .padding()
                .frame(maxWidth: .infinity)
                
            }
            .background(Color.background)
            .navigationBarTitleDisplayMode(.inline )
            .toolbar {
                //MARK: Notification Icon
                ToolbarItem {
                     Image(systemName: "bell.badge")
//                        .renderingMode(.original )
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(Color.icon, .primary )
                }
            }
            
        }
        .navigationViewStyle(.stack)
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View { 
            ContentView()
        }
    }
}
