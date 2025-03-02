//
//  Untitled.swift
//  hw_42_SwiftUI
//
//  Created by Alena  on 2.03.25.
//
import SwiftUI

struct ProfileContentView: View {
    
    var body: some View {
        ProfileCard()
    }
}
    #Preview {
        ProfileContentView()
    }

struct ProfileCard: View {
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var email: String = ""
    @State private var dateOfBirth: String = ""
    @State private var gender: String = ""
    
    private var genders = [
        GenderModel(name: "Male"),
        GenderModel(name: "Female")
        ]
    @State private var selectedGender: String? = nil
    
    var body: some View {
        Form {
            VStack {
                Text("Profile")
                    .font(.title)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                
                ZStack(alignment: .bottomTrailing) {
                    Image("ProfileImage")
                        .resizable()
                        .frame(width: 100, height: 100, alignment: .center)
                        .foregroundStyle(.secondary)
                    Image(systemName: "pencil.circle.fill")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundStyle(Color.indigo)
                }
                .padding(15)
            }

            VStack {
                Text("First Name")
                    .font(.body)
                    .frame(maxWidth: .infinity, alignment: .leading)
                TextField("Enter your first name", text: $firstName)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(20)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            
            VStack {
                Text("Last Name")
                    .font(.body)
                    .frame(maxWidth: .infinity, alignment: .leading)
                TextField("Enter your last name", text: $lastName)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(20)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            
            VStack {
                Text("E-mail")
                    .font(.body)
                    .frame(maxWidth: .infinity, alignment: .leading)
                TextField("Enter your e-mail", text: $email)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(20)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            
            VStack {
                Text("Date of Birth")
                    .font(.body)
                    .frame(maxWidth: .infinity, alignment: .leading)
                TextField("Enter your date of birth", text: $dateOfBirth)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(20)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            
            
            VStack {
                Text("Gender")
                    .font(.body)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    HStack {
                        ForEach(genders, id: \.id) { item in
                            GenderView(item: item, selectedGender: $selectedGender)
                        }
                    }
                
            }
            
            VStack {
                Text("Location")
                    .font(.body)
                    .frame(maxWidth: .infinity, alignment: .leading)
                TextField("Lorem ipsum is simply dummy text of the printing and typesetting industry.", text: $dateOfBirth)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(20)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)

            
            Button("Save Changes") {
                
            }
            .buttonStyle(.plain)
            .foregroundStyle(.white)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .background(Color.indigo)
            .cornerRadius(20)
        }
        .cornerRadius(10)
    }
}

struct GenderView: View {
    var item: GenderModel
    @Binding var selectedGender: String?
       
       var body: some View {
           Button(action: {
//не работает, решить
               if selectedGender == item.name {
                   selectedGender = nil
               } else {
                   selectedGender = item.name
               }
//            item.isFavorite.toggle()
        }) {
            HStack {
                Image(systemName: selectedGender == item.name ? "checkmark.circle.fill" : "circle")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .foregroundColor(.indigo)
                Text(item.name)
                    .font(.body)
            }
            .padding([.top, .bottom, .leading ], 15)
            .padding(.trailing, 50)
            .frame(maxWidth: .infinity)
            .background(Color.gray.opacity(0.2))
            .cornerRadius(25)
        }
    }
}

