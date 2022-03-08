let inputName = prompt("İsminiz nedir ?");
let myName = document.querySelector("#myName");
myName.innerHTML = inputName;
function showTime(){
    let date = new Date();
    let days = ["Pazar","Pazartesi","Salı","Çarşamba","Perşembe","Cuma","Cumartesi"];
    let day = days[date.getDay()];
    let clock=date.getHours();
    let minutes =date.getMinutes();
    let second=date.getSeconds();	

    if(clock < 10) {
        clock='0'+clock
      }   
    if(minutes < 10) {
        minutes='0'+minutes
      }   
    if(second < 10) {
        second='0'+second
      }   
    let currentTime = `${clock}:${minutes}:${second} ${day}`;

    document.querySelector ("#myClock").innerHTML= currentTime;
}
setInterval(showTime,1000);
