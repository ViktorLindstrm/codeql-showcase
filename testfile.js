// Sample JavaScript file for CodeQL analysis
function greet(name) {
    if (name) {
        console.log("Hello, " + name + "!");
    } else {
        console.log("Hello, World!");
    }
}
function getNotVulnerable(external) {
    eval(external); 
}

var x = 5;
var x = 10; // This could be flagged by CodeQL

greet("CodeQL");
getNotVulnerable("some input");
