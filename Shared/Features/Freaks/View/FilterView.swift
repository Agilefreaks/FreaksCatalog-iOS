import SwiftUI

struct FilterView: View {
    @ObservedObject var viewModel: FilterViewModel
    @Binding var showFilterView: Bool

    var title: String
    var onFilterApply: ([Filterable]) -> Void

    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(viewModel.filterItems, id: \.id) { item in
                        MultipleSelectionRow(name: item.name, isSelected: viewModel.isSelected(item: item)) {
                            viewModel.didTap(on: item)
                        }
                    }
                }

                Button(action: {
                    onFilterApply(viewModel.selectedItems)

                    showFilterView = false
                }, label: {
                    Text("Apply")
                })
                    .foregroundColor(Color("SecondaryColor"))
                    .frame(maxWidth: 150, maxHeight: 40)
                    .background(Color("AccentColor"))
                    .padding()
                    .font(.system(size: 18, weight: .bold, design: .default))
            }
            .navigationBarTitle(title, displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {
                viewModel.selectedItems.removeAll()
            }) {
                Text("Reset")
                    .fontWeight(.medium)
                    .font(.system(size: 16))
            })
            .navigationBarItems(leading: Button(action: {
                showFilterView = false
            }) {
                Image(systemName: "xmark")
                    .font(.system(size: 16))
            })
        }
    }
}
