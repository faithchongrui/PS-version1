//
//  OthersView.swift
//  PS-version1
//
//  Created by NATALIE CHEN HUI REGINA RUZSICSK stu on 19/8/22.
//

import SwiftUI

struct DoctorsView: View {
    
    var doctor: DoctorProfile
    
    @State var doctornumber = 0
    @State private var searchText = ""
    
    var body: some View {
            List {
                ForEach(0..<doctors.count, id: \.self) { doctor in
                    NavigationLink(destination: DoctorDetailView()) {
                        HStack {
                            Image(doctors[doctornumber % doctors.count].pfp)
                                .resizable()
                                .scaledToFit()
                                .frame(alignment: .center)
                                .clipShape(Circle())
                                .padding(.trailing)
                            VStack {
                                Text(doctors[doctornumber % doctors.count].name)
                                    .bold()
                                    .font(.title)
                                    .foregroundColor(.indigo)
                                Text(doctors[doctornumber % doctors.count].department)
                                    .foregroundColor(.indigo)
                                Text(doctors[doctornumber % doctors.count].email)
                                    .foregroundColor(.indigo)
                            }
                            .padding()
                        }
                    }
                    .listRowBackground(Colours.lightblue)
                    .listRowSeparatorTint(.black)
                    .listItemTint(.white)
                    .accentColor(colour)
                   
                }
                
            }
            .navigationTitle("Doctors")
            .searchable(text: $searchText)
            .listItemTint(.white)
            .textInputAutocapitalization(.never)
    }
}

struct DoctorsView_Previews: PreviewProvider {
    static var previews: some View {
        DoctorsView(doctor: doctors[0])
    }
}
