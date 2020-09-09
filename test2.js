/**
 *
 * initiate an npm package.json into this project's folder.
 * Install the npm library chalk into this project and require it in this file, read the documentation online for Chalk
 *
 * Iterate the colorsArray and for each color in the array, console.log "Hello World" in that color using Chalk.
 */

const chalk = require("chalk");

let colorsArray = ["green", "blue", "red"];

// your code goes here
var color;
for (color of colorsArray) {
  const warning = chalk.keyword(`${color}`);
  console.log(`${color} with ` + warning("Hello World!"));
}
