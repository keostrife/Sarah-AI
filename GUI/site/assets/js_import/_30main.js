{
	let _app = {};

	_app.init = () => {
		for(let i in _app) {
			if (_app[i].init) _app[i].init();
		}
	}

	_app.queryString = () => {
		let string = window.location.search.substr(1).split('&');
	    if (string == "") return {};
	    let data = {};
	    for (let i of string) {
	    	let pair=string[i].split('=', 2);
	    	if (pair.length == 1)
	    	    data[pair[0]] = "";
	    	else
	    	    data[pair[0]] = decodeURIComponent(pair[1].replace(/\+/g, " "));
	    }
	    return data;
	}


	window.onload = function(){
		_app.init();
	}

	window.App = _app;
}