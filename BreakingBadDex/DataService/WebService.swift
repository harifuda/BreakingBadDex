//
//  WebService.swift
//  BreakingBadDex
//
//  Created by Lukas Nguyen on 2022-11-04.
//
import UIKit
import SwiftUI

class WebService: ObservableObject {
	
	static var shared = WebService()
	var jsonCharacters: [BreakingBadCharacter] = []
	@Published var characters: [BreakingBadCharacter] = []
	
	init(){
		getCharacters()
	}
	
	func getCharacters() {
		if let url = URL(string: "https://www.breakingbadapi.com/api/characters") {
			let request = URLRequest(url: url)
			URLSession.shared.dataTask(with: request) { data, response, error in
				if let responseData = data {
					print("Received responseData")
					do {
						let responses = try JSONDecoder().decode([BreakingBadCharacter].self, from: responseData)
						
						for response in responses {
							self.jsonCharacters.append(response)
						}
						
						print(self.jsonCharacters)
						DispatchQueue.main.async {
							self.characters =  self.jsonCharacters
						}
						
					} catch {
						fatalError(error.localizedDescription)
					}
				}
			}
			.resume()
			
		}
		
	}
}
