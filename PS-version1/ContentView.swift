//
//  ContentView.swift
//  PS-version1
//
//  Created by NATALIE CHEN HUI REGINA RUZSICSK stu on 18/7/22.
//

import SwiftUI

struct ContentView: View {
    
    // what is searched in the search bar
    @State private var searchText = ""
    
    // custom colour modifiers
    init() {
        UISearchBar.appearance().tintColor = UIColor.init(Colours.coolblue)
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.init(Colours.coolblue)]
        UITextField.appearance(whenContainedInInstancesOf: [UISearchBar.self]).backgroundColor = UIColor.init(Colours.coolblue)
        UITextField.appearance(whenContainedInInstancesOf: [UISearchBar.self]).tintColor = .black
        UITextField.appearance(whenContainedInInstancesOf: [UISearchBar.self]).attributedPlaceholder = NSAttributedString(string: "placeholder", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        (UITextField.appearance(whenContainedInInstancesOf: [UISearchBar.self]) ).defaultTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
        UIListContentView.appearance().backgroundColor = .cyan
        UIListContentView.appearance().tintColor = .yellow
        UIScrollView.appearance().backgroundColor = .white
        UITabBar.appearance().unselectedItemTintColor = .black
    }
    
    
    var body: some View {
        NavigationView {
            List(hospitals) { hospital in
                NavigationLink(destination: HospitalView(hospital: hospital)) {
                    VStack {
                        Image(hospital.image)
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(20)
                            .frame(alignment: .center)
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Colours.coolblue, lineWidth: 4)
                            )
                        Text(hospital.name)
                            .bold()
                            .font(.title)
                            .foregroundColor(.indigo)
                    }
                }
                .listRowBackground(Colours.lightblue)
                .listRowSeparatorTint(.black)
                .listItemTint(.white)
                .accentColor(colour)
            }
            .navigationTitle("Welcome to Medind!")
            .searchable(text: $searchText)
            .listItemTint(.white)
            .textInputAutocapitalization(.never)
            .accentColor(colour)
        }
        // changing the colour of the nav buttons
        .accentColor(colour)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
