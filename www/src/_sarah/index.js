import config from './config.js';
import Voice from './voice';

export default class Sarah {
	constructor() {
		this.voice = new Voice();
	}

	init() {
		this.voice.init();
		this.render();
		this.askSarah("hi");

	}

	//render html
	render() {
		let html = `
			<div id="response-container">
				
			</div>
			<form action="" id="input-collector">
				<input type="text" id="input" name="input" value="hi">
				<input type="submit">
			</form>
		`;

		$("body").prepend(html);

		$("#input-collector").submit((e)=>{
			let input = $("#input").val();
			this.askSarah(input);

			e.preventDefault();
		});
	}

	askSarah(input) {
		fetch(`/?s=${encodeURIComponent(input)}`)
	  .then((response)=>{
	    return response.text();
	  }).then((response)=>{
	  	if(!window.app.executeCommands(response))
		  	this.renderResponse(response);
	  });
	}

	renderResponse(response) {
		$("#response-container").html(response);
		this.speak(response);
	}

	speak(output) {
		this.voice.speak(output);
	}
}