// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.


import HTTP

public extension Bot {

    /// Parameters container struct for `editMessageLiveLocation` method
    public struct EditMessageLiveLocationParams: JSONEncodable {

        /// Required if inline_message_id is not specified. Unique identifier for the target chat or username of the target channel (in the format @channelusername)
        var chatId: ChatId?

        /// Required if inline_message_id is not specified. Identifier of the sent message
        var messageId: Int?

        /// Required if chat_id and message_id are not specified. Identifier of the inline message
        var inlineMessageId: String?

        /// Latitude of new location
        var latitude: Float

        /// Longitude of new location
        var longitude: Float

        /// A JSON-serialized object for a new inline keyboard.
        var replyMarkup: InlineKeyboardMarkup?

        /// Custom keys for coding/decoding `EditMessageLiveLocationParams` struct
        enum CodingKeys: String, CodingKey {
            case chatId = "chat_id"
            case messageId = "message_id"
            case inlineMessageId = "inline_message_id"
            case latitude = "latitude"
            case longitude = "longitude"
            case replyMarkup = "reply_markup"
        }

        public init(chatId: ChatId? = nil, messageId: Int? = nil, inlineMessageId: String? = nil, latitude: Float, longitude: Float, replyMarkup: InlineKeyboardMarkup? = nil) {
            self.chatId = chatId
            self.messageId = messageId
            self.inlineMessageId = inlineMessageId
            self.latitude = latitude
            self.longitude = longitude
            self.replyMarkup = replyMarkup
        }
    }

    /**
     Use this method to edit live location messages sent by the bot or via the bot (for inline bots). A location can be edited until its live_period expires or editing is explicitly disabled by a call to stopMessageLiveLocation. On success, if the edited message was sent by the bot, the edited Message is returned, otherwise True is returned.

     SeeAlso Telegram Bot API Reference:
     [EditMessageLiveLocationParams](https://core.telegram.org/bots/api#editmessagelivelocation)
     
     - Parameters:
         - params: Parameters container, see `EditMessageLiveLocationParams` struct
     - Throws: Throws on errors
     - Returns: Future of `MessageOrBool` type
     */
    @discardableResult
    public func editMessageLiveLocation(params: EditMessageLiveLocationParams) throws -> Future<MessageOrBool> {
        let body = try httpBody(for: params)
        let headers = httpHeaders(for: params)
        let response: Future<TelegramContainer<MessageOrBool>>
        response = try client.respond(endpoint: "editMessageLiveLocation", body: body, headers: headers)
        return response.flatMap(to: MessageOrBool.self) { try self.wrap($0) }
    }
}
