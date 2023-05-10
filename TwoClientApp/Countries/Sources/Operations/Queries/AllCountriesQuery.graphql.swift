// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class AllCountriesQuery: GraphQLQuery {
  public static let operationName: String = "AllCountries"
  public static let document: ApolloAPI.DocumentType = .notPersisted(
    definition: .init(
      #"""
      query AllCountries {
        countries {
          __typename
          code
          name
        }
      }
      """#
    ))

  public init() {}

  public struct Data: Countries.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { Countries.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("countries", [Country].self),
    ] }

    public var countries: [Country] { __data["countries"] }

    /// Country
    ///
    /// Parent Type: `Country`
    public struct Country: Countries.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { Countries.Objects.Country }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("code", Countries.ID.self),
        .field("name", String.self),
      ] }

      public var code: Countries.ID { __data["code"] }
      public var name: String { __data["name"] }
    }
  }
}
