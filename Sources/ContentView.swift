import SwiftUI
import SDWebImageSwiftUI

struct ContentView: View {
    let url = URL(string: "https://avatars.githubusercontent.com/u/6060466")
    
    var avatar: some View {
        WebImage(url: url)
            .resizable()
            .scaledToFit()
            .padding(6)
            .clipShape(Circle())
            .overlay(Circle()
                        .strokeBorder()
                        .foregroundStyle(.quaternary))
    }
    
    var body: some View {
        VStack(spacing: 12) {
            avatar
                .frame(width: 150)
            
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
