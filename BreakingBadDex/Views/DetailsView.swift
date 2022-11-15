//
//  DetailsView.swift
//  BreakingBadDex
//
//  Created by Lukas Nguyen on 2022-11-09.
//

import SwiftUI

struct DetailsView: View {
	var character = BreakingBadCharacter()
	var body: some View {
		VStack {
			AsyncImage(url: URL(string: character.image)!) { image in
				image
					.resizable()
					.aspectRatio(contentMode: .fit)
			} placeholder: {
				ProgressView()
			}
			
			Spacer()
			
			Text(character.name)
				.fontWeight(.bold)

			VStack{
				HStack {
					Text("Birthday: ")
						.fontWeight(.semibold)
						.font(.system(size: 15))
					Text(character.birthday)
						.font(.system(size: 15))
				}
				
				HStack {
					Text("Occupation(s): ")
						.fontWeight(.semibold)
						.font(.system(size: 15))
					
					Text(character.occupation.joined(separator: ", "))
						.font(.system(size: 15))
					
				}
				
				HStack {
					Text("Status: ")
						.fontWeight(.semibold)
						.font(.system(size: 15))
					Text(character.status)
						.font(.system(size: 15))

				}
				
				HStack {
					Text("Nickname: ")
						.fontWeight(.semibold)
						.font(.system(size: 15))

					Text(character.nickName)
						.font(.system(size: 15))

				}
				
				HStack {
					Text("Portrayed: ")
						.fontWeight(.semibold)
						.font(.system(size: 15))
					Text(character.portrayed)
						.font(.system(size: 15))
				}
				
				HStack {
					Text("Category: ")
						.fontWeight(.semibold)
						.font(.system(size: 15))
					Text(character.category)
						.font(.system(size: 15))
				}
				
				HStack {
					Text("Appearance: ")
						.fontWeight(.semibold)
						.font(.system(size: 15))
					ForEach(character.appearance, id: \.self) { appearance in
						Text("\(appearance)")
							.font(.system(size: 15))
					}
				}
				
				HStack {
					Text("Better Call Saul Appearance: ")
						.fontWeight(.semibold)
						.font(.system(size: 15))
					ForEach(character.betterCallSaulAppearance, id: \.self) { appearance in
						Text("\(appearance)")
							.font(.system(size: 15))
					}
				}
			}
			
			
		}
	}

}

struct DetailsView_Previews: PreviewProvider {
	static var previews: some View {
		DetailsView()
	}
}
