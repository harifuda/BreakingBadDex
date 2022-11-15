//
//  ContentView.swift
//  BreakingBadDex
//
//  Created by Lukas Nguyen on 2022-11-04.
//

import SwiftUI

struct ContentView: View {
	
	@ObservedObject var viewModel: CharacterViewModel = CharacterViewModel()
	@State var currentPage: Int = 0
	var body: some View {
		NavigationView {
			ScrollView {
				LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())],  spacing: 15) {
					ForEach(viewModel.breakingBadArray) {
						character in
						HStack {
							NavigationLink(destination: DetailsView(character: character)) {
								CharacterView(character: character)
							}
						}
						
					}
				}
				.navigationBarTitle(Text("Tuan's Breaking Bad Dex"), displayMode: .inline)
			}
			
		}
	}
}
struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}

