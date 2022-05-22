import SwiftUI

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ContentView: View {
    var body: some View {
        ZStack {
            
            Image("oslo")
                .resizable()
                .scaledToFill()
                .frame(maxWidth: UIScreen.main.bounds.width)
            
            VStack {
                VStack {
                HStack {
                    Spacer()
                    Circle().fill(.green).frame(width: 4, height: 4)
                }
                .padding(.top, 8)
                .padding(.trailing, 70)
                    Spacer()
                // top
                HStack {
                    Image(systemName: "bolt.circle")
                    Spacer()
                    Image(systemName: "chevron.up")
                        .font(.callout)
                        .background(Circle().fill(Color.white).frame(width: 24, height: 24).opacity(0.2))
                    Spacer()
                    Image(systemName: "livephoto")
                }
                .padding(.bottom)
                }
                .padding(.horizontal)
                .frame(maxWidth: .infinity, maxHeight: 100)
                .background(Color.black.opacity(0.7))
                .foregroundColor(.white)
                
                Spacer()
                
                // zooms
                HStack(alignment: .center, spacing: 8) {
                    Circle()
                        .fill(Color.black)
                        .frame(width: 32, height: 32)
                        .opacity(0.8)
                        .overlay(Text("0.5")
                            .font(.system(size: 10, weight: .medium, design: .default)))
                        .foregroundColor(.white)
                    
                    Circle()
                        .fill(Color.black)
                        .frame(width: 40, height: 40)
                        .opacity(0.8)
                        .overlay(Text("1x")
                            .font(.system(size: 14, weight: .bold, design: .default)))
                        .foregroundColor(.yellow)
                    
                        
                    Circle()
                        .fill(Color.black)
                        .frame(width: 32, height: 32)
                        .opacity(0.8)
                        .overlay(Text("3")
                            .font(.system(size: 10, weight: .medium, design: .default)))
                        .foregroundColor(.white)
                        
                }
                
                VStack {
                HStack {
                    Text("cinematic".uppercased())
                    Spacer()
                    Text("video".uppercased())
                    Spacer()
                    Text("photo".uppercased())
                        .foregroundColor(.yellow)
                    Spacer()
                    Text("portrait".uppercased())
                    Spacer()
                    Text("pano".uppercased())
                }
                .frame(maxWidth: .infinity)
                .font(.system(size: 14, weight: .medium, design: .default))
                .foregroundColor(.white)
                .padding(.top)
                
                    Spacer()
                // bottom
                HStack {
                    Image("oslo")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .cornerRadius(8)
                    
                    Spacer()
                    
                    Circle()
                        .frame(width: 60, height: 60)
                        .overlay(Circle().stroke(Color.white, lineWidth: 2).scaleEffect(1.15))
                    
                    Spacer()
                    
                    Image(systemName: "arrow.triangle.2.circlepath")
                        .padding(12)
                        .background(Circle().fill(Color.white).opacity(0.1))
                }
                    Spacer()
                }
                .padding(.horizontal)
                .frame(maxWidth: .infinity, maxHeight: 200)
                .background(Color.black.opacity(0.7))
                .foregroundColor(.white)
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}


