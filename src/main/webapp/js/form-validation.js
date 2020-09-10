/**
 * 
 */


function validateform() {
  var email = document.getElementById("pemail").value;
  var password = document.getElementById("ppassword").value;
  var mailformat = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;

  if (password.length < 6) {
    alert("Password must be at least 6 characters long.");
    return false;
  } else if (mailformat.test(email) == false) {
    alert("Enter a valid mail address");
    return false;
  }

  var confirmPassword = document.getElementById("pConfirmPassword").value;
  if (password != confirmPassword) {
    alert("Passwords do not match.");
    return false;
  }
  return true;
}