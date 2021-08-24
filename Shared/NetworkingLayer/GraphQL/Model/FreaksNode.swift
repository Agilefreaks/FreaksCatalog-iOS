import Foundation

typealias FreakItem = GetAllFreaksQuery.Data.Freak
typealias FreakItemEdges = FreakItem.Edge
typealias FreakItemNode = FreakItemEdges.Node

extension FreakItemNode {
    var freakPhoto: String? {
        photo?.uri
    }
}

extension Freak {
    init?(freakNode: FreakItemNode?) {
        guard let freak = freakNode else {
            return nil
        }

        id = freak.id
        firstName = freak.firstName
        lastName = freak.lastName
        imageName = freak.freakPhoto
        description = freak.description
        level = freak.level.name
        norm = freak.norm.name
        role = freak.role.name
        skills = []
        projects = []
    }
}
