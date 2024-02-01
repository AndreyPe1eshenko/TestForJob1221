import SwiftUI

struct ProductAddItemView: View {
    
    @State private var pickerItem: PickerValue = .piece
    
    let pricePerKilogram: String
    let pricePerPiece: String
    
    var body: some View {
        VStack {
            Picker(selection: $pickerItem, label: Text("Picker")) {
                ForEach(PickerValue.allCases, id: \.self) { value in
                    Text(value.rawValue)
                        .fontWeight(.semibold)
                }
            }
            .pickerStyle(.segmented)
            
            HStack {
                VStack(alignment: .leading) {
                    HStack {
                        Text(pickerItem == .piece ? pricePerKilogram : pricePerPiece)
                            .font(.system(size: 36, weight: .bold, design: .rounded))
                        
                        Text(pickerItem == .piece ? "₽/кг" : "₽/шт")
                            .font(.system(size: 16, weight: .bold, design: .rounded))
                    }
                    
                    Text(pickerItem == .piece ? "199,9" : "499,99")
                        .foregroundColor(.gray)
                        .strikethrough(true, color: .gray)
                        .font(.system(size: 13))
                }
                
                Spacer()
                
                ZStack {
                    HStack(spacing: 90) {
                        Button {
                            // Action
                        } label: {
                            Image(systemName: "minus")
                        }
                        
                        Button {
                            // Action
                        } label: {
                            Image(systemName: "plus")
                        }
                    }
                    .fontWeight(.semibold)
                    
                    VStack(spacing: 3) {
                        Text("1 \(pickerItem == .piece ? "шт" : "кг")")
                            .fontWeight(.bold)
                        
                        Text("\(pickerItem == .piece ? pricePerPiece : pricePerKilogram) ₽")
                            .font(.system(size: 13))
                    }
                    .font(.system(size: 15))
                }
                .foregroundColor(.white)
                .padding(.horizontal, 20)
                .padding(.vertical, 5)
                .background(.green)
                .clipShape(Capsule())
            }
            .padding(.top, 10)
            .padding(.bottom, 20)
        }
    }
}

extension ProductAddItemView {
    enum PickerValue: String, CaseIterable {
        case piece = "ШТ"
        case kilogram = "КГ"
    }
}

#Preview {
    ProductAddItemView(pricePerKilogram: "59.5", pricePerPiece: "120")
}
