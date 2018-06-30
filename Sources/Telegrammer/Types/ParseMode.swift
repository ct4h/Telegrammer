//
//  ParseMode.swift
//  Telegrammer
//
//  Created by Givi Pataridze on 17/06/2018.
//

import Foundation

/** Send Markdown or HTML, if you want Telegram apps to show bold, italic, fixed-width text or inline URLs in your bot's message.
 
 SeeAlso Telegram Bot API Reference:
 [Formatting Options](https://core.telegram.org/bots/api#formatting-options)
 */
public enum ParseMode: String, Codable {
    case markdown  = "Markdown"
    case html      = "HTML"
}