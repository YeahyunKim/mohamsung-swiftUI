import SwiftUI

struct SwiftUIView: View {
    @State private var selectedImageIndex = 0

    var body: some View {
        VStack {
            ScrollView(.horizontal) {
                LazyHStack(spacing: 0) {
                    ForEach(0..<imageNames.count) { index in
                        Image(imageNames[index])
                            .resizable()
                            .scaledToFit()
                            .frame(width: UIScreen.main.bounds.width)
                    }
                }
            }
            .frame(height: 200)
            .onAppear {
                UIScrollView.appearance().isPagingEnabled = true
            }

            HStack(spacing: 8) {
                ForEach(0..<imageNames.count) { index in
                    Circle()
                        .foregroundColor(selectedImageIndex == index ? .blue : .gray)
                        .frame(width: 10, height: 10)
                }
            }
            .padding(.top, 8)
            
            Text("Current Image: \(imageNames[selectedImageIndex])")
                .font(.title)
                .padding()
        }
    }

    let imageNames = ["image01", "image02"]
}


struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
