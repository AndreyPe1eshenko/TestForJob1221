import SwiftUI

struct ProductCountryOfOriginView: View {
    
    let flagImage: String
    let country: String
    
    var body: some View {
        HStack(spacing: 15) {
            Image(flagImage)
                .resizable()
                .frame(width: 25, height: 25)
                .clipShape(Circle())
            
            Text(country)
                .font(.system(size: 15))
        }
    }
}

#Preview {
    ProductCountryOfOriginView(flagImage: "flag", country: "Испания, Риоха")
}
