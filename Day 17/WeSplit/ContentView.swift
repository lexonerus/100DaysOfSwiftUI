//
//  ContentView.swift
//  WeSplit
//
//  Created by Alex Krzywicki on 24.07.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount      = 0.0
    @State private var numberOfPeople   = 2
    @State private var tipPercentage    = [10, 15, 20, 25, 0]
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                        .keyboardType(.decimalPad)
                }
                Section {
                    Text(checkAmount, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                }
            }

        }
            .navigationBarTitleDisplayMode(.large)
        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
