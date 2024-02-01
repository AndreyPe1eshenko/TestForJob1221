import SwiftUI

struct ProductByCardIndicatorView: View {
    var body: some View {
        Text("Цена по карте")
            .font(.system(size: 13))
            .foregroundColor(.white)
            .padding(.vertical, 5)
            .padding(.horizontal, 10)
            .background(.green)
            .cornerRadius(7)
    }
}

#Preview {
    ProductByCardIndicatorView()
}
