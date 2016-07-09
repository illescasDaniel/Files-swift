import Foundation

func save(file: String, to: String, content: () -> String) {
	
	let path = to + "/" + file
	
	do {
		try content().writeToFile(path, atomically: true, encoding: NSUTF8StringEncoding)
	}
	catch {
		print(error)
	}
}

func read(file: String, from: String) -> String {
	
	var content: String = String()
	
	do {
		content = try String(contentsOfFile: from + "/" + file)
	}
	catch {
		print(error)
	}
	
	return content
}