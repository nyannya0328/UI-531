//
//  Home.swift
//  UI-531
//
//  Created by nyannyan0328 on 2022/04/04.
//

import SwiftUI

struct Home: View {
    @State var currentIndex : Int = 0
    var body: some View {
        ZStack{
            
            
            TabView(selection: $currentIndex) {
                
                
                ForEach(posts.indices,id:\.self){index in
                    
                    GeometryReader{proxy in
                        
                        let size = proxy.size
                        
                        Image(posts[index].postImage)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: size.width, height: size.height)
                            .cornerRadius(10)
                            .clipped()
                            .tag(index)
                    }
                    .ignoresSafeArea()
                    
                }
                
              
                
                
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
         
            .overlay {
                
                LinearGradient(colors: [
                    .clear,
                    .black.opacity(0.3),
                    .white.opacity(0.6)
                
                
                
                ] + Array(repeating: .white, count: 3), startPoint: .top, endPoint: .bottom)
            }
            .offset(y: -100)
            .ignoresSafeArea()
            
            
            SnapCarouselView(spacing: 15, trailingSpace: 100, index: $currentIndex, items: posts) { post in
                
                CardView(post: post)
                
                
            }
            .frame(height:getRect().height / 3.5)
            
            
            
            
         
            
            
        }
             
    }
    @ViewBuilder
    func CardView(post : Post)->some View{
        
        VStack {
            GeometryReader{proxy in
                
                
                let size = proxy.size
                
                Image(post.postImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: size.width, height: size.height)
                    .cornerRadius(15)
                
                
                
                
            }
            .padding(15)
            .frame(height:getRect().height / 2.5)
            .background(.white)
            .cornerRadius(10)
            .shadow(color: .black.opacity(0.4), radius: 5, x: 5, y: 5)
            .shadow(color: .black.opacity(0.4), radius: 5, x: -5, y: -5)
            
            Text(post.title)
                .font(.largeTitle.weight(.black))
            
            HStack(spacing:15){
                
                ForEach(1...5,id:\.self){index in
                    
                    Image(systemName: "star.fill")
                        .foregroundColor(index <= post.starRating ? .yellow : .gray)
                    
                }
                
                Text("(\(post.starRating).0)")
                    .font(.footnote.weight(.regular))
                
               
            }
            .padding([.top,.bottom])
                
            
            Text(post.discription)
                .font(.callout.weight(.semibold))
            
            
            
        }
        
        
    }
    
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
extension View{
    
    func getRect()->CGRect{
        
        return UIScreen.main.bounds
    }
}


