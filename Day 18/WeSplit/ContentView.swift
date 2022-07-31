//
//  ContentView.swift
//  WeSplit
//
//  Created by Alex Krzywicki on 24.07.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount      = 0.0
    @State private var numberOfPeople   = 0
    @State private var tipPercentage    = 20
    
    @FocusState private var amountIsFocused: Bool
    
    let tipPercentages = [0, 10, 15, 20, 25]
    let currencyFormatter = FloatingPointFormatStyle<Double>.Currency.currency(code: Locale.current.currencyCode ?? "USD")
    
    var grandTotal: Double {
        let tipValue = checkAmount / 100 * Double(tipPercentage)
        let total = checkAmount + tipValue
        
        return total
    }
    
    var totalPerPerson: Double {
        let peopleCount = Double(numberOfPeople + 1)
        let amountPerPerson = self.grandTotal / peopleCount

        return amountPerPerson
    }

    
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)
                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(1..<100) {
                            Text("\($0) people")
                        }
                    }
                } header: {
                    Text("Check total")
                }
                Section {
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(0..<101, id: \.self) {
                            Text($0, format: .percent)
                        }
                    }
                } header: {
                    Text("How much tip do you want to leave?")
                }
                Section {
                    Text(grandTotal, format: currencyFormatter)
                } header: {
                    Text("Total amount")
                }
                Section {
                    Text(totalPerPerson, format: currencyFormatter)
                } header: {
                    Text("Amount per person")
                }
            }
            .navigationTitle("WeSplit")
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    
                    Button("Done") {
                        amountIsFocused = false
                    }
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
