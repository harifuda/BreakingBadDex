//
//  Character.swift
//  BreakingBadDex
//
//  Created by Lukas Nguyen on 2022-11-04.
//

import SwiftUI

struct BreakingBadCharacter: Identifiable, Codable {
	
	var id: UUID = UUID()
	var characterId: Int = 0
	var name: String = ""
	var birthday: String = ""
	var occupation: [String] = []
	var image: String = ""
	var status: String = ""
	var nickName: String = ""
	var appearance: [Int] = []
	var portrayed: String = ""
	var category: String = ""
	var betterCallSaulAppearance: [Int] = []
	
	enum CodingKeys: String, CodingKey {
		case characterId = "char_id"
		case name = "name"
		case birthday = "birthday"
		case occupation = "occupation"
		case image = "img"
		case status = "status"
		case nickName = "nickname"
		case appearance = "appearance"
		case portrayed = "portrayed"
		case category = "category"
		case betterCallSaulAppearance = "better_call_saul_appearance"
	}

}
