/**
 * Using fs, Write into a file ./test.txt the sentence "Hello World!" in this project's root folder.
 * When the write is complete, console.log that the file was saved successfully.
 */

// your code goes here

const fs = require("fs");
fs.writeFile("./test.txt", "Hello World", "utf8", function () {
  console.log("file was saved successfully.");
});