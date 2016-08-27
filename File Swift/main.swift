import Foundation

// let location = "/Users/Daniel/Documents"

save(file: "Test.txt", to: documentsDirectory()) {
	"This is a test\n" +
	"This is the second line"
}

let text = "this is text"
save(file: "Test2.txt", to: documentsDirectory(), content: { text })

let fileContent = read(file: "Test.txt", from: documentsDirectory())
print(fileContent)

remove(file: "Test.txt", from: documentsDirectory())
remove(file: "Test2.txt", from: documentsDirectory())
