//
//  ListLayout.swift
//  MoonShot
//
//  Created by Braian Villasanti on 19/10/2022.
//

import SwiftUI

struct ListLayout: View {
    let missions: [Mission]
    let astronauts: [String: Astronaut]
    
    var body: some View {
        List(missions) { mission in
            NavigationLink {
                MissionView(mission: mission, astronauts: astronauts)
            } label: {
                HStack {
                    Image(mission.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 70, height: 70)
                    VStack(alignment: .leading) {
                        Text(mission.displayName)
                            .font(.title2)
                            .fontWeight(.bold)
                        Text(mission.formattedLaunchDate)
                            .foregroundColor(.secondary)
                    }
                    .padding(.horizontal)
                }
            }
            .listRowBackground(Color.lightBackground)
        }
        .scrollContentBackground(.hidden)
    }
}

struct ListLayout_Previews: PreviewProvider {
    static let missions: [Mission] = Bundle.main.decode("missions.json")
    static let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    static var previews: some View {
        ListLayout(missions: missions, astronauts: astronauts)
    }
}
