
function register(){
	let Accno=document.forms["newaccount"]["accno"].value;
    let arr1=[];
    if(/^$/.test(Accno)){
        arr1.push("Enter Account number");
    } else if(!/^\(?([0-9]{8})$/.test(Accno)){
        arr1.push("Enter 8 digit number only");
    }
    document.getElementById("accno_error").innerHTML=arr1.join(",");


	let Uname=document.forms["newaccount"]["uname"].value;
    let arr2=[];
    if(/^$/.test(Uname)){
        arr2.push("Enter the user name");
    }else if(!/^[A-Z]{1}[A-Za-z0-9$_]{2,16}$/.test(Uname)){
        arr2.push("User name should follow rules");
    }
    document.getElementById("uname_error").innerHTML=arr2.join(",");
    
    
    let Pwd=document.forms["newaccount"]["psw"].value;
    let arr3=[];
    if(/^$/.test(Pwd)){
        arr3.push("Enter the password");
    } else if(!/(?=.*[0-9])(?=.*[!@#$%^&*])(?=.*[A-Z])(?=.*[a-z]).{7,16}$/.test(Pwd)){
        arr3.push("Password should follow rules");
    }
    document.getElementById("psw_error").innerHTML=arr3.join(",");
    
    
    let Amount=document.forms["newaccount"]["amount"].value;
    let arr4=[];
    if(/^$/.test(Amount)){
        arr4.push("Enter Amount");
    }
    document.getElementById("amount_error").innerHTML=arr4.join(",");
    
    
    let Address=document.forms["newaccount"]["address"].value;
    let arr5=[];
    if(/^$/.test(Address)){
        arr5.push("Enter your address details");
    }
    document.getElementById("address_error").innerHTML=arr5.join(",");
    
    
    
    let Mno=document.forms["newaccount"]["mno"].value;
    let arr6=[];
    if(/^$/.test(Mno)){
        arr6.push("Enter your number");
    } else if(!/^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/.test(Mno)){
        arr6.push("Enter number only");
    }
    document.getElementById("mno_error").innerHTML=arr6.join(",");
    
    if(arr1.length>0 || arr2.length>0 || arr3.length>0 || arr4.length>0 || arr5.length>0 || arr6.length>0){
    	return false;
    }else{
    	return true;
    }
}



function balance_fun(){
	let Accno=document.forms["balance"]["accno"].value;
    let arr1=[];
    if(/^$/.test(Accno)){
        arr1.push("Enter Account number");
    } else if(!/^\(?([0-9]{8})$/.test(Accno)){
        arr1.push("Enter 8 digit number only");
    }
    document.getElementById("accno_error").innerHTML=arr1.join(",");
    
    let Uname=document.forms["balance"]["uname"].value;
    let arr2=[];
    if(/^$/.test(Uname)){
        arr2.push("Enter the user name");
    }else if(!/^[A-Z]{1}[A-Za-z0-9$_]{2,16}$/.test(Uname)){
        arr2.push("User name should follow rules");
    }
    document.getElementById("uname_error").innerHTML=arr2.join(",");
    
    let Pwd=document.forms["balance"]["psw"].value;
    let arr3=[];
    if(/^$/.test(Pwd)){
        arr3.push("Enter the password");
    } else if(!/(?=.*[0-9])(?=.*[!@#$%^&*])(?=.*[A-Z])(?=.*[a-z]).{7,16}$/.test(Pwd)){
        arr3.push("Password should follow rules");
    }
    document.getElementById("psw_error").innerHTML=arr3.join(",");
    
    if(arr1.length>0 || arr2.length>0 || arr3.length>0){
    	return false;
    }else{
    	return true;
    }
}






function deposit_fun(){
	let Accno=document.forms["deposit"]["accno"].value;
    let arr1=[];
    if(/^$/.test(Accno)){
        arr1.push("Enter Account number");
    } else if(!/^\(?([0-9]{8})$/.test(Accno)){
        arr1.push("Enter 8 digit number only");
    }
    document.getElementById("accno_error").innerHTML=arr1.join(",");
    
    
    let Uname=document.forms["deposit"]["uname"].value;
    let arr2=[];
    if(/^$/.test(Uname)){
        arr2.push("Enter the user name");
    }else if(!/^[A-Z]{1}[A-Za-z0-9$_]{2,16}$/.test(Uname)){
        arr2.push("User name should follow rules");
    }
    document.getElementById("uname_error").innerHTML=arr2.join(",");
    
    
    
    let Pwd=document.forms["deposit"]["psw"].value;
    let arr3=[];
    if(/^$/.test(Pwd)){
        arr3.push("Enter the password");
    } else if(!/(?=.*[0-9])(?=.*[!@#$%^&*])(?=.*[A-Z])(?=.*[a-z]).{7,16}$/.test(Pwd)){
        arr3.push("Password should follow rules");
    }
    document.getElementById("psw_error").innerHTML=arr3.join(",");
    
    
    let Amount=document.forms["deposit"]["depositamount"].value;
    let arr4=[];
    if(/^$/.test(Amount)){
        arr4.push("Enter Amount");
    }
    document.getElementById("amount_error").innerHTML=arr4.join(",");
    
    if(arr1.length>0 || arr2.length>0 || arr3.length>0 || arr4.length>0){
    	return false;
    }else{
    	return true;
    }
    
}








function withdraw_fun(){
	let Accno=document.forms["withdraw"]["accno"].value;
    let arr1=[];
    if(/^$/.test(Accno)){
        arr1.push("Enter Account number");
    } else if(!/^\(?([0-9]{8})$/.test(Accno)){
        arr1.push("Enter 8 digit number only");
    }
    document.getElementById("accno_error").innerHTML=arr1.join(",");
    
    
    let Uname=document.forms["withdraw"]["uname"].value;
    let arr2=[];
    if(/^$/.test(Uname)){
        arr2.push("Enter the user name");
    }else if(!/^[A-Z]{1}[A-Za-z0-9$_]{2,16}$/.test(Uname)){
        arr2.push("User name should follow rules");
    }
    document.getElementById("uname_error").innerHTML=arr2.join(",");
    
    
    
    let Pwd=document.forms["withdraw"]["psw"].value;
    let arr3=[];
    if(/^$/.test(Pwd)){
        arr3.push("Enter the password");
    } else if(!/(?=.*[0-9])(?=.*[!@#$%^&*])(?=.*[A-Z])(?=.*[a-z]).{7,16}$/.test(Pwd)){
        arr3.push("Password should follow rules");
    }
    document.getElementById("psw_error").innerHTML=arr3.join(",");
    
    
    let Amount=document.forms["withdraw"]["withdrawamount"].value;
    let arr4=[];
    if(/^$/.test(Amount)){
        arr4.push("Enter Amount");
    }
    document.getElementById("amount_error").innerHTML=arr4.join(",");
    
    if(arr1.length>0 || arr2.length>0 || arr3.length>0 || arr4.length>0){
    	return false;
    }else{
    	return true;
    }
}






function transfer_fun(){
	let Accno=document.forms["transfer"]["accno"].value;
    let arr1=[];
    if(/^$/.test(Accno)){
        arr1.push("Enter Account number");
    } else if(!/^\(?([0-9]{8})$/.test(Accno)){
        arr1.push("Enter 8 digit number only");
    }
    document.getElementById("accno_error").innerHTML=arr1.join(",");
    
    
    let Uname=document.forms["transfer"]["uname"].value;
    let arr2=[];
    if(/^$/.test(Uname)){
        arr2.push("Enter the user name");
    }else if(!/^[A-Z]{1}[A-Za-z0-9$_]{2,16}$/.test(Uname)){
        arr2.push("User name should follow rules");
    }
    document.getElementById("uname_error").innerHTML=arr2.join(",");
    
    
    
    let Pwd=document.forms["transfer"]["psw"].value;
    let arr3=[];
    if(/^$/.test(Pwd)){
        arr3.push("Enter the password");
    } else if(!/(?=.*[0-9])(?=.*[!@#$%^&*])(?=.*[A-Z])(?=.*[a-z]).{7,16}$/.test(Pwd)){
        arr3.push("Password should follow rules");
    }
    document.getElementById("psw_error").innerHTML=arr3.join(",");
    
    
    let Accno1=document.forms["transfer"]["taccno"].value;
    let arr11=[];
    if(/^$/.test(Accno1)){
        arr11.push("Enter Account number");
    } else if(!/^\(?([0-9]{8})$/.test(Accno1)){
        arr11.push("Enter 8 digit number only");
    }
    document.getElementById("taccno_error").innerHTML=arr11.join(",");
    
    let Amount=document.forms["transfer"]["transferamount"].value;
    let arr4=[];
    if(/^$/.test(Amount)){
        arr4.push("Enter Amount");
    }
    document.getElementById("amount_error").innerHTML=arr4.join(",");
    
    if(arr1.length>0 || arr2.length>0 || arr3.length>0 || arr11.length>0 || arr4.length>0){
    	return false;
    }else{
    	return true;
    }
}






function close_fun(){
	let Accno=document.forms["closeaccount"]["accno"].value;
    let arr1=[];
    if(/^$/.test(Accno)){
        arr1.push("Enter Account number");
    } else if(!/^\(?([0-9]{8})$/.test(Accno)){
        arr1.push("Enter 8 digit number only");
    }
    document.getElementById("accno_error").innerHTML=arr1.join(",");
    
    let Uname=document.forms["closeaccount"]["uname"].value;
    let arr2=[];
    if(/^$/.test(Uname)){
        arr2.push("Enter the user name");
    }else if(!/^[A-Z]{1}[A-Za-z0-9$_]{2,16}$/.test(Uname)){
        arr2.push("User name should follow rules");
    }
    document.getElementById("uname_error").innerHTML=arr2.join(",");
    
    let Pwd=document.forms["closeaccount"]["psw"].value;
    let arr3=[];
    if(/^$/.test(Pwd)){
        arr3.push("Enter the password");
    } else if(!/(?=.*[0-9])(?=.*[!@#$%^&*])(?=.*[A-Z])(?=.*[a-z]).{7,16}$/.test(Pwd)){
        arr3.push("Password should follow rules");
    }
    document.getElementById("psw_error").innerHTML=arr3.join(",");
    
    if(arr1.length>0 || arr2.length>0 || arr3.length>0){
    	return false;
    }else{
    	return true;
    }
}




