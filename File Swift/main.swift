import Foundation

// let location = "/Users/Daniel/Documents"
let documentsDirectory = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0]

save("Test.txt", to: documentsDirectory) {
	"This is a test\n" +
	"This is the second line"
}

let text = "this is text"
save("Test2.txt", to: documentsDirectory, content: { text })

let fileContent = read("Test.txt", from: documentsDirectory)
print(fileContent)
