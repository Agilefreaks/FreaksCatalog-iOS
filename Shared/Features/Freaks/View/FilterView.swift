import SwiftUI

struct FilterView: View {
    @ObservedObject var viewModel: FilterViewModel
    @Binding var showSkillsView: Bool
    @Binding var showProjectsView: Bool

    var filterType: FilterType

    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(viewModel.filterItems) { item in
                        MultipleSelectionRow(name: item.name, isSelected: viewModel.isFilterItemSelected(filterItem: item, filterType: filterType)) {
                            viewModel.setupSelected(filterItem: item, filterType: filterType)
                        }
                    }
                }
                .onAppear {
                    viewModel.setupFilterItems(filterType: filterType)
                }

                Button(action: {
//                    self.showSkillsView = false
//                    self.viewModel.shouldFilterFreaks = true
                }, label: {
                    Text("Apply")
                })
                    .foregroundColor(Color("SecondaryColor"))
                    .frame(maxWidth: 150, maxHeight: 40)
                    .background(Color("AccentColor"))
                    .padding()
                    .font(.system(size: 18, weight: .bold, design: .default))
            }
            .navigationBarTitle(Text(viewModel.getTitle(filterType: filterType)), displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {
                viewModel.resetSelected(filterType: filterType)
            }) {
                Text("Reset")
                    .fontWeight(.medium)
                    .font(.system(size: 16))
            })
            .navigationBarItems(leading: Button(action: {
                showSkillsView = false
                showProjectsView = false
            }) {
                Image(systemName: "xmark")
                    .font(.system(size: 16))
            })
        }
    }
}

struct FilterView_Previews: PreviewProvider {
    static var previews: some View {
        FilterView(viewModel: FilterViewModel(), showSkillsView: .constant(true), showProjectsView: .constant(false), filterType: .skill)
        FilterView(viewModel: FilterViewModel(), showSkillsView: .constant(false), showProjectsView: .constant(false), filterType: .project)
    }
}
