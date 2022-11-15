//
//  CharacterViewModel.swift
//  BreakingBadDex
//
//  Created by Lukas Nguyen on 2022-11-04.
//

import Combine
import SwiftUI

class CharacterViewModel: ObservableObject {
	
	@ObservedObject var webService = WebService.shared
	@Published var breakingBadArray = [BreakingBadCharacter]()
	
	private var cancellables: Set<AnyCancellable> = []
	
	init() {
		self.webService.$characters
			.assign(to: \.breakingBadArray, on: self)
			.store(in: &cancellables)
	}
	
}
