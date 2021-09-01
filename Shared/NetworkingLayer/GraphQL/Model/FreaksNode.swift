import Foundation

typealias FreakItem = GetAllFreaksQuery.Data.Freak
typealias FreakItemNode = FreakItem.Node
typealias TechnologyItem = FreakItem.Node.Technology
typealias SkillItem = FreakItem.Node.Skill
typealias ProjectItem = FreakItem.Node.Project
typealias ProjectTechnologies = ProjectItem.Technology

extension FreakItemNode {
    var freakPhoto: String? {
        photo?.uri
    }
}

extension ProjectItem {
    var projectPhoto: String? {
        logoUrl.uri
    }
}

extension Skill {
    init(from skillItem: SkillItem) {
        id = skillItem.id
        name = skillItem.name
    }
}

extension Technology {
    init(from technologyItem: TechnologyItem) {
        id = technologyItem.id
        name = technologyItem.name
        description = technologyItem.description
    }
}

extension Technology {
    init(from projectTechnologies: ProjectTechnologies) {
        id = projectTechnologies.id
        name = projectTechnologies.name
        description = projectTechnologies.description
    }
}

extension Project {
    init(from projectItem: ProjectItem) {
        id = projectItem.id
        name = projectItem.name
        description = projectItem.description
        technologies = projectItem.technologies.map { Technology(from: $0) }
        imageUrl = projectItem.projectPhoto
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
        skills = freakNode.skills.map { Skill(from: $0) }
        projects = freakNode.projects.map { Project(from: $0) }
        technologies = freakNode.technologies.map { Technology(from: $0) }
    }
}
