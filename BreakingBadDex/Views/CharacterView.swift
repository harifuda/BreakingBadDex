//
//  CharacterView.swift
//  BreakingBadDex
//
//  Created by Lukas Nguyen on 2022-11-08.
//

import SwiftUI

struct CharacterView: View {
	var character: BreakingBadCharacter = BreakingBadCharacter()
	var body: some View {
		VStack {
			AsyncImage(url: URL(string: character.image)!) { image in
				image
					.resizable()
					.aspectRatio(contentMode: .fit)
					.padding()
				
			} placeholder: {
				ProgressView()
			}
			.frame(width: 150, height: 200)
			.cornerRadius(0.4)
			.shadow(radius: 0.4, x: 4, y: 5)
			
			Spacer()
			
			Text(character.name)
				.font(.custom("BreakingBad", size: 12))
		}

	}
}
	
	struct CharacterView_Previews: PreviewProvider {
		static var previews: some View {
			CharacterView()
		}
	}

