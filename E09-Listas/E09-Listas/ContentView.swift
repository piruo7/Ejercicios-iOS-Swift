//
//  ContentView.swift
//  E09-Listas
//
//  Created by Christian Ramirez on 15/6/24.
//

import SwiftUI

struct ContentView: View {
    
    var courses = [
        Course(name: "Swift 5", image: "swift5", author: "Lucca", rating: 1, description: "Aprende el lenguaje para crear apps de Apple"),
        Course(name: "Curso iOS 10", image: "ios10", author: "Neron", rating: 2, description: "El curso de iOS 10 con proyectos y apps reales que te ayudará a iniciarte en el mundo de las apps actuales"),
        Course(name: "Curso iOS 11", image: "ios11", author: "Connan", rating: 2, description: "Aprende a crear proyectos reales con el poder de CoreML y Firebase en nuestro curso de iOS 11"),
        Course(name: "Curso iOS 12", image: "ios12", author: "Connan", rating: 3, description: "Domina los frameworks más avanzados como Realm, CoreML 2 o PDFKit con nuestro curso de iOS 12"),
        Course(name: "Curso iOS 13", image: "ios13", author: "Neron", rating: 4, description: "Domina el sistema de Swift UI para generar interfaces de usuario rápidamente y de forma profesional")
        ]
    
    init() {
        let navbarAppearance = UINavigationBarAppearance()
        navbarAppearance.largeTitleTextAttributes = [
            .foregroundColor: UIColor.systemTeal,
            .font: UIFont(name: "ArialRoundedMTBold", size: 30)!
        ]
        navbarAppearance.titleTextAttributes = [
            .foregroundColor: UIColor.systemTeal,
            .font: UIFont(name: "ArialRoundedMTBold", size: 20)!
        ]
        
        UINavigationBar.appearance().standardAppearance = navbarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navbarAppearance
        UINavigationBar.appearance().compactAppearance = navbarAppearance
        
        navbarAppearance.setBackIndicatorImage(UIImage(systemName: "arrow.uturn.left"), transitionMaskImage: UIImage(systemName: "arrow.uturn.left"))
    }
    
    var body: some View {
        
        //List(self.courses) { course in
        //    FullImageRow(course: course)
        //    SimpleImageRow(course: course)
        //}.listStyle(.insetGrouped)
        
        NavigationStack{
            
            
            List{
                ForEach(self.courses) { course in
                    // ForEach(self.courses.indices, id: \.self) { idx in
                    // CourseRow(course: self.courses[idx])
                    
                    /*
                     if (0...1).contains(idx) {
                     FullImageRow(course: self.courses[idx])
                     } else {
                     SimpleImageRow(course: self.courses[idx])
                     }
                     */
                    
                    NavigationLink(destination: CourseDetailView(course: course)) {
                        SimpleImageRow(course: course)
                    }
                }
                .listRowSeparatorTint(.teal) // Solo aplica en los foreach
                // .listRowSeparator(.hidden)
            }
            .listStyle(.insetGrouped)
            /*.background( // .teal
                Image("ios12")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .ignoresSafeArea()
            )
            .scrollContentBackground(.hidden)*/
            .navigationTitle("Cursos iOS Developer")
            .navigationBarTitleDisplayMode(.automatic)
            
            
        }
        .tint(.teal)
    }
}

#Preview {
    ContentView()
}

struct SimpleImageRow: View {
    
    var course: Course
    
    var body: some View {
        HStack{
            
            Image(course.image)
                .resizable()
                .scaledToFill()
                .frame(width: 50, height: 50)
                .cornerRadius(25)
            
            Text(course.name)
            
        }
    }
}

struct FullImageRow: View {
    
    var course: Course
    
    var body: some View {
        ZStack{
            
            Image(course.image)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(height: 150)
                .cornerRadius(25)
                .overlay(
                    Rectangle()
                        .foregroundStyle(.gray)
                        .cornerRadius(25)
                        .opacity(0.4)
                )
            
            Text(course.name)
                .font(.system(.title, design: .rounded))
                .bold()
                .foregroundStyle(.white)
            
        }
    }
}


struct CourseRow: View {
    
    var course: Course
    
    var body: some View {
     
        VStack(alignment: .leading, spacing: 8, content: {
            Image(course.image)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 350)
                .cornerRadius(25)
            
            Text(course.name)
                .font(.system(.title, design: .rounded))
                .bold()
                .lineLimit(1)
                .padding(.bottom, 2)
            
            Text("Creado por \(course.author)".uppercased())
                .font(.system(.subheadline, design: .rounded))
                .foregroundStyle(.secondary)
                .lineLimit(1)
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
                .lineLimit(3)
                .padding(.bottom, 8)
        })
        
    }
}
