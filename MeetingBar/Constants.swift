//
//  Constants.swift
//  MeetingBar
//
//  Created by Andrii Leitsius on 12.06.2020.
//  Copyright © 2020 Andrii Leitsius. All rights reserved.
//

import Cocoa

var systemDefaultBrowser = Browser(name: "preferences_services_link_default_browser_value".loco(), path: "")
var MeetInOneBrowser = Browser(name: "MeetInOne", path: "")
var ZoomAppBrowser = Browser(name: "preferences_services_link_zoom_value".loco(), path: "")
var TeamsAppBrowser = Browser(name: "preferences_services_link_teams_value".loco(), path: "")
var JitsiAppBrowser = Browser(name: "preferences_services_link_jitsi_value".loco(), path: "")

enum statusbarEventTitleLengthLimits {
    static let min = 5
    static let max = 55
}

enum TitleTruncationRules {
    static let excludeAtEnds = CharacterSet.whitespacesAndNewlines
}

struct LinksRegex {
    let meet = try! NSRegularExpression(pattern: #"https?://meet.google.com/[a-z-]+"#)
    let hangouts = try! NSRegularExpression(pattern: #"https?://hangouts.google.com/[^\s]*"#)
    let zoom = try! NSRegularExpression(pattern: #"https?:\/\/(?:[a-zA-Z0-9-.]+)?zoom.(?:us|com.cn)\/(?:j|my|w)\/[-a-zA-Z0-9()@:%_\+.~#?&=\/]*"#)

    /**
     * Examples:
     * - zoom native links: zoommtg://zoom.us/join?confno=92333341349&uname=Person&pwd=123456
     */
    let zoom_native = try! NSRegularExpression(pattern: #"zoommtg://([a-z0-9-.]+)?zoom\.(us|com\.cn)/join[-a-zA-Z0-9()@:%_\+.~#?&=\/]*"#)
    let teams = try! NSRegularExpression(pattern: #"https?://teams\.microsoft\.com/l/meetup-join/[a-zA-Z0-9_%\/=\-\+\.?]+"#)
    let webex = try! NSRegularExpression(pattern: #"https?://([a-z0-9-.]+)?webex\.com/[^\s]*"#)
    let jitsi = try! NSRegularExpression(pattern: #"https?://meet\.jit\.si/[^\s]*"#)
    let chime = try! NSRegularExpression(pattern: #"https?://([a-z0-9-.]+)?chime\.aws/[^\s]*"#)
    let ringcentral = try! NSRegularExpression(pattern: #"https?://([a-z0-9.]+)?ringcentral\.com/[^\s]*"#)
    let gotomeeting = try! NSRegularExpression(pattern: #"https?://([a-z0-9.]+)?gotomeeting\.com/[^\s]*"#)
    let gotowebinar = try! NSRegularExpression(pattern: #"https?://([a-z0-9.]+)?gotowebinar\.com/[^\s]*"#)
    let bluejeans = try! NSRegularExpression(pattern: #"https?://([a-z0-9.]+)?bluejeans\.com/[^\s]*"#)
    let eight_x_eight = try! NSRegularExpression(pattern: #"https?://8x8\.vc/[^\s]*"#)
    let demio = try! NSRegularExpression(pattern: #"https?://event\.demio\.com/[^\s]*"#)
    let join_me = try! NSRegularExpression(pattern: #"https?://join\.me/[^\s]*"#)
    let zoomgov = try! NSRegularExpression(pattern: #"https?://([a-z0-9.]+)?zoomgov\.com/j/[a-zA-Z0-9?&=]+"#)
    let whereby = try! NSRegularExpression(pattern: #"https?://whereby\.com/[^\s]*"#)
    let uberconference = try! NSRegularExpression(pattern: #"https?://uberconference\.com/[^\s]*"#)
    let blizz = try! NSRegularExpression(pattern: #"https?://go\.blizz\.com/[^\s]*"#)
    let teamviewer_meeting = try! NSRegularExpression(pattern: #"https?://go\.teamviewer\.com/[^\s]*"#)
    let vsee = try! NSRegularExpression(pattern: #"https?://vsee\.com/[^\s]*"#)
    let starleaf = try! NSRegularExpression(pattern: #"https?://meet\.starleaf\.com/[^\s]*"#)
    let duo = try! NSRegularExpression(pattern: #"https?://duo\.app\.goo\.gl/[^\s]*"#)
    let voov = try! NSRegularExpression(pattern: #"https?://voovmeeting\.com/[^\s]*"#)
    let facebook_workspace = try! NSRegularExpression(pattern: #"https?://([a-z0-9-.]+)?workplace\.com/[^\s]+"#)
    let skype = try! NSRegularExpression(pattern: #"https?://join\.skype\.com/[^\s]*"#)
    let skype4biz = try! NSRegularExpression(pattern: #"https?://meet\.lync\.com/[^\s]*"#)
    let skype4biz_selfhosted = try! NSRegularExpression(pattern: #"https?:\/\/(meet|join)\.[^\s]*\/[a-z0-9.]+/meet\/[A-Za-z0-9./]+"#)
    let lifesize = try! NSRegularExpression(pattern: #"https?://call\.lifesizecloud\.com/[^\s]*"#)
    let youtube = try! NSRegularExpression(pattern: #"https?://((www|m)\.)?(youtube\.com|youtu\.be)/[^\s]*"#)
    let vonageMeetings = try! NSRegularExpression(pattern: #"https?://meetings\.vonage\.com/[0-9]{9}"#)
    let meetStream = try! NSRegularExpression(pattern: #"https?://stream\.meet\.google\.com/stream/[a-z0-9-]+"#)
    let around = try! NSRegularExpression(pattern: #"https?://meet\.around\.co/[^\s]*"#)
    let jam = try! NSRegularExpression(pattern: #"https?://jam\.systems/[^\s]*"#)
    let discord = try! NSRegularExpression(pattern: #"(http|https|discord)://(www\.)?(canary\.)?discord(app)?\.([a-zA-Z]{2,})(.+)?"#)
    let blackboard_collab = try! NSRegularExpression(pattern: #"https?://us\.bbcollab\.com/[^\s]*"#)
    let coscreen = try! NSRegularExpression(pattern: #"https?://join\.coscreen\.co/[^\s]*"#)
    let vowel = try! NSRegularExpression(pattern: #"https?://([a-z0-9.]+)?vowel\.com/#/g/[^\s]*"#)
    let zhumu = try! NSRegularExpression(pattern: #"https://welink.zhumu.com/j/[0-9]+?pwd=[a-zA-Z0-9]+"#)
    let lark = try! NSRegularExpression(pattern: #" https://vc.larksuite.com/j/[0-9]+"#)
    let feishu = try! NSRegularExpression(pattern: #"https://vc.feishu.cn/j/[0-9]+"#)
}

enum CreateMeetingLinks {
    static var meet = URL(string: "https://meet.google.com/new")!
    static var zoom = URL(string: "https://zoom.us/start?confno=123456789&zc=0")!
    static var teams = URL(string: "https://teams.microsoft.com/l/meeting/new?subject=")!
    static var jam = URL(string: "https://jam.systems/new")!
    static var coscreen = URL(string: "https://cs.new")!
    static var gcalendar = URL(string: "https://calendar.google.com/calendar/u/0/r/eventedit")!
    static var gcalendar_view = URL(string: "https://calendar.google.com/calendar/u/0/r/")!

    static var outlook_live = URL(string: "https://outlook.live.com/calendar/0/action/compose")!
    static var outlook_office365 = URL(string: "https://outlook.office365.com/calendar/0/action/compose")!
}

enum CreateMeetingServices: String, Codable, CaseIterable {
    case meet = "Google Meet"
    case zoom = "Zoom"
    case teams = "Microsoft Teams"
    case jam = "Jam"
    case coscreen = "CoScreen"
    case gcalendar = "Google Calendar"
    case outlook_live = "Outlook Live"
    case outlook_office365 = "Outlook Office365"
    case url = "Custom url"

    var localizedValue: String {
        switch self {
        case .url:
            return "constants_create_meeting_service_url".loco()
        default:
            return rawValue
        }
    }
}

enum Links {
    static var patreon = URL(string: "https://www.patreon.com/meetingbar")!
    static var github = URL(string: "https://github.com/leits/MeetingBar")!
    static var telegram = URL(string: "https://t.me/leits")!
    static var twitter = URL(string: "https://twitter.com/leits_dev")!
    static var emailMe = URL(string: "mailto:leits.dev@gmail.com?subject=MeetingBar")!
    static var calendarPreferences = URL(string: "x-apple.systempreferences:com.apple.preference.security?Privacy_Calendars")!
    static var rateAppInAppStore = URL(string: "itms-apps://apps.apple.com/app/id1532419400?action=write-review")!
}

enum TimeFormat: String, Codable, CaseIterable {
    case am_pm = "12-hour"
    case military = "24-hour"
}

/// the icon to display in the status bar
enum EventTitleIconFormat: String, Codable, CaseIterable {
    case calendar = "iconCalendar"
    case appicon = "AppIcon"
    case eventtype = "ms_teams_icon"
    case none = "no_online_session"
}

enum EventTitleFormat: String, Codable, CaseIterable {
    case show
    case dot
    case none
}

/// format for time in statusbar - can be shown, be under title or be hidden
enum EventTimeFormat: String, Codable, CaseIterable {
    case show
    case show_under_title
    case hide
}

enum DeclinedEventsAppereance: String, Codable, CaseIterable {
    case strikethrough
    case show_inactive
    case hide
}

enum AlldayEventsAppereance: String, Codable, CaseIterable {
    case show
    case show_with_meeting_link_only
    case hide
}

enum NonAlldayEventsAppereance: String, Codable, CaseIterable {
    case show
    case show_inactive_without_meeting_link
    case hide_without_meeting_link
}

enum PendingEventsAppereance: String, Codable, CaseIterable {
    case show
    case show_inactive
    case show_underlined
    case hide
}

enum PastEventsAppereance: String, Codable, CaseIterable {
    case show_active
    case show_inactive
    case hide
}

enum ShowEventsForPeriod: String, Codable, CaseIterable {
    case today
    case today_n_tomorrow
}

enum JoinEventNotificationTime: Int, Codable {
    case atStart = 5
    case minuteBefore = 60
    case threeMinuteBefore = 180
    case fiveMinuteBefore = 300
}

enum NotificationEventTimeAction: String, Codable {
    case untilStart = "SNOOZE_UNTIL_START_TIME"
    case fiveMinuteLater = "SNOOZE_FOR_5_MIN"
    case tenMinuteLater = "SNOOZE_FOR_10_MIN"
    case fifteenMinuteLater = "SNOOZE_FOR_15_MIN"
    case thirtyMinuteLater = "SNOOZE_FOR_30_MIN"

    var durationInSeconds: Int {
        switch self {
        case .untilStart:
            return 0
        case .fiveMinuteLater:
            return 300
        case .tenMinuteLater:
            return 600
        case .fifteenMinuteLater:
            return 900
        case .thirtyMinuteLater:
            return 1800
        }
    }

    var durationInMins: Int {
        durationInSeconds / 60
    }
}

enum AutomaticEventJoinTime: Int, Codable {
    case atStart = 5
    case minuteBefore = 60
    case threeMinuteBefore = 180
    case fiveMinuteBefore = 300
}

enum EventScriptExecutionTime: Int, Codable {
    case atStart = 5
    case minuteBefore = 60
    case threeMinuteBefore = 180
    case fiveMinuteBefore = 300
}

enum UtilsRegex {
    static let outlookSafeLinkRegex = try! NSRegularExpression(pattern: #"https://[\S]+\.safelinks\.protection\.outlook\.com/[\S]+url=([\S]*)"#)
    static let linkDetection = try! NSRegularExpression(pattern: #"(http|ftp|https)://([\w_-]+(?:(?:\.[\w_-]+)+))([\w.,@?^=%&:/~+#-]*[\w@?^=%&/~+#-])?"#, options: .caseInsensitive)
}

enum AppLanguage: String, Codable {
    case system = ""
    case english = "en"
    case ukrainian = "ua"
    case croatian = "hr"
    case german = "de"
    case french = "fr"
    case czech = "cs"
    case norwegian = "nb-NO"
    case japanese = "ja"
    case polish = "pl"
    case hebrew = "he"
    case turkish = "tr"
    case italian = "it"
}

struct Browser: Encodable, Decodable, Hashable {
    var name: String
    var path: String
    var arguments: String = ""
    var deletable = true
}

enum WindowTitles {
    static let onboarding = "window_title_onboarding".loco()
    static let preferences = "window_title_preferences".loco()
    static let changelog = "windows_title_changelog".loco()
}

let eventStartScriptPlaceholder = """
# the method to be called with the following parameters for the next meeting.
#
# 1. parameter - eventId (string) - unique identifier from apples eventkit implementation
# 2. parameter - title (string) - the title of the event (event title can be null, although it makes no sense!)
# 3. parameter - allday (bool) - true for allday events, false for non allday events
# 4. parameter - startDate (date) - needs casting in apple script to output (e.g. startDate as text)
# 5 .parameter - endDate (date) - needs casting in apple script to output (e.g. startDate as text)
# 6. parameter - eventLocation (string) - if no location is set, the value will be "EMPTY"
# 7. parameter - repeatingEvent (bool) - true if it is part of an repeating event, false for single event
# 8. parameter - attendeeCount (int32) - number of attendees- 0 for events without attendees
# 9. parameter - meetingUrl (string) - the url to the meeting found in notes, url or location - only one meeting url is supported - if no meeting url is set, the value will be "EMPTY"
# 10. parameter - meetingService (string), e.g MS Teams or Zoom- if no meeting service is found, the meeting service value is "EMPTY"
# 11. parameter - meetingNotes (string)- the complete notes of a meeting -  if no notes are set, value "EMPTY" will be used

on meetingStart(eventId, title, allday, startDate, endDate, eventLocation, repeatingEvent, attendeeCount, meetingUrl, meetingService, meetingNotes)
   tell application "Finder"
       activate
       display dialog title buttons {"OK"} default button "OK"
   end tell
end meetingStart
"""
