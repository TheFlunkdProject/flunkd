function topbannerReveal() {
var cssStringTopbannerReveal = "opacity:1;height:6em;";
document.getElementById('topbannerContainer').style.cssText = cssStringTopbannerReveal;
document.getElementById('topbannerTrigger').style.color = "#55BBFF";
}

function topbannerConceal() {
var cssStringTopbannerConceal = "opacity:.1;height:3em;";
document.getElementById('topbannerContainer').style.cssText = cssStringTopbannerConceal;
document.getElementById('topbannerTrigger').style.color = "#FFFFFF";
}