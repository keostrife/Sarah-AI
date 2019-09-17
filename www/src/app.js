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
			
			if (keyword.substring(0,3) == "at " && this.weather.keywords[keyword.substring(3)]) {
				//keyword such as "home/work/the beach"
				keyword = keyword.substring(3);
				this.weather.findWeather(this.weather.keywords[keyword].lat, this.weather.keywords[keyword].lng);
			} else if (keyword.substring(0,3) == "in ") {
				this.weather.findWeatherAtCity(keyword.substring(3));
			} else {
				//
				this.weather.getUserLocation();
			}

			return true;
		}

		return false;
	}

}

window.app = new App();
$(document).ready(()=>{
	app.init();
});
