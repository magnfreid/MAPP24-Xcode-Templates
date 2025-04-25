import Foundation

/// A utility enum for retrieving API keys from Secrets.plist.
///
/// ## How to use:
/// - **Configure Secrets.plist**: Add your API keys to the `api-keys` dictionary (e.g., `API_KEY`, `SECOND_API_KEY`). Replace placeholder values (`YOUR_API_KEY_HERE`) with actual keys.
/// - **Protect your keys!**: Add `Secrets.plist` to your project's `.gitignore` file to prevent committing sensitive API keys.
/// - **Example usage**:
///   ```swift
///   do {
///       let apiKey = try SecretsManager.getApiKey(for: "API_KEY")
///       print("API Key: \(apiKey)")
///   } catch {
///       print("Error: \(error.localizedDescription)")
///   }
///   ```
enum ___FILEBASENAME___ {

    /// Retrieves an API key from the api-keys dictionary in Service/Secrets.plist.
    /// - Parameter keyName: The name of the API key (e.g., "API_KEY").
    /// - Returns: The API key as a String.
    /// - Throws: APIKeyError.missingApiKey if the key is not found.
    static func getApiKey(for keyName: String) throws -> String {
        guard
            let url = Bundle.main.url(forResource: "Secrets", withExtension: "plist"),
            let dict = NSDictionary(contentsOf: url),
            let apiKeysDict = dict["api-keys"] as? [String: Any],
            let apiKey = apiKeysDict[keyName] as? String
        else {
            throw APIKeyError.missingApiKey(keyName)
        }
        return apiKey
    }

    enum APIKeyError: Error, LocalizedError {
        case missingApiKey(String)

        var errorDescription: String? {
            switch self {
            case .missingApiKey(let keyName):
                return "Failed to retrieve '\(keyName)' from api-keys dictionary in Service/Secrets.plist"
            }
        }
    }
}
