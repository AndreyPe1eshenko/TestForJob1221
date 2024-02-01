import SwiftUI

struct NavBarButton: View {
    
    let image: String
    let action: () -> ()
    
    var body: some View {
        Button {
            action()
        } label: {
            Image(systemName: image)
                .font(.system(size: 17, weight: .semibold))
        }
        .accentColor(.green)
    }
}

#Preview {
    NavBarButton(image: "person") {
        
    }
}
