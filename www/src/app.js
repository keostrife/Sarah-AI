import _config from './_config.js';
import Sarah from './_sarah/';
import ImageFinder from './Image/';
import Weather from './Weather/';
import './index.html';

class App {
	constructor() {
		this.config = _config;
		this.imageFinder = new ImageFinder();
		this.weather = new Weather();
		this.sarah = new Sarah();
	}

	//init is called after enable is fully initialized
	init() {
		this.sarah.init();
		this.imageFinder.init();
	}

	executeCommands(command) {
		if(command.substring(0,5) == "/img ") {
			this.imageFinder.findImages(command.substring(5));
			return true;
		}

		if(command.substring(0,8) == "/weather") {
			let keyword = command.substring(9);
			if(keyword == "current")
				this.weather.getUserLocation();
			else if (this.weather.keywords[keyword]) 
				this.weather.findWeather(this.weather.keywords[keyword].lat, this.weather.keywords[keyword].lng);

			return true;
		}

		return false;
	}

}

window.app = new App();
$(document).ready(()=>{
	app.init();
});
