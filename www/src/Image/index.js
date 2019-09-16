export default class GoogleImage {
	constructor() {
		this.containerEl = "#response-container";
		this.data = [];
	}

	init() {

	}

	render() {
		let html = "";
		this.data.forEach(image=>{
			html+= `
				<img src="${image.link}" alt="" width="300" class="google-image" />
			`;
		})
		$(this.containerEl).html(html);
	}

	findImages(keyword) {
				fetch(`/API/googleImage.php?secret=boobs&keyword=${keyword}`).then((response)=>{
			    return response.json();
			  })
			  .then((data)=>{
			  	this.data = [];
					for(var i = 0; i<data.items.length; i++) {
						if(this.data.length >= 3) break;
		      	if(data.items[i].link.substr(-4) != ".jpg" && data.items[i].link.substr(-4) != ".png" && data.items[i].link.substr(-4) != ".gif") continue;
		        this.data.push(data.items[i]);
		      }
		      this.render();
			  });
	}

}