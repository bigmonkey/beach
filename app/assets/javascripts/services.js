// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/


function MenuTab(tab) {
			$('#landNav a').removeClass('landSelected');
			$('#landTab'+tab).addClass('landSelected');
			$('#landDescContent div').removeClass('landShowContent');
			$('#landTab'+tab+'Content').addClass('landShowContent');
			//console.log('tab d content is', 'tab'+d+'content');
			//var phoneInput = 123;
			//console.log('phone input is ', phoneInput);
}

function validPhone() {
			document.getElementById('phoneLabel').innerHTML = "Phone";
			// match color to $landHighlight in custom_variables.css.scss
			document.getElementById('phoneLabel').style.color='#003300'; 
			console.log ('I get called all the time')
			var phoneInput = document.getElementById('guest_phone').value;
			var phonePattern = /^[0-9]{3}-[0-9]{3}-[0-9]{4}$/;

			if (phoneInput.match(phonePattern))
				{ return true;}
			else
				{
					document.getElementById('phoneLabel').innerHTML = "Phone: format is xxx-xxx-xxxx";
					// match $errorColor in custom_variables.css.scss
					document.getElementById('phoneLabel').style.color='#838b08';
				return false;	
				}

}

