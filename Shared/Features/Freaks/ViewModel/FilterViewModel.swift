import Foundation

enum FilterType {
    case technology
    case project
}

class FilterViewModel: ObservableObject {
    var skills: [Technology] = [Technology(id: "0", name: "iOS", description: "test"), Technology(id: "1", name: "Swift", description: "test"), Technology(id: "2", name: "SwiftUI", description: "test"), Technology(id: "3", name: "Android", description: "test"), Technology(id: "4", name: "Kotlin", description: "test"), Technology(id: "5", name: "JavaScript", description: "test"), Technology(id: "6", name: "Solidity", description: "test"), Technology(id: "7", name: "Ruby", description: "test"), Technology(id: "8", name: "GraphQL", description: "test"), Technology(id: "9", name: "SCSS", description: "test"), Technology(id: "10", name: "Tester", description: "test")].sorted(by: { $0.name.lowercased() < $1.name.lowercased() })

    var projects: [Project] = [Project(id: "1", name: "FreaksCatalog", description: "Catalog of freaks", technologies: [Technology(id: "0", name: "test", description: "test")], imageUrl: "chad"), Project(id: "0", name: "EPIX", description: "Lorem Ipsum", technologies: [Technology(id: "0", name: "test", description: "test")], imageUrl: "chad"), Project(id: "2", name: "reAsig", description: "Lorem Ipsum", technologies: [Technology(id: "0", name: "test", description: "test")], imageUrl: "chad"), Project(id: "3", name: "UNGC", description: "Lorem ipsum", technologies: [Technology(id: "0", name: "test", description: "test")], imageUrl: "chad")].sorted(by: { $0.name.lowercased() < $1.name.lowercased() })

    @Published var selectedItems: [Filterable] = []
    var filterItems: [Filterable] = []

    init(filterType: FilterType, preselectedItems: [Filterable]) {
        switch filterType {
        case .technology:
            filterItems = skills
        case .project:
            filterItems = projects
        }

        selectedItems = preselectedItems
    }

    func didTap(on item: Filterable) {
        if isSelected(item: item) {
            selectedItems.removeAll(where: { $0.id == item.id })
        } else {
            selectedItems.append(item)
        }
    }

    func isSelected(item: Filterable) -> Bool {
        selectedItems.contains(where: { $0.id == item.id })
    }
}
