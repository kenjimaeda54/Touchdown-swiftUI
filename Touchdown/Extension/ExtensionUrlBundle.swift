//
//  ExtensionUrlBundle.swift
//  Touchdown
//
//  Created by kenjimaeda on 17/12/22.
//

import Foundation

extension Bundle {
	
	func decodeJsonFromBundle<T: Codable >(_ resourceWithExtension: String) -> T? {
		guard let url = Bundle.main.url(forResource: resourceWithExtension, withExtension: nil) else {
			print("error on get bundle")
			return nil}
		
		if let data =  try? Data(contentsOf: url) {
			let decoder = JSONDecoder()
			
			do {
				 return try decoder.decode(T.self, from: data)
			}catch  {
				print("não conseguiu decodificar")
			}
			
		}
		return nil
	};
	
	
}
