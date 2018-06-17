// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.


import HTTP

public extension Bot {

    /// Parameters container struct for `getChat` method
    public struct GetChatParams: JSONEncodable {

        /// Unique identifier for the target chat or username of the target supergroup or channel (in the format @channelusername)
        var chatId: ChatId

        /// Custom keys for coding/decoding `GetChatParams` struct
        enum CodingKeys: String, CodingKey {
            case chatId = "chat_id"
        }

        public init(chatId: ChatId) {
            self.chatId = chatId
        }
    }

    /**
     Use this method to get up to date information about the chat (current name of the user for one-on-one conversations, current username of a user, group or channel, etc.). Returns a Chat object on success.

     SeeAlso Telegram Bot API Reference:
     [GetChatParams](https://core.telegram.org/bots/api#getchat)
     
     - Parameters:
         - params: Parameters container, see `GetChatParams` struct
     - Throws: Throws on errors
     - Returns: Future of `Chat` type
     */
    @discardableResult
    public func getChat(params: GetChatParams) throws -> Future<Chat> {
        let body = try httpBody(for: params)
        let headers = httpHeaders(for: params)
        let response: Future<TelegramContainer<Chat>>
        response = try client.respond(endpoint: "getChat", body: body, headers: headers)
        return response.flatMap(to: Chat.self) { try self.wrap($0) }
    }
}
