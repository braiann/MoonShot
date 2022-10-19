//
//  ContentView.swift
//  MoonShot
//
//  Created by Braian Villasanti on 07/10/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var gridViewModeEnabled = true
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    var body: some View {
        NavigationView {
            Group {
                if gridViewModeEnabled {
                    ScrollView {
                        GridLayout(asronauts: astronauts, missions: missions)
                        .padding([.horizontal, .bottom])
                    }
                } else {
                    ListLayout(missions: missions, astronauts: astronauts)
                }
            }
            .navigationTitle("Moonshot")
            .background(.darkBackground)
            .preferredColorScheme(.dark)
            .toolbar {
                Button {
                    gridViewModeEnabled.toggle()
                } label: {
                    gridViewModeEnabled ?
                        Image(systemName: "list.bullet") :
                        Image(systemName: "rectangle.grid.2x2")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
