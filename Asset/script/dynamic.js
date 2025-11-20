function updateData(data) {
    let mapURL = `https://maps.google.com/maps?q=${data.lat},${data.lng}&z=15&output=embed`;
    document.getElementById("map").src = mapURL;
}


function greetingByTime(){
    let jam = new Date();
    let jamSekarang = jam.getHours();
    const tampilWaktu = document.getElementById("waktu")

    if (jamSekarang >= 4 && jamSekarang <= 10){
        tampilWaktu.innerText = "Selamat Pagi";
        return "pagi"
    }else if (jamSekarang >= 11 && jamSekarang <= 14){
        tampilWaktu.innerText = "Selamat Siang";
        return "siang"
    }else if (jamSekarang >= 15 && jamSekarang <= 18){
        tampilWaktu.innerText = "Selamat Sore";
        return "sore"
    }else {
        tampilWaktu.innerText = "Selamat Malam";
        return "malam"
    }
}

function changeClassStyle(className, style){
    for (let i = 0; i < className.length; i++) {
        className[i].style = style
    }
}

function dynamicInterface(nowTime){
    const background = document.getElementById("tampilan")
    const bgAplikasi = document.getElementsByClassName("tampilan")


    if (nowTime == "pagi" || nowTime == "siang" || nowTime == "sore" ) {
        changeClassStyle(bgAplikasi, "background-color: var(--warna-malam)")
        background.style.backgroundColor = "var(--background-siang)"
        background.style.color = "white"
        background.style.fill = "white"            
    } else {
        changeClassStyle(bgAplikasi, "background-color: var(--warna-malam)")
        background.style.backgroundColor = "var(--background-malam)"
        background.style.color = "white"
        background.style.fill = "white"
    }
}

let dummyData = {
        lat: -6.2000,
        lng: 106.8166,
};

let waktuSekarang = greetingByTime()
dynamicInterface(waktuSekarang)
updateData(dummyData)