//
//  ScanData.swift
//  documentScanner
//
//  Created by Vincent Cloutier on 2021-12-13.
//

import Foundation

struct ScanData: Identifiable {
    var id = UUID()
    let content: String
    
    init(content: String) {
        self.content = content
    }
}
