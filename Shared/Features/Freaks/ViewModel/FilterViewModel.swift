import Foundation

enum FilterType {
    case skill
    case project
}

struct FilterItem {
    let id: Int
    let name: String
}

class FilterViewModel: ObservableObject {
    var skills: [Skill] = [Skill(id: 0, name: "Kotlin"), Skill(id: 1, name: "Swift"), Skill(id: 2, name: "SwiftUI"), Skill(id: 3, name: "Elm")]

    var projects: [Project] = [Project(id: 0, name: "FreaksCatalog", description: "Catalog of freaks"), Project(id: 1, name: "Epix", description: "Lorem Ipsum"), Project(id: 2, name: "ReAsig", description: "Lorem Ipsum")]

    @Published var skillSelections: [Skill] = []
    @Published var projectSelections: [Project] = []
    @Published var filterItems: [FilterItem] = []

    func getTitle(filterType: FilterType) -> String {
        filterType == .skill ? "SKILLS" : "PROJECTS"
    }

    func getFilterItems(filterType: FilterType) -> [FilterItem] {
        // Convert skills or projects to FilterItem array
        switch filterType {
        case .skill:
            filterItems = skills.map { FilterItem(id: $0.id, name: $0.name) }
        case .project:
            filterItems = projects.map { FilterItem(id: $0.id, name: $0.name) }
        }

        return filterItems
    }

    func isFilterItemSelected(filterItem: FilterItem, filterType: FilterType) -> Bool {
        switch filterType {
        case .skill:
            return skills.contains(where: { $0.id == filterItem.id })
        case .project:
            return projects.contains(where: { $0.id == filterItem.id })
        }
    }
    
    
}
