   let index = 0;   
    let list = document.querySelectorAll(".slide"); 
	list.forEach((img)=>{
		img.style.display ="none";
	}) 
	
    function slideShow() {
	if (index !=0) list[index-1].style.display = "none"; 
    if (index == list.length) index = 0;

    list[index].style.display = "block";  
    index++;
       setTimeout(slideShow, 2000);   
    }

slideShow();