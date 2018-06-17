// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

/**
 This object represents a chat.

 SeeAlso Telegram Bot API Reference:
 [Chat](https://core.telegram.org/bots/api#chat)
 */
public final class Chat: Codable {

    /// Custom keys for coding/decoding `Chat` struct
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case type = "type"
        case title = "title"
        case username = "username"
        case firstName = "first_name"
        case lastName = "last_name"
        case allMembersAreAdministrators = "all_members_are_administrators"
        case photo = "photo"
        case description = "description"
        case inviteLink = "invite_link"
        case pinnedMessage = "pinned_message"
        case stickerSetName = "sticker_set_name"
        case canSetStickerSet = "can_set_sticker_set"
    }

    /// Unique identifier for this chat. This number may be greater than 32 bits and some programming languages may have difficulty/silent defects in interpreting it. But it is smaller than 52 bits, so a signed 64 bit integer or double-precision float type are safe for storing this identifier.
    public var id: Int64

    /// Type of chat, can be either “private”, “group”, “supergroup” or “channel”
    public var type: ChatType

    /// Optional. Title, for supergroups, channels and group chats
    public var title: String?

    /// Optional. Username, for private chats, supergroups and channels if available
    public var username: String?

    /// Optional. First name of the other party in a private chat
    public var firstName: String?

    /// Optional. Last name of the other party in a private chat
    public var lastName: String?

    /// Optional. True if a group has ‘All Members Are Admins’ enabled.
    public var allMembersAreAdministrators: Bool?

    /// Optional. Chat photo. Returned only in getChat.
    public var photo: ChatPhoto?

    /// Optional. Description, for supergroups and channel chats. Returned only in getChat.
    public var description: String?

    /// Optional. Chat invite link, for supergroups and channel chats. Returned only in getChat.
    public var inviteLink: String?

    /// Optional. Pinned message, for supergroups and channel chats. Returned only in getChat.
    public var pinnedMessage: Message?

    /// Optional. For supergroups, name of group sticker set. Returned only in getChat.
    public var stickerSetName: String?

    /// Optional. True, if the bot can change the group sticker set. Returned only in getChat.
    public var canSetStickerSet: Bool?


    public init (id: Int64, type: ChatType, title: String? = nil, username: String? = nil, firstName: String? = nil, lastName: String? = nil, allMembersAreAdministrators: Bool? = nil, photo: ChatPhoto? = nil, description: String? = nil, inviteLink: String? = nil, pinnedMessage: Message? = nil, stickerSetName: String? = nil, canSetStickerSet: Bool? = nil) {
        self.id = id
        self.type = type
        self.title = title
        self.username = username
        self.firstName = firstName
        self.lastName = lastName
        self.allMembersAreAdministrators = allMembersAreAdministrators
        self.photo = photo
        self.description = description
        self.inviteLink = inviteLink
        self.pinnedMessage = pinnedMessage
        self.stickerSetName = stickerSetName
        self.canSetStickerSet = canSetStickerSet
    }
}
