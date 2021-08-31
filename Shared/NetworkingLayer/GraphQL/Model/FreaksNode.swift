import Foundation

typealias FreakItem = GetAllFreaksQuery.Data.Freak
typealias FreakItemNode = FreakItem.Node
typealias SkillItem = FreakItem.Node.Technology
typealias ProjectItem = FreakItem.Node.Project

extension FreakItemNode {
    var freakPhoto: String? {
        photo?.uri
    }
}

extension Skill {
    init(from skillItem: SkillItem) {
        id = skillItem.id
        name = skillItem.name
    }
}

extension Technology {
    init(from skillItem: SkillItem) {
        id = skillItem.id
        name = skillItem.name
        description = skillItem.description
    }
}

extension Project {
    init(from projectItem: ProjectItem) {
        id = projectItem.id
        name = projectItem.name
        description = projectItem.description
        technologies = []
        imageUrl = ""
    }
}

extension Freak {
    init?(freakNode: FreakItemNode) {
        id = freakNode.id
        firstName = freakNode.firstName
        lastName = freakNode.lastName
        imageName = freakNode.freakPhoto
        description = freakNode.description
        level = freakNode.level.name
        norm = freakNode.norm.name
        role = freakNode.role.name
        skills = freakNode.technologies.map { Skill(from: $0) }
        projects = freakNode.projects.map { Project(from: $0) }
        technologies = freakNode.technologies.map { Technology(from: $0) }
    }
}
