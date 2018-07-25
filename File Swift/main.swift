import Foundation

let location = URL(fileURLWithPath: "/Users/Daniel/Documents")
let filePath = location.appendingPathComponent("Test.txt")//File.documentsDirectory?.appendingPathComponent("Test.txt")

File.save("""
This is a test
This is a second line
""", to: filePath)


let fileContent = File.read(from: filePath)
print(fileContent ?? "")

//File.remove(file: "Test.txt", from: filePath)
File.remove(at: filePath)

