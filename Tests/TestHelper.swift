//
//  TestHelper.swift
//  ISO8601
//
//  Created by Sam Soffes on 5/26/15.
//  Copyright (c) 2015 Sam Soffes. All rights reserved.
//

import ISO8601
import Foundation

func parse(string: String) -> ISO8601DateComponents? {
	return ISO8601Serialization.dateComponentsForString(string)
}

func serialize(components: NSDateComponents) -> String? {
	return ISO8601Serialization.stringForDateComponents(components)
}

func components(year year: Int? = nil, month: Int? = nil, day: Int? = nil, hour: Int? = nil, minute: Int? = nil, second: Int? = nil, millisecond: Int? = nil, timeZoneOffset: NSTimeInterval? = nil) -> ISO8601DateComponents {
	let comps = ISO8601DateComponents()
	if let year = year {
		comps.year = year
	}

	if let month = month {
		comps.month = month
	}

	if let day = day {
		comps.day = day
	}

	if let hour = hour {
		comps.hour = hour
	}

	if let minute = minute {
		comps.minute = minute
	}

	if let second = second {
		comps.second = second
	}

	if let millisecond = millisecond {
		comps.millisecond = millisecond
	}

	if let timeZoneOffset = timeZoneOffset {
		comps.timeZone = NSTimeZone(forSecondsFromGMT: Int(timeZoneOffset))
	}
	return comps
}
