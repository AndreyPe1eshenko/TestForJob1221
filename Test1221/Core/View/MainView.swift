import SwiftUI

struct MainView: View {
    
    @StateObject private var productCardViewModel = ProductCardViewModel()
    
    @State private var selection = "Главная"
 
    private let titles = ["Главная", "Каталог", "Корзина", "Профиль"]
    private let images = ["house", "square.grid.2x2", "basket", "person"]
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        VStack {
            TabView(selection: $selection) {
                ProductCardView(productCardViewModel: productCardViewModel)
                    .tag("Главная")
                
                Text("Каталог")
                    .tag("Каталог")
                
                Text("Корзина")
                    .tag("Корзина")
                
                Text("Профиль")
                    .tag("Профиль")
            }
            
            VStack {
                if selection == "Главная" {
                    ProductAddItemView(
                        pricePerKilogram: productCardViewModel.productCard.pricePerKilogram,
                        pricePerPiece: productCardViewModel.productCard.pricePerPiece
                    )
                    .padding(.horizontal)
                }
                
                HStack {
                    ForEach(0..<titles.count, id: \.self) { index in
                        HStack {
                            Spacer()
                            
                            TabBarItem(
                                title: titles[index],
                                image: images[index],
                                selection: $selection
                            )
                            
                            Spacer()
                        }
                    }
                }
            }
            .padding(.top, 10)
            .background(.white)
        }
    }
}

struct Tabs: Hashable {
    let title: String
    let image: String
}

#Preview {
    MainView()
}
