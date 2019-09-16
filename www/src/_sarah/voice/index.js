var SpeechRecognition = SpeechRecognition || webkitSpeechRecognition;

class Voice {
	constructor() {
		this.recognition = new SpeechRecognition();
		// this.recognition.continue = true;
		this.recognition.lang = 'en-US';
		this.recognition.interimResults = false;
		this.recognition.maxAlternatives = 1;
		this.synth = speechSynthesis;
		this.voiceIndex = 48;

		this.recognition.onresult = function(event) {
			console.log(event);
		}

		this.recognition.onspeechend = ()=> {
		  this.recognition.stop();
		}

		this.recognition.onnomatch = function(event) {
			console.log(event);
		}

		this.recognition.onerror = function(event) {
		  console.log(event);
		}

	}

	init() {
		
	}

	speak(text) {
		let utter = new SpeechSynthesisUtterance(text);
		let voices = this.synth.getVoices();
		utter.voice = voices[this.voiceIndex];
		this.synth.speak(utter);
	}
}

export default Voice;