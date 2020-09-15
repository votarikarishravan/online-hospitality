function ploginvalidate() {
	var password = document.getElementById("ppassword").value;
	var message = document.getElementById("etag");
	
	// password length validation
	if (password.length < 6 )  {
		message.innerHTML = "password must have atleast 6 digits";
		return false;
	}else if(password.length > 16){
		message.innerHTML = "password should not be morethan 16 digits";
		return false;
	}

}

function addDoctorValidate() {
	
	var msg = document.getElementById("etag");
	var docId = document.getElementById("docId").value;
	var docName = document.getElementById("docName").value;
	var speciality = document.getElementById("speciality").value;
	var mobile = document.getElementById("mobnum").value;
	var password = document.getElementById("password").value;
	var confirmPassword = document.getElementById("confirmPassword").value;

	if (docId.length > 5) {
		msg.innerHTML = "id should not be morethan 5 digits";
		return false;
	} else if (isNaN(docId)) {
		msg.innerHTML = "id should be number";
		return false;
	} else if (docName.length > 26) {
		msg.innerHTML = "name should not be morethan 26 digits";
		return false;
	} else if (speciality == "") {
		msg.innerHTML = "please choose any one speciality";
		return false;
	} else if (mobile.length > 10) {
		msg.innerHTML = "please enter 10 digit mobile number";
		return false;
	} else if (password != confirmPassword) {
		alert("Passwords do not match.");
		return false;
	}
}

function addReceptionistValid() {
	var msg = document.getElementById("etag");
	var rocId = document.getElementById("rocId").value;
	var name = document.getElementById("name").value;
	var mobile = document.getElementById("mobnum").value;
	var password = document.getElementById("password").value;
	var confirmPassword = document.getElementById("confirmPassword").value;

	if (rocId.length > 5) {
		msg.innerHTML = "id should not be morethan 5 digits";
		return false;
	} else if (isNaN(rocId)) {
		msg.innerHTML = "id should be number";
		return false;
	} else if (name.length > 26) {
		msg.innerHTML = "name should not be morethan 26 digits";
		return false;
	} else if (mobile.length > 10 || isNaN(mobile)) {
		msg.innerHTML = "please enter 10 digit mobile number";
		return false;
	} else if (password != confirmPassword) {
		alert("Passwords do not match.");
		return false;
	}
}
function changePasswordValidate(){
	var msg = document.getElementById("etag");
	var mobile = document.getElementById("mobnum").value;
	var password = document.getElementById("password").value;
	var confirmPassword = document.getElementById("confirmPassword").value;

	if(isNaN(mobile) || mobile.length>10){
		msg.innerHTML = "id should not be morethan 5 digits";
		return false;
	}else if (password != confirmPassword) {
		alert("Passwords do not match.");
		return false;
	}
}

function profileValidation() {
	var oFile = document.getElementById("fileUpload").files[0];

    if (oFile.size > 2097152) // 2 mb for bytes.
    {
        alert("Image size exceeds 2 MB");
        return false;
    }
}

function validateRegisterForm(){
	var msg = document.getElementById("etag");
	var name = document.getElementById("name").value;
	var mobile = document.getElementById("mobile").value;
	var password = document.getElementById("password").value;
	var confirmPassword = document.getElementById("confirmPassword").value;
	
	if (name.length > 26) {
		msg.innerHTML = "name should not be morethan 26 digits";
		return false;
	} else if (mobile.length > 10 || isNaN(mobile)) {
		msg.innerHTML = "please enter 10 digit mobile number";
		return false;
	} else if (password != confirmPassword) {
		alert("Passwords do not match.");
		return false;
	}
}