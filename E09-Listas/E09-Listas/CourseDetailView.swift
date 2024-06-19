//
//  CourseDetailView.swift
//  E09-Listas
//
//  Created by Christian Ramirez on 17/6/24.
//

import SwiftUI

struct CourseDetailView: View {
    
    @Environment(\.dismiss) var dismiss // Oculta vista actual
    
    var course: Course

    var body: some View {
        VStack(alignment: .leading, spacing: 8, content: {
            
            Image(course.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(25)
            
            Text(course.name)
                .font(.system(.title, design: .rounded))
                .bold()
                .padding(.bottom, 2)
            
            Text("Creado por \(course.author)".uppercased())
                .font(.system(.headline, design: .rounded))
                .foregroundStyle(.secondary)
                .padding(.bottom, 2)
            
            
            HStack(spacing: 6) {
                ForEach(1...(course.rating), id: \.self) { _ in
                    Image(systemName: "star.fill")
                        .font(.caption)
                        .foregroundStyle(.teal)
                }
            }

            Text(course.description)
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .padding(.bottom, 8)

            
            Spacer()
            
        })
        .padding()
        .navigationBarBackButtonHidden(true)
        .toolbar{
            ToolbarItem(placement: .topBarLeading) {
                Button() {
                    dismiss()
                } label: {
                    Text("\(Image(systemName: "arrow.uturn.left"))\(course.name)")
                        .foregroundStyle(.teal)
                }
            }
        }

    }
}


#Preview {
    CourseDetailView(course: Course(name: "Swift 5", image: "swift5", author: "Lucca", rating: 1, description: "Aprende el lenguaje para crear apps de Apple"))
}
