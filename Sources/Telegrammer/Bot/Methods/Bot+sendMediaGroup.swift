// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.


import HTTP

public extension Bot {

    /// Parameters container struct for `sendMediaGroup` method
    public struct SendMediaGroupParams: JSONEncodable {

        /// Unique identifier for the target chat or username of the target channel (in the format @channelusername)
        var chatId: ChatId

        /// A JSON-serialized array describing photos and videos to be sent, must include 2–10 items
        var media: [InputMedia]

        /// Sends the messages silently. Users will receive a notification with no sound.
        var disableNotification: Bool?

        /// If the messages are a reply, ID of the original message
        var replyToMessageId: Int?

        /// Custom keys for coding/decoding `SendMediaGroupParams` struct
        enum CodingKeys: String, CodingKey {
            case chatId = "chat_id"
            case media = "media"
            case disableNotification = "disable_notification"
            case replyToMessageId = "reply_to_message_id"
        }

        public init(chatId: ChatId, media: [InputMedia], disableNotification: Bool? = nil, replyToMessageId: Int? = nil) {
            self.chatId = chatId
            self.media = media
            self.disableNotification = disableNotification
            self.replyToMessageId = replyToMessageId
        }
    }

    /**
     Use this method to send a group of photos or videos as an album. On success, an array of the sent Messages is returned.

     SeeAlso Telegram Bot API Reference:
     [SendMediaGroupParams](https://core.telegram.org/bots/api#sendmediagroup)
     
     - Parameters:
         - params: Parameters container, see `SendMediaGroupParams` struct
     - Throws: Throws on errors
     - Returns: Future of `[Message]` type
     */
    @discardableResult
    public func sendMediaGroup(params: SendMediaGroupParams) throws -> Future<[Message]> {
        let body = try httpBody(for: params)
        let headers = httpHeaders(for: params)
        let response: Future<TelegramContainer<[Message]>>
        response = try client.respond(endpoint: "sendMediaGroup", body: body, headers: headers)
        return response.flatMap(to: [Message].self) { try self.wrap($0) }
    }
}
