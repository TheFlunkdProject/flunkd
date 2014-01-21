<script>
function wolframOn() {
cssStringWolframOn = "margin:-10em 0em 0em 0em;transition:all .1s .5s;";
cssStringWolframTextOn = "color:#55BBFF;transition:color .5s 0s;cursor:pointer;";
document.getElementById('wolframHolder').style.cssText = cssStringWolframOn;
document.getElementById('wolframLabel').style.cssText = cssStringWolframTextOn;
}

function wolframOff() {
cssStringWolframOff = "margin:3.5em 0em 0em 0em;transition:all .1s .5s;"
cssStringWolframTextOff = "color:#000000;transition:color .5s 0s;cursor:pointer;";
document.getElementById('wolframHolder').style.cssText = cssStringWolframOff;
document.getElementById('wolframLabel').style.cssText = cssStringWolframTextOff;
}
</script>
<div id="bottomMenuContainer">
<div id="bottomMenuTexture"></div>
	
	<div class="menuItemContainer" style="width:30em;" 
	onmouseover="wolframOn()" onmouseout="wolframOff()">
		<div class="menuItemTextPlacer" id="wolframLabel" style="z-index:-1;text-align:center;">
			Wofram Alpha
		</div>
		<div id="wolframHolder" style="position:absolute;width:100%;height:100%;margin:3.5em 0em 0em 0em;">
			<script type="text/javascript" id="WolframAlphaScript59bc1c3aaa3f0adf4262bfcbbe68a036" 
			src="http://www.wolframalpha.com/widget/widget.jsp?id=59bc1c3aaa3f0adf4262bfcbbe68a036&theme=black">
			</script>
		</div>
	</div>
	
	
	
	<div class="spacerLine"></div>
	<div class="menuItemContainer" style="width:14em;">
		<%@ include file="/JSP/StyleChanger.jsp" %>
	</div>
</div> 