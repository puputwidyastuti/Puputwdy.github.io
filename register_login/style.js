let menubar = document.querySelector('#menu-bar')
let nav = document.querySelector('.navbar')


menubar.onclick = () =>{
    menubar.classList.toggle('fa-times')
    nav.classList.toggle('active')    
}
function myFunction() {
  var element = document.body;
  element.classList.toggle("dark-mode");
}
function runPopup(){
  if(window.confirm("Apakah anda ingin melanjutkan halaman web ini?"))
  {
  window.alert("Anda Baru Saja Menekan Ok!");
  }
  else
  {
  window.alert("Anda Baru Saja Menekan Cancel!");
  }
  };

function mydate(){
    //alert("");
    document.getElementById("dt").hidden=false;
    document.getElementById("ndt").hidden=true;
}
function mydate1(){
    d=new Date(document.getElementById("dt").value);
    dt=d.getDate();
    mn=d.getMonth();
    mn++;
    yy=d.getFullYear();
    document.getElementById("ndt").value=dt+"/"+mn+"/"+yy
    document.getElementById("ndt").hidden=false;
    document.getElementById("dt").hidden=true;
}
const sr = ScrollReveal ({
    distance : '45px',
    duration : 2700,
    reset : true,
  })
  sr.reveal('.myimageabout',{ delay:350, origin:'left' })
  sr.reveal('.about-text-content',{ delay:350, origin:'right' })
  sr.reveal('.home-image',{ delay:350, origin:'left' })
  sr.reveal('.home-text-content',{ delay:350, origin:'right' })
  sr.reveal('.quality-content',{ delay:350, origin:'left' })
  sr.reveal('.qulity-image',{ delay:350, origin:'right' })
  sr.reveal('.gallery-image',{ delay:350, origin:'top' })
  sr.reveal('.menu-food-content',{ delay:350, origin:'top' })
  sr.reveal('.menu-food-text',{ delay:350, origin:'bottom' })
  sr.reveal('.food-main-content',{ delay:350, origin:'bottom' })
  sr.reveal('.before',{ delay:350, origin:'bottom' })
  sr.reveal('.footer-logo',{ delay:350, origin:'bottom' })