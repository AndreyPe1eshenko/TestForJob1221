import SwiftUI

struct ProductCardTitleView: View {
    
    let title: String
    
    var body: some View {
        Text(title)
            .font(.system(size: 36, weight: .bold, design: .rounded))
    }
}

#Preview {
    ProductCardTitleView(title: "Добвка \"Липа\" к чаю 200 г")
}
