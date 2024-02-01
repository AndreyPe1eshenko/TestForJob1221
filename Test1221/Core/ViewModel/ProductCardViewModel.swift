import SwiftUI

final class ProductCardViewModel: ObservableObject {
    @Published var productCard: ProductСardModel
    
    init() {
        productCard = ProductСardModel.MOCK_CARD
    }
}
