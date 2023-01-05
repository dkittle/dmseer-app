//
//  File.swift
//  
//
//  Created by Don Kittle on 2022-12-15.
//

import SwiftUI

struct ErrorView: View {
    var error: Error
    
    var body: some View {
        Text("Error encountered: \(error.localizedDescription)")
    }
}
