//
//  ContentView.swift
//  documentScanner
//
//  Created by Vincent Cloutier on 2021-12-13.
//

import SwiftUI

struct ContentView: View {
    @State private var showScannerSheet = false
    @State private var texts: [ScanData] = []
    var body: some View {
        NavigationView {
            VStack {
                if texts.count > 0 {
                    List {
                        ForEach(texts) { text in
                            NavigationLink {
                                ScrollView {
                                    Text(text.content)
                                }
                            } label: {
                                Text(text.content).lineLimit(1)
                            }
                        }
                    }
                }
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
