import Foundation

enum FilterType {
    case skill
    case project
}

class FilterViewModel: ObservableObject {
    var skills: [Skill] = [Skill(id: "0", name: "iOS"), Skill(id: "1", name: "Swift"), Skill(id: "2", name: "SwiftUI"), Skill(id: "3", name: "Android"), Skill(id: "4", name: "Kotlin"), Skill(id: "5", name: "JavaScript"), Skill(id: "6", name: "Solidity"), Skill(id: "7", name: "Ruby"), Skill(id: "8", name: "GraphQL"), Skill(id: "9", name: "SCSS"), Skill(id: "10", name: "Tester")]
    var projects: [Project] = [Project(id: "1", name: "FreaksCatalog", description: "Catalog of freaks"), Project(id: "0", name: "EPIX", description: "Lorem Ipsum"), Project(id: "2", name: "reAsig", description: "Lorem Ipsum"), Project(id: "3", name: "UNGC", description: "Lorem ipsum")]

    @Published var selectedItems: [Filterable] = []
    var filterItems: [Filterable] = []

    init(filterType: FilterType, preselectedItems: [Filterable]) {
        switch filterType {
        case .skill:
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
