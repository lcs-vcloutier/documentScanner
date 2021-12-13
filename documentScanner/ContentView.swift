//
//  ContentView.swift
//  documentScanner
//
//  Created by Vincent Cloutier on 2021-12-13.
//

import SwiftUI

struct ContentView: View {
    @State private var showScannerSheet = false
    var body: some View {
        NavigationView {
            VStack {
                
            }
            .navigationTitle("Scanner")
            .navigationBarItems(trailing:
            Button(action: {
                self.showScannerSheet = true
            }, label: {
                Image(systemName: "doc.text.viewfinder")
                    .font(.title)
            }))
            .sheet(isPresented: $showScannerSheet) {
                
            }
        }
    }
}
