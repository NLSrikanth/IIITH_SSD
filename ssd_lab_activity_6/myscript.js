function showAlert() {
    var mname = document.getElementById("Mname").value;
    var email = document.getElementById("Email").value;
    var sname = document.getElementById("SName").value;
    var t = document.getElementById("TLName");
    var tname = t.options[t.selectedIndex].text;

    var confirmText = "Name: " + mname +  " \n Email: " + email + "\n Username: " + sname + " \n Team Lead: " + tname + "\n Team Members: ";
    alert (confirmText);
  }

function allowDrop(ev) {
    ev.preventDefault();
}

function drag(ev) {
    ev.dataTransfer.setData("text", ev.target.id);
}

function drop(ev) {
    ev.preventDefault();
    var data = ev.dataTransfer.getData("text");
    ev.target.appendChild(document.getElementById(data));
}

function validatePassword() {
    var spass = document.getElementById("SPass").value;
    var cpass = document.getElementById("CPass").value;
    if(spass!=cpass)
    {
        document.getElementById('cpasserror').innerHTML="Password Not match";  
    }
    else{
        document.getElementById('cpasserror').innerHTML="";  
    }
}

function validateUserName(value) {
    // Regular expression
    const regex1 = /[A-Z]/;
    const regex2 = /[0-9]/;

    // Check if string contians letters
    const doesItHaveLetter = regex1.test(value);
    const doesItHaveNumber = regex2.test(value);

    if(!doesItHaveLetter || !doesItHaveNumber)
    {
        document.getElementById('unameerror').innerHTML="Invalid UserName";  
    }
    else{
        document.getElementById('unameerror').innerHTML="";  
    }
}

document.addEventListener('keypress', keyPressHandler)

function keyPressHandler(event) {
    if (event.Control && event.KeyCode == Keys.D1)
    {
        setBackgroundColor();
    }
}

function onSubmit() {
    var spass = document.getElementById("SPass").value;
    var cpass = document.getElementById("CPass").value;
    var sname = document.getElementById("SName").value;
    var mname = document.getElementById("Mname").value;
    var email = document.getElementById("Email").value;
    var sname = document.getElementById("SName").value;
    var t = document.getElementById("TLName");
    var tname = t.options[t.selectedIndex].text;
    if(mname.trim()!="" && email.trim()!="" && spass.trim()!="" && sname.trim()!="" && tname.trim()!=""){
        showAlert();
    }
}


function setBackgroundColor() {
    var element = document.body;
    element.classList.toggle("dark-mode");
}