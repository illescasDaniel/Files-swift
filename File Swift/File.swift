import Foundation

func save(file: String, to directory: String, content: () -> String) {
	
	do {
		try content().write(toFile: "\(directory)/\(file)", atomically: true, encoding: String.Encoding.utf8)
	}
	catch {
		print(error)
	}
}

func read(file: String, from directory: String) -> String {
	
	var content = String()
	
	do {
		content = try String(contentsOfFile: "\(directory)/\(file)")
	}
	catch {
		print(error)
	}
	
	return content
}

func remove(file: String, from directory: String) {
	
	do {
		try FileManager.default.removeItem(atPath: "\(directory)/\(file)")
	}
	catch {
		print(error)
	}
}

func documentsDirectory() -> String {
	return NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
}
