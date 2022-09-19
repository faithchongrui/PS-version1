//
//  DoctorView.swift
//  PS-version1
//
//  Created by NATALIE CHEN HUI REGINA RUZSICSK stu on 18/7/22.
//

import SwiftUI

struct DoctorDetailView: View {
    var body: some View {
        
        // background image
        ZStack(alignment: .top) {
            Image("background2")
                .scaledToFit()
                .opacity(0.2)
                .background(.white)
                .ignoresSafeArea(.all)
            
            VStack {
    //            NavigationLink(destination: AppointmentView()) {
    //                VStack {
    //                    Text("Appointments")
    //                        .font(.title)
    //                    Text("(Book, Reschedule, Cancel)")
    //                        .font(.body)
    //                }
    //                .frame(width: 350, height: 100)
    //                .foregroundColor(.white)
    //                .background(.gray)
    //                .cornerRadius(15)
    //            }
                
                HStack {
                    // doctor picture
//                    Image(systemName: "circle.fill")
//                        .resizable()
//                        .scaledToFit()
//                        .padding()
                    Image(doctors[DoctorsView(doctor: doctors[1]).doctornumber % doctors.count].pfp)
                        .resizable()
                        .scaledToFit()
                        .frame(alignment: .center)
                        .clipShape(Circle())
                        .padding(.trailing)
                    
                    // information
                    VStack(alignment: .leading) {
                        Text(doctors[DoctorsView(doctor: doctors[0]).doctornumber % doctors.count].name)
                            .bold()
                            .font(.title)
                            .foregroundColor(.white)
                        Text(doctors[DoctorsView(doctor: doctors[0]).doctornumber % doctors.count].qualifications)
                            .bold()
                        Text(doctors[DoctorsView(doctor: doctors[0]).doctornumber % doctors.count].department)
                            .bold()
                        Text(doctors[DoctorsView(doctor: doctors[0]).doctornumber % doctors.count].email)
                            .bold()
                    }
                    .padding(.trailing)
                }
                .frame(width: 400, height: 200)
                .foregroundColor(.white)
                .background(colour)
                .cornerRadius(20)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(.white, lineWidth: 4)
                )

                // buttons to service information
                NavigationLink(destination: ServicesView()) {
                    VStack {
                        Text("Services Available")
                            .font(.title)
                        Text("(Practices, Counselling)")
                            .font(.body)
                    }
                    .frame(width: 400, height: 150)
                    .foregroundColor(textColour)
                    .background(backgroundColour)
                    .cornerRadius(20)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(.white, lineWidth: 4)
                    )
                }

                // buttons to other information
                NavigationLink(destination: SimilarView()) {
                    VStack {
                        Text("Similar:")
                            .font(.title)
                        Text("(Doctors, Services)")
                            .font(.body)
                    }
                    .frame(width: 400, height: 150)
                    .foregroundColor(textColour)
                    .background(secondaryBackgroundColour)
                    .cornerRadius(20)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(.white, lineWidth: 4)
                    )
                }

                // button to show a route to the doctor's office / clinic
                Button {
                    // code
                } label: {
                    Text("Locate")
                        .bold()
                        .frame(width: 400, height: 50)
                        .font(.title)
                        .foregroundColor(.white)
                        .background(tertiaryBackgroundColour)
                        .cornerRadius(20)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(.white, lineWidth: 4)
                        )
                }
            }
        }
        .padding(.top, 150)
    }
}

struct DoctorDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DoctorDetailView()
    }
}
