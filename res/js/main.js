$(document).ready(function(){




/******************** MENU SALSICHA ***************************************************/
/******************** MENU SALSICHA ***************************************************/
/******************** MENU SALSICHA ***************************************************/
/******************** MENU SALSICHA ***************************************************/

$("#btn-bars").on("click", function(){
    
    $("#header-mobile").toggleClass("open-menu");

});//end on



$("#menu-mobile-mask, .btn-close").on("click", function(){

    $("#header-mobile").removeClass("open-menu");


});//end on
/******************** MENU SALSICHA ***************************************************/
/******************** MENU SALSICHA ***************************************************/
/******************** MENU SALSICHA ***************************************************/
/******************** MENU SALSICHA ***************************************************/







/******************** FREE REGISTER BUTTON ***************************************************/
$(document).on('click', '#conversion1', function(e){
	

	function gtag_report_conversion(url) 
	{
		var callback = function () {
			if (typeof(url) != 'undefined') {
			window.location = url;
			}
		};
		gtag('event', 'conversion', {
			'send_to': 'AW-463505838/MDnMCPO52IkCEK6Tgt0B',
			'value': 0.0,
			'currency': 'BRL',
			'transaction_id': '',
			'event_callback': callback
		});
		return false;


	};


	gtag_report_conversion();



});






/******************** COPIAR ***************************************************/
/******************** COPIAR ***************************************************/
/******************** COPIAR ***************************************************/
$("#copy1").on("click", function(e){
    
	e.preventDefault();


	var content = document.querySelector("#area1");

	content.select();


	document.execCommand('copy');

	//navigator.clipboard.writeText('dfasdfasfas');

	

	

});//end on



/******************** COPIAR ***************************************************/
/******************** COPIAR ***************************************************/
/******************** COPIAR ***************************************************/















/******************** TEXTAREA AUTOFIT ***************************************************/
/******************** TEXTAREA AUTOFIT ***************************************************/
/******************** TEXTAREA AUTOFIT ***************************************************/
/******************** TEXTAREA AUTOFIT ***************************************************/
var tx = document.getElementsByTagName('textarea');

for (var i = 0; i < tx.length; i++) {
  tx[i].setAttribute('style', 'height:' + (tx[i].scrollHeight) + 'px;overflow-y:hidden;');
  tx[i].addEventListener("input", OnInput, false);
}

function OnInput() {
  this.style.height = 'auto';
  this.style.height = (this.scrollHeight) + 'px';
}
/******************** TEXTAREA AUTOFIT ***************************************************/
/******************** TEXTAREA AUTOFIT ***************************************************/
/******************** TEXTAREA AUTOFIT ***************************************************/
/******************** TEXTAREA AUTOFIT ***************************************************/


















/******************** INSERIR KEYWORDS ***************************************************/
/******************** INSERIR KEYWORDS ***************************************************/
/******************** INSERIR KEYWORDS ***************************************************/
$("#insert1").on("click", function(e){
    
	e.preventDefault();

	let check1 = document.querySelector("#check1").checked;
	let check2 = document.querySelector("#check2").checked;


	if( check1 == true || check2 == true )
	{

		


		let content = document.querySelector("#area2").value;
		let area1 = document.querySelector("#area1");
		let handler = content.split( '\n' );


		let split = [];


		for (const key in handler) 
		{

			// Didn't find something other than a space which means it's empty
			if ( !/\S/.test( handler[key] ) ) continue;

			split.push( handler[key].trim() );
			
		}//end if

		
		let insert = '';

		
		for (const key in split) 
		{
			
			if( check1 == true ) insert += '"'+split[key]+'"\n';
			
			if( check2 == true ) insert += '['+split[key]+']\n';
			

		}//end for..in	

		area1.value = insert;


	}//end if



});//end on



/******************** INSERIR KEYWORDS ***************************************************/
/******************** INSERIR KEYWORDS ***************************************************/
/******************** INSERIR KEYWORDS ***************************************************/








/******************** CHECKBOX 1 ***************************************************/
/******************** CHECKBOX 1 ***************************************************/
/******************** CHECKBOX 1 ***************************************************/
$("#check1").on("click", function(e){
    
	//e.preventDefault();

	var check1 = document.querySelector("#check1");
	var check2 = document.querySelector("#check2");


	if( check1.checked == false && check2.checked == false ) check1.checked = true;
	

});//end on



/******************** CHECKBOX 1 ***************************************************/
/******************** CHECKBOX 1 ***************************************************/
/******************** CHECKBOX 1 ***************************************************/
























/******************** CHECKBOX 2 ***************************************************/
/******************** CHECKBOX 2 ***************************************************/
/******************** CHECKBOX 2 ***************************************************/
$("#check2").on("click", function(e){
    
	//e.preventDefault();

	let check1 = document.querySelector("#check1");
	let check2 = document.querySelector("#check2");


	if( check2.checked == false && check1.checked == false ) check2.checked = true;
	

});//end on



/******************** CHECKBOX 2 ***************************************************/
/******************** CHECKBOX 2 ***************************************************/
/******************** CHECKBOX 2 ***************************************************/































/******************** INSERIR HASHTAGS ***************************************************/
/******************** INSERIR HASHTAGS ***************************************************/
/******************** INSERIR HASHTAGS ***************************************************/
$("#insert2").on("click", function(e){
    
	e.preventDefault();

	
	let radio = document.querySelector('input[name="radio0"]:checked').value;


	let content = document.querySelector("#area2").value;
	let area1 = document.querySelector("#area1");
	let handler = content.split( '\n' );

	let split = [];


	for (const key in handler) 
	{

		// Didn't find something other than a space which means it's empty
		if ( !/\S/.test( handler[key] ) ) continue;

		split.push( handler[key].trim() );
		
	}//end if


	let insert = '';

	
	for (const key in split) 
	{

		//split[key] = split[key].trim(); 

		//let handler = split[key].trim();

				
		if( radio == 0 ) insert += '#'+split[key]+'\n';

		if( radio == 1 ) insert += '#'+split[key]+' ';

		if( radio == 2 )
		{
			if( key == (split.length-1) )
			{
				insert += '#'+split[key];

			}//end if
			else
			{
				insert += '#'+split[key]+', ';

			}//enmd else
			

		}//end if



	}//end for..in



	area1.value = insert;
	

	

});//end on



/******************** INSERIR HASHTAGS ***************************************************/
/******************** INSERIR HASHTAGS ***************************************************/
/******************** INSERIR HASHTAGS ***************************************************/
























/******************** EBOOK DOWNLOAD PANEL ***************************************************/
/******************** EBOOK DOWNLOAD PANEL ***************************************************/
/******************** EBOOK DOWNLOAD PANEL ***************************************************/
/******************** EBOOK DOWNLOAD PANEL ***************************************************/

$("#ebook-download").on("click", function(e){
    
	e.preventDefault();
	
	let ebook = document.querySelector('#ebookName');
	let ebookName = ebook.dataset['ebookname'];
	
    let link = document.createElement('a');
	link.href = '/ebook/'+ebookName;
	link.download = ebookName;
	link.click();
	

});//end on





/******************** EBOOK DOWNLOAD PANEL ***************************************************/
/******************** EBOOK DOWNLOAD PANEL ***************************************************/
/******************** EBOOK DOWNLOAD PANEL ***************************************************/
/******************** EBOOK DOWNLOAD PANEL ***************************************************/




















/******************** MENU DROPDOWN TEMPLATES ***************************************************/
/******************** MENU DROPDOWN TEMPLATES ***************************************************/
/******************** MENU DROPDOWN TEMPLATES ***************************************************/
/******************** MENU DROPDOWN TEMPLATES ***************************************************/

$(document).on('click', '#domain-dropdown-button', function(){
	$('#domain-dropdown').addClass('show');
	$('#domain-dropdown-menu').addClass('show');

});



$(document).on('mouseleave', '#domain-dropdown-menu', function(){
	$('#domain-dropdown').removeClass('show');
	$('#domain-dropdown-menu').removeClass('show');

});
/******************** MENU DROPDOWN TEMPLATES ***************************************************/
/******************** MENU DROPDOWN TEMPLATES ***************************************************/
/******************** MENU DROPDOWN TEMPLATES ***************************************************/
/******************** MENU DROPDOWN TEMPLATES ***************************************************/








});//END document ready