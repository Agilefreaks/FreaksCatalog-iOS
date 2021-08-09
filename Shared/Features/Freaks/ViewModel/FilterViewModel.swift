import Foundation

enum FilterType {
    case skill
    case project
}

class FilterViewModel: ObservableObject {
    var skills: [Skill] = [Skill(id: 0, name: "Kotlin"), Skill(id: 1, name: "Swift"), Skill(id: 2, name: "SwiftUI"), Skill(id: 3, name: "Elm")]
    var projects: [Project] = [Project(id: 0, name: "FreaksCatalog", description: "Catalog of freaks"), Project(id: 1, name: "Epix", description: "Lorem Ipsum"), Project(id: 2, name: "ReAsig", description: "Lorem Ipsum")]

    @Published var selectedItems: [Filterable] = []
    var filterItems: [Filterable] = []

    init(filterType: FilterType) {
        switch filterType {
        case .skill:
            filterItems = skills
        case .project:
            filterItems = projects
        }
    }

    func didTap(on item: Filterable) {
        if let index = selectedItems.firstIndex(where: {
            $0.id == item.id
        }) {
            selectedItems.remove(at: index)
        } else {
            selectedItems.append(item)
        }
    }

    func isSelected(item: Filterable) -> Bool {
        selectedItems.contains(where: { $0.id == item.id })
    }
}
