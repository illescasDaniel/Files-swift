import Foundation

func save(file: String, to: String, content: () -> String) {
	
	do {
		try content().write(toFile: "\(to)/\(file)", atomically: true, encoding: String.Encoding.utf8)
	}
	catch {
		print(error)
	}
}

func read(file: String, from: String) -> String {
	
	var content = String()
	
	do {
		content = try String(contentsOfFile: "\(from)/\(file)")
	}
	catch {
		print(error)
	}
	
	return content
}

func remove(file: String, from: String) {
	
	do {
		try FileManager.default.removeItem(atPath: "\(from)/\(file)")
	}
	catch {
		print(error)
	}
}

func documentsDirectory() -> String {
	return NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
}
