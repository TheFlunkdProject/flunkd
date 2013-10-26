<div id="contact"
	onmouseover="contactOn()"
	onmouseout="contactOff()">

<img src="file:///F:/flunkd1.2/images/galaxys3.png" id="galaxy"
	onmouseover="contactOn()"
	onmouseout="contactOff()">


<div id="contactmenu"
	onmouseover="contactOn()"
    onmouseout="contactOff()">
	<div id="contactlistbutton"
			onclick="writeMessageOn()">contact someone</div>
	<div id="writemessage">
		<div id="contactlistlabel" onmouseover="contactListOn()"
									onmouseout="contactListOff()">Choose a recipient</div>
		
	</div>
	<div id="contactlist" style="visibility:hidden;"
		onmouseover="contactListOn()"
		onmouseout="contactListOff()">
		<div id="searchcontacts">Search: <input type="text"/ id="searchcontacsinput"></div>
		<ul>
		<li><a href="#">flunkd</a>
		</li>
		<li><a href="#">flunkd.com</a>
		</li>
		<li><a href="#">joe</a>
		</li>
		<li><a href="#">joe</a>
		</li>
		</ul>
	</div>
	<div id="writemessagetextholder"><textarea rows="10" id="writemessagetext" ></textarea></div>

</div>

</div>

<div id="contacttrigger"
	onmouseover="contactOn()"
	onmouseout="contactOff()">Contact
</div>