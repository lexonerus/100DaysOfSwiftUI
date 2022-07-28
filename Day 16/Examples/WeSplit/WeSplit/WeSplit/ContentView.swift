//
//  ContentView.swift
//  WeSplit
//
//  Created by Alex Krzywicki on 24.07.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var tapCount = 0
    @State private var name = ""
    @State private var selectedStudent = "Mike"
    
    let students = ["Mike", "Jane", "Timmy"]
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker("Select youe student", selection: $selectedStudent) {
                        ForEach(students, id: \.self) {
                            Text($0)
                        }
                    }
                }
                
                Section {
                    Text("Your name is \(name)")
                    Group {
                        TextField("Enter your name...", text: $name)
                    }
                }
                Section {
                    Group {
                        Text("Section 2")
                        Text("Hello, world!")
                    }
                    Group {
                        Text("Hello, world!")
                    }
                }
                Button("Tap Count: \(tapCount)") {
                    self.tapCount += 1
                }

            }
            .navigationTitle("WeSplit App")
            .navigationBarTitleDisplayMode(.large)
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
