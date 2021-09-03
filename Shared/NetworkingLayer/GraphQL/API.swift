// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class GetAllFreaksQuery: GraphQLQuery {
    /// The raw GraphQL definition of this operation.
    public let operationDefinition: String =
        """
        query GetAllFreaks {
          freaks {
            __typename
            nodes {
              __typename
              id
              firstName
              lastName
              description
              level {
                __typename
                name
              }
              norm {
                __typename
                name
              }
              role {
                __typename
                name
              }
              photo {
                __typename
                uri
              }
              skills {
                __typename
                id
                name
              }
              technologies {
                __typename
                id
                name
                description
              }
              projects {
                __typename
                id
                name
                description
                logoUrl {
                  __typename
                  uri
                }
                technologies {
                  __typename
                  id
                  name
                  description
                }
              }
            }
          }
        }
        """

    public let operationName: String = "GetAllFreaks"

    public init() {}

    public struct Data: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Query"]

        public static var selections: [GraphQLSelection] {
            [
                GraphQLField("freaks", type: .nonNull(.object(Freak.selections))),
            ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
            resultMap = unsafeResultMap
        }

        public init(freaks: Freak) {
            self.init(unsafeResultMap: ["__typename": "Query", "freaks": freaks.resultMap])
        }

        public var freaks: Freak {
            get {
                Freak(unsafeResultMap: resultMap["freaks"]! as! ResultMap)
            }
            set {
                resultMap.updateValue(newValue.resultMap, forKey: "freaks")
            }
        }

        public struct Freak: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["FreakConnection"]

            public static var selections: [GraphQLSelection] {
                [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("nodes", type: .list(.object(Node.selections))),
                ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
                resultMap = unsafeResultMap
            }

            public init(nodes: [Node?]? = nil) {
                self.init(unsafeResultMap: ["__typename": "FreakConnection", "nodes": nodes.flatMap { (value: [Node?]) -> [ResultMap?] in value.map { (value: Node?) -> ResultMap? in value.flatMap { (value: Node) -> ResultMap in value.resultMap } } }])
            }

            public var __typename: String {
                get {
                    resultMap["__typename"]! as! String
                }
                set {
                    resultMap.updateValue(newValue, forKey: "__typename")
                }
            }

            /// A list of nodes.
            public var nodes: [Node?]? {
                get {
                    (resultMap["nodes"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Node?] in value.map { (value: ResultMap?) -> Node? in value.flatMap { (value: ResultMap) -> Node in Node(unsafeResultMap: value) } } }
                }
                set {
                    resultMap.updateValue(newValue.flatMap { (value: [Node?]) -> [ResultMap?] in value.map { (value: Node?) -> ResultMap? in value.flatMap { (value: Node) -> ResultMap in value.resultMap } } }, forKey: "nodes")
                }
            }

            public struct Node: GraphQLSelectionSet {
                public static let possibleTypes: [String] = ["Freak"]

                public static var selections: [GraphQLSelection] {
                    [
                        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                        GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
                        GraphQLField("lastName", type: .nonNull(.scalar(String.self))),
                        GraphQLField("description", type: .nonNull(.scalar(String.self))),
                        GraphQLField("level", type: .nonNull(.object(Level.selections))),
                        GraphQLField("norm", type: .nonNull(.object(Norm.selections))),
                        GraphQLField("role", type: .nonNull(.object(Role.selections))),
                        GraphQLField("photo", type: .object(Photo.selections)),
                        GraphQLField("skills", type: .nonNull(.list(.nonNull(.object(Skill.selections))))),
                        GraphQLField("technologies", type: .nonNull(.list(.nonNull(.object(Technology.selections))))),
                        GraphQLField("projects", type: .nonNull(.list(.nonNull(.object(Project.selections))))),
                    ]
                }

                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                    resultMap = unsafeResultMap
                }

                public init(id: GraphQLID, firstName: String, lastName: String, description: String, level: Level, norm: Norm, role: Role, photo: Photo? = nil, skills: [Skill], technologies: [Technology], projects: [Project]) {
                    self.init(unsafeResultMap: ["__typename": "Freak", "id": id, "firstName": firstName, "lastName": lastName, "description": description, "level": level.resultMap, "norm": norm.resultMap, "role": role.resultMap, "photo": photo.flatMap { (value: Photo) -> ResultMap in value.resultMap }, "skills": skills.map { (value: Skill) -> ResultMap in value.resultMap }, "technologies": technologies.map { (value: Technology) -> ResultMap in value.resultMap }, "projects": projects.map { (value: Project) -> ResultMap in value.resultMap }])
                }

                public var __typename: String {
                    get {
                        resultMap["__typename"]! as! String
                    }
                    set {
                        resultMap.updateValue(newValue, forKey: "__typename")
                    }
                }

                public var id: GraphQLID {
                    get {
                        resultMap["id"]! as! GraphQLID
                    }
                    set {
                        resultMap.updateValue(newValue, forKey: "id")
                    }
                }

                public var firstName: String {
                    get {
                        resultMap["firstName"]! as! String
                    }
                    set {
                        resultMap.updateValue(newValue, forKey: "firstName")
                    }
                }

                public var lastName: String {
                    get {
                        resultMap["lastName"]! as! String
                    }
                    set {
                        resultMap.updateValue(newValue, forKey: "lastName")
                    }
                }

                public var description: String {
                    get {
                        resultMap["description"]! as! String
                    }
                    set {
                        resultMap.updateValue(newValue, forKey: "description")
                    }
                }

                public var level: Level {
                    get {
                        Level(unsafeResultMap: resultMap["level"]! as! ResultMap)
                    }
                    set {
                        resultMap.updateValue(newValue.resultMap, forKey: "level")
                    }
                }

                public var norm: Norm {
                    get {
                        Norm(unsafeResultMap: resultMap["norm"]! as! ResultMap)
                    }
                    set {
                        resultMap.updateValue(newValue.resultMap, forKey: "norm")
                    }
                }

                public var role: Role {
                    get {
                        Role(unsafeResultMap: resultMap["role"]! as! ResultMap)
                    }
                    set {
                        resultMap.updateValue(newValue.resultMap, forKey: "role")
                    }
                }

                public var photo: Photo? {
                    get {
                        (resultMap["photo"] as? ResultMap).flatMap { Photo(unsafeResultMap: $0) }
                    }
                    set {
                        resultMap.updateValue(newValue?.resultMap, forKey: "photo")
                    }
                }

                public var skills: [Skill] {
                    get {
                        (resultMap["skills"] as! [ResultMap]).map { (value: ResultMap) -> Skill in Skill(unsafeResultMap: value) }
                    }
                    set {
                        resultMap.updateValue(newValue.map { (value: Skill) -> ResultMap in value.resultMap }, forKey: "skills")
                    }
                }

                public var technologies: [Technology] {
                    get {
                        (resultMap["technologies"] as! [ResultMap]).map { (value: ResultMap) -> Technology in Technology(unsafeResultMap: value) }
                    }
                    set {
                        resultMap.updateValue(newValue.map { (value: Technology) -> ResultMap in value.resultMap }, forKey: "technologies")
                    }
                }

                public var projects: [Project] {
                    get {
                        (resultMap["projects"] as! [ResultMap]).map { (value: ResultMap) -> Project in Project(unsafeResultMap: value) }
                    }
                    set {
                        resultMap.updateValue(newValue.map { (value: Project) -> ResultMap in value.resultMap }, forKey: "projects")
                    }
                }

                public struct Level: GraphQLSelectionSet {
                    public static let possibleTypes: [String] = ["Level"]

                    public static var selections: [GraphQLSelection] {
                        [
                            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                            GraphQLField("name", type: .nonNull(.scalar(String.self))),
                        ]
                    }

                    public private(set) var resultMap: ResultMap

                    public init(unsafeResultMap: ResultMap) {
                        resultMap = unsafeResultMap
                    }

                    public init(name: String) {
                        self.init(unsafeResultMap: ["__typename": "Level", "name": name])
                    }

                    public var __typename: String {
                        get {
                            resultMap["__typename"]! as! String
                        }
                        set {
                            resultMap.updateValue(newValue, forKey: "__typename")
                        }
                    }

                    public var name: String {
                        get {
                            resultMap["name"]! as! String
                        }
                        set {
                            resultMap.updateValue(newValue, forKey: "name")
                        }
                    }
                }

                public struct Norm: GraphQLSelectionSet {
                    public static let possibleTypes: [String] = ["Norm"]

                    public static var selections: [GraphQLSelection] {
                        [
                            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                            GraphQLField("name", type: .nonNull(.scalar(String.self))),
                        ]
                    }

                    public private(set) var resultMap: ResultMap

                    public init(unsafeResultMap: ResultMap) {
                        resultMap = unsafeResultMap
                    }

                    public init(name: String) {
                        self.init(unsafeResultMap: ["__typename": "Norm", "name": name])
                    }

                    public var __typename: String {
                        get {
                            resultMap["__typename"]! as! String
                        }
                        set {
                            resultMap.updateValue(newValue, forKey: "__typename")
                        }
                    }

                    public var name: String {
                        get {
                            resultMap["name"]! as! String
                        }
                        set {
                            resultMap.updateValue(newValue, forKey: "name")
                        }
                    }
                }

                public struct Role: GraphQLSelectionSet {
                    public static let possibleTypes: [String] = ["Role"]

                    public static var selections: [GraphQLSelection] {
                        [
                            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                            GraphQLField("name", type: .nonNull(.scalar(String.self))),
                        ]
                    }

                    public private(set) var resultMap: ResultMap

                    public init(unsafeResultMap: ResultMap) {
                        resultMap = unsafeResultMap
                    }

                    public init(name: String) {
                        self.init(unsafeResultMap: ["__typename": "Role", "name": name])
                    }

                    public var __typename: String {
                        get {
                            resultMap["__typename"]! as! String
                        }
                        set {
                            resultMap.updateValue(newValue, forKey: "__typename")
                        }
                    }

                    public var name: String {
                        get {
                            resultMap["name"]! as! String
                        }
                        set {
                            resultMap.updateValue(newValue, forKey: "name")
                        }
                    }
                }

                public struct Photo: GraphQLSelectionSet {
                    public static let possibleTypes: [String] = ["Photo"]

                    public static var selections: [GraphQLSelection] {
                        [
                            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                            GraphQLField("uri", type: .nonNull(.scalar(String.self))),
                        ]
                    }

                    public private(set) var resultMap: ResultMap

                    public init(unsafeResultMap: ResultMap) {
                        resultMap = unsafeResultMap
                    }

                    public init(uri: String) {
                        self.init(unsafeResultMap: ["__typename": "Photo", "uri": uri])
                    }

                    public var __typename: String {
                        get {
                            resultMap["__typename"]! as! String
                        }
                        set {
                            resultMap.updateValue(newValue, forKey: "__typename")
                        }
                    }

                    public var uri: String {
                        get {
                            resultMap["uri"]! as! String
                        }
                        set {
                            resultMap.updateValue(newValue, forKey: "uri")
                        }
                    }
                }

                public struct Skill: GraphQLSelectionSet {
                    public static let possibleTypes: [String] = ["Skill"]

                    public static var selections: [GraphQLSelection] {
                        [
                            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                            GraphQLField("name", type: .nonNull(.scalar(String.self))),
                        ]
                    }

                    public private(set) var resultMap: ResultMap

                    public init(unsafeResultMap: ResultMap) {
                        resultMap = unsafeResultMap
                    }

                    public init(id: GraphQLID, name: String) {
                        self.init(unsafeResultMap: ["__typename": "Skill", "id": id, "name": name])
                    }

                    public var __typename: String {
                        get {
                            resultMap["__typename"]! as! String
                        }
                        set {
                            resultMap.updateValue(newValue, forKey: "__typename")
                        }
                    }

                    public var id: GraphQLID {
                        get {
                            resultMap["id"]! as! GraphQLID
                        }
                        set {
                            resultMap.updateValue(newValue, forKey: "id")
                        }
                    }

                    public var name: String {
                        get {
                            resultMap["name"]! as! String
                        }
                        set {
                            resultMap.updateValue(newValue, forKey: "name")
                        }
                    }
                }

                public struct Technology: GraphQLSelectionSet {
                    public static let possibleTypes: [String] = ["Technology"]

                    public static var selections: [GraphQLSelection] {
                        [
                            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                            GraphQLField("name", type: .nonNull(.scalar(String.self))),
                            GraphQLField("description", type: .nonNull(.scalar(String.self))),
                        ]
                    }

                    public private(set) var resultMap: ResultMap

                    public init(unsafeResultMap: ResultMap) {
                        resultMap = unsafeResultMap
                    }

                    public init(id: GraphQLID, name: String, description: String) {
                        self.init(unsafeResultMap: ["__typename": "Technology", "id": id, "name": name, "description": description])
                    }

                    public var __typename: String {
                        get {
                            resultMap["__typename"]! as! String
                        }
                        set {
                            resultMap.updateValue(newValue, forKey: "__typename")
                        }
                    }

                    public var id: GraphQLID {
                        get {
                            resultMap["id"]! as! GraphQLID
                        }
                        set {
                            resultMap.updateValue(newValue, forKey: "id")
                        }
                    }

                    public var name: String {
                        get {
                            resultMap["name"]! as! String
                        }
                        set {
                            resultMap.updateValue(newValue, forKey: "name")
                        }
                    }

                    public var description: String {
                        get {
                            resultMap["description"]! as! String
                        }
                        set {
                            resultMap.updateValue(newValue, forKey: "description")
                        }
                    }
                }

                public struct Project: GraphQLSelectionSet {
                    public static let possibleTypes: [String] = ["Project"]

                    public static var selections: [GraphQLSelection] {
                        [
                            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                            GraphQLField("name", type: .nonNull(.scalar(String.self))),
                            GraphQLField("description", type: .nonNull(.scalar(String.self))),
                            GraphQLField("logoUrl", type: .nonNull(.object(LogoUrl.selections))),
                            GraphQLField("technologies", type: .nonNull(.list(.nonNull(.object(Technology.selections))))),
                        ]
                    }

                    public private(set) var resultMap: ResultMap

                    public init(unsafeResultMap: ResultMap) {
                        resultMap = unsafeResultMap
                    }

                    public init(id: GraphQLID, name: String, description: String, logoUrl: LogoUrl, technologies: [Technology]) {
                        self.init(unsafeResultMap: ["__typename": "Project", "id": id, "name": name, "description": description, "logoUrl": logoUrl.resultMap, "technologies": technologies.map { (value: Technology) -> ResultMap in value.resultMap }])
                    }

                    public var __typename: String {
                        get {
                            resultMap["__typename"]! as! String
                        }
                        set {
                            resultMap.updateValue(newValue, forKey: "__typename")
                        }
                    }

                    public var id: GraphQLID {
                        get {
                            resultMap["id"]! as! GraphQLID
                        }
                        set {
                            resultMap.updateValue(newValue, forKey: "id")
                        }
                    }

                    public var name: String {
                        get {
                            resultMap["name"]! as! String
                        }
                        set {
                            resultMap.updateValue(newValue, forKey: "name")
                        }
                    }

                    public var description: String {
                        get {
                            resultMap["description"]! as! String
                        }
                        set {
                            resultMap.updateValue(newValue, forKey: "description")
                        }
                    }

                    public var logoUrl: LogoUrl {
                        get {
                            LogoUrl(unsafeResultMap: resultMap["logoUrl"]! as! ResultMap)
                        }
                        set {
                            resultMap.updateValue(newValue.resultMap, forKey: "logoUrl")
                        }
                    }

                    public var technologies: [Technology] {
                        get {
                            (resultMap["technologies"] as! [ResultMap]).map { (value: ResultMap) -> Technology in Technology(unsafeResultMap: value) }
                        }
                        set {
                            resultMap.updateValue(newValue.map { (value: Technology) -> ResultMap in value.resultMap }, forKey: "technologies")
                        }
                    }

                    public struct LogoUrl: GraphQLSelectionSet {
                        public static let possibleTypes: [String] = ["Photo"]

                        public static var selections: [GraphQLSelection] {
                            [
                                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                                GraphQLField("uri", type: .nonNull(.scalar(String.self))),
                            ]
                        }

                        public private(set) var resultMap: ResultMap

                        public init(unsafeResultMap: ResultMap) {
                            resultMap = unsafeResultMap
                        }

                        public init(uri: String) {
                            self.init(unsafeResultMap: ["__typename": "Photo", "uri": uri])
                        }

                        public var __typename: String {
                            get {
                                resultMap["__typename"]! as! String
                            }
                            set {
                                resultMap.updateValue(newValue, forKey: "__typename")
                            }
                        }

                        public var uri: String {
                            get {
                                resultMap["uri"]! as! String
                            }
                            set {
                                resultMap.updateValue(newValue, forKey: "uri")
                            }
                        }
                    }

                    public struct Technology: GraphQLSelectionSet {
                        public static let possibleTypes: [String] = ["Technology"]

                        public static var selections: [GraphQLSelection] {
                            [
                                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                                GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                                GraphQLField("name", type: .nonNull(.scalar(String.self))),
                                GraphQLField("description", type: .nonNull(.scalar(String.self))),
                            ]
                        }

                        public private(set) var resultMap: ResultMap

                        public init(unsafeResultMap: ResultMap) {
                            resultMap = unsafeResultMap
                        }

                        public init(id: GraphQLID, name: String, description: String) {
                            self.init(unsafeResultMap: ["__typename": "Technology", "id": id, "name": name, "description": description])
                        }

                        public var __typename: String {
                            get {
                                resultMap["__typename"]! as! String
                            }
                            set {
                                resultMap.updateValue(newValue, forKey: "__typename")
                            }
                        }

                        public var id: GraphQLID {
                            get {
                                resultMap["id"]! as! GraphQLID
                            }
                            set {
                                resultMap.updateValue(newValue, forKey: "id")
                            }
                        }

                        public var name: String {
                            get {
                                resultMap["name"]! as! String
                            }
                            set {
                                resultMap.updateValue(newValue, forKey: "name")
                            }
                        }

                        public var description: String {
                            get {
                                resultMap["description"]! as! String
                            }
                            set {
                                resultMap.updateValue(newValue, forKey: "description")
                            }
                        }
                    }
                }
            }
        }
    }
}
