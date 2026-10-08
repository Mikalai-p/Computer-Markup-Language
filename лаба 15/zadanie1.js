let firstImg = document.getElementById("first");

firstImg.addEventListener("mouseover", firstFunction);

function firstFunction(){
    document.getElementById("first").style.display = "none";
    document.getElementById("fig").style.display = "block";
}

firstImg.addEventListener("mouseout", secondFunction);

function secondFunction(){
    document.getElementById("first").style.display = "inline-block";
    document.getElementById("fig").style.display = "none";
}

let secondImg = document.getElementById("second");

secondImg.addEventListener("click", thirdFunction);

function thirdFunction(){
    document.getElementById("second").style.border = "10px solid red";
}

secondImg.addEventListener("dblclick", fourthFunction);

function fourthFunction(){
    document.getElementById("second").style.border = "none";
}

let thirdImg = document.getElementById("third1");
let fourthImg = document.getElementById("third");

fourthImg.addEventListener("mouseover", fifthFunction);
fourthImg.addEventListener("mouseout", sixthFunction);

    
function fifthFunction(){
    document.getElementById("third1").src = "../11 лаба/щука.jpg";
    document.getElementById("third").src = "../лаба 10/a9e2595d38dfcee70382d34f0116d91f.jpg";
}

function sixthFunction(){
    document.getElementById("third1").src = "../лаба 10/a9e2595d38dfcee70382d34f0116d91f.jpg";
    document.getElementById("third").src = "../11 лаба/щука.jpg";
}
