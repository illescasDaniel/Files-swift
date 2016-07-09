import Foundation

func save(file: String, to: String, content: () -> String) {

	do {
		try content().writeToFile("\(to)/\(file)", atomically: true, encoding: NSUTF8StringEncoding)
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
