// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/


function MenuTab(tab) {
			$('#landNav a').removeClass('landSelected');
			$('#landTab'+tab).addClass('landSelected');
			$('#landDescContent div').removeClass('landShowContent');
			$('#landTab'+tab+'Content').addClass('landShowContent');
			//console.log('tab d content is', 'tab'+d+'content');
			
}