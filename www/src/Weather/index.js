import "./sass/weather.scss";

export default class Weather {
	constructor() {
		this.containerEl = "#response-container";
		this.data = {};
		this.keywords = {
			home: {
				lat: 0,
				lng: 0
			},
			work: {
				lat: 0,
				lng: 0
			},
			beach: {
				lat: 43.6614801,
				lng: -79.3054303
			},
			"the beach": {
				lat: 43.6614801,
				lng: -79.3054303
			}
		}
	}

	init() {

	}

	render() {
		window.app.sarah.speak(`Here is the weather at ${this.data.city.name} in the next 24 hours`);
		let html = `<h2>${this.data.city.name}</h2>`;
		this.data.list.forEach(item=>{
			html+= `
				<figure>
					<div class="left-column">
						<img src="http://openweathermap.org/img/wn/${item.weather[0].icon}@2x.png" alt="" class="icon" />
					</div>
					<div class="right-column">
						<span class="des">${item.weather[0].description}</span>
						<span class="time">${(new Date(item.dt_txt)).getHours()}:00</span>
						<span class="temp">${Math.round(item.main.temp)}°C</span>
						<span class="hum">${Math.round(item.main.humidity)}%</span>
					</div>
				</figure>
			`;
		});
		
		$(this.containerEl).html(`<div class="weather-container">${html}</div>`);
	}

	getUserLocation() {
		window.app.sarah.speak("I'm getting the weather near you, hang on");
		navigator.geolocation.getCurrentPosition((position)=>{
		  this.findWeather(position.coords.latitude, position.coords.longitude);
		});
	}

	findWeather(lat, lng) {
				fetch(`/API/weather.php?secret=boobs&lat=${lat}&lng=${lng}`).then((response)=>{
			    return response.json();
			  })
			  .then((data)=>{
			  	this.data = data;
		      this.render();
			  });
	}

	findWeatherAtCity(city) {
				fetch(`/API/weather.php?secret=boobs&city=${city}`).then((response)=>{
			    return response.json();
			  })
			  .then((data)=>{
			  	this.data = data;
		      this.render();
			  });
	}

}