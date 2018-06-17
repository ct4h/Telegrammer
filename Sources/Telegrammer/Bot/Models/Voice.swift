// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

/**
 This object represents a voice note.

 SeeAlso Telegram Bot API Reference:
 [Voice](https://core.telegram.org/bots/api#voice)
 */
public final class Voice: Codable {

    /// Custom keys for coding/decoding `Voice` struct
    enum CodingKeys: String, CodingKey {
        case fileId = "file_id"
        case duration = "duration"
        case mimeType = "mime_type"
        case fileSize = "file_size"
    }

    /// Unique identifier for this file
    public var fileId: String

    /// Duration of the audio in seconds as defined by sender
    public var duration: Int

    /// Optional. MIME type of the file as defined by sender
    public var mimeType: String?

    /// Optional. File size
    public var fileSize: Int?


    public init (fileId: String, duration: Int, mimeType: String? = nil, fileSize: Int? = nil) {
        self.fileId = fileId
        self.duration = duration
        self.mimeType = mimeType
        self.fileSize = fileSize
    }
}
