function teste () {
	var obs = document.getElementById("txtNome").value;
	if (obs == '') {
		//alert("Campo Nome eh obrigatorio");
	}
}

function validar() {
	var obs = document.getElementById("txtNome").value;
	if (obs == '') {
		alert("Campo Nome eh obrigatorio");
		return false;
	} else {
		return true;
	}
}
/**
 * 
 */