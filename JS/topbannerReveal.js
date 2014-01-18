function topbannerReveal() {
cssStringTopbannerReveal = "opacity:1;height:6em;";
cssStringTopbannerTriggerOn = "color:#55BBFF;transition:color .5s .0s;"
document.getElementById('topbannerContainer').style.cssText = cssStringTopbannerReveal;
document.getElementById('topbannerTrigger').style.cssText = cssStringTopbannerTriggerOn;
}

function topbannerConceal() {
cssStringTopbannerConceal = "opacity:.1;height:4%;";
cssStringTopbannerTriggerOff = "color:#FFFFFF;transition:color .5s .5s;"
document.getElementById('topbannerContainer').style.cssText = cssStringTopbannerConceal;
document.getElementById('topbannerTrigger').style.cssText = cssStringTopbannerTriggerOff;
}