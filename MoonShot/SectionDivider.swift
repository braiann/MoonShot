//
//  SectionDivider.swift
//  MoonShot
//
//  Created by Braian Villasanti on 19/10/2022.
//

import SwiftUI

struct SectionDivider: View {
    var body: some View {
        Rectangle()
            .frame(height: 2)
            .foregroundColor(.lightBackground)
            .padding(.vertical)
    }
}

struct SectionDivider_Previews: PreviewProvider {
    static var previews: some View {
        SectionDivider()
    }
}
