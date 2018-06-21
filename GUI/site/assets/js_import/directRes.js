App.directResponse = {
	init: () => {
		$(".input").on("click", function(e){
			$("#input-alias h1").html($(this).html());
			$("#input-alias li").hide();
			$("#input-alias li[data-input='"+$(this).html()+"']").show();
			App.directResponse.openInputAlias();
			e.preventDefault();
		});
		$(".output").on("click", function(e){
			$("#output-alias h1").html($(this).html());
			$("#output-alias li").hide();
			$("#output-alias li[data-output='"+$(this).html()+"']").show();
			App.directResponse.openOutputAlias();
			e.preventDefault();
		});

		$("#input-alias .close, #output-alias .close").on("click", function(e){
			App.directResponse.closeInputAlias();
			App.directResponse.closeOutputAlias();
			e.preventDefault();
		});

		$("#directResponseAddBtn").on("click",function(){
			App.directResponse.addDirectResponse();
		})

		$("#inputAliasAddBtn").on("click",function(){
			App.directResponse.addInputAlias();
		})

		$("#outputAliasAddBtn").on("click",function(){
			App.directResponse.addOutputAlias();
		})
	},
	openInputAlias: () => {
		$("#direct-response").css({"left":"50%"});
		$("#input-alias").css({"left":"0"});

	},
	closeInputAlias: () => {
		$("#direct-response").css({"left":"0"});
		$("#input-alias").css({"left":"-50%"});
	},
	openOutputAlias: () => {
		$("#direct-response").css({"left":"-50%"});
		$("#output-alias").css({"left":"50%"});
	},
	closeOutputAlias: () => {
		$("#direct-response").css({"left":"0"});
		$("#output-alias").css({"left":"100%"});
	},
	addDirectResponse: () => {
		if(!$("#inputAdd").val()) {
			alert("need input");
			return;
		}

		if(!$("#outputAdd").val()) {
			alert("need output");
			return;
		}

		$.post("/API/directResponse.php",{
			add: "true",
			type: "directResponse",
			input: $("#inputAdd").val(),
			output: $("#outputAdd").val()
		}, function(data){
			if(JSON.parse(data).success != "true") alert("error");
			else alert("success! Refresh to see changes");
		})
	},
	addInputAlias: () => {
		if(!$("#inputAliasAdd").val()) {
			alert("need alias");
			return;
		}

		$.post("/API/directResponse.php",{
			add: "true",
			type: "inputAlias",
			input: $("#input-alias h1").html(),
			alias: $("#inputAliasAdd").val()
		}, function(data){
			if(JSON.parse(data).success != "true") alert("error");
			else alert("success! Refresh to see changes");
		})
	},
	addOutputAlias: () => {
		if(!$("#outputAliasAdd").val()) {
			alert("need alias");
			return;
		}

		$.post("/API/directResponse.php",{
			add: "true",
			type: "outputAlias",
			output: $("#output-alias h1").html(),
			alias: $("#outputAliasAdd").val()
		}, function(data){
			if(JSON.parse(data).success != "true") alert("error");
			else alert("success! Refresh to see changes");
		})
	},
}