import Foundation

typealias FreakItem = GetAllFreaksQuery.Data.Freak
typealias FreakItemNode = FreakItem.Node

extension FreakItemNode {
    var freakPhoto: String? {
        photo?.uri
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
        skills = []
        projects = []
    }
}
