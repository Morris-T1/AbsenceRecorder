//
//  ContentView.swift
//  AbsenceRecorder
//
//  Created by Fenston Morris on 31/01/2023.
//

import SwiftUI

struct DivisionsView: View {
    var divisions: [Division]
    @EnvironmentObject var state: StateController
    @State private var currentDate: Date = Date()
    
    var body: some View {
        NavigationView {
            List(state.divisions, id: \.self.code) { division in
                NavigationLink(destination: AbsenceView(division: division)) {
                    DivisionItem(division: division)
                }
                
            }
            .navigationTitle(currentDate.getSHortDate())
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: { currentDate = currentDate.previousDay() }) {
                        Image(systemName: "arrow.backward")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: { currentDate = currentDate.nextDay() }) {
                        Image(systemName: "arrow.forward")
                    }
                }
                
                    
                
            }
            
            
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DivisionsView(divisions: Division.examples)
            .environmentObject(StateController())
    }
}
