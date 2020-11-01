class Map{
    constructor(id, lat, lon, zoom){
        this.id = id;
        this.lat = lat;
        this.lon = lon;
        this.zoom = zoom;
        this.mq = new Weather('3569907,3569926,3569928,3570392,3570396,3570412,3570675,3571097,3569915', 'fr', 'metric', '6b44608f0b605faa50e856f83f912b2c')
        this.myMap = null;
        this.appId = "6b44608f0b605faa50e856f83f912b2c";
        this.initMap();
        this.mqMarker();
    }
    
    initMap(){
       this.myMap = L.map(this.id,{scrollWheelZoom: false, dragging: false}).setView([this.lat, this.lon], this.zoom);
        
        L.tileLayer('https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}',{
            id: 'erwanb/ckfzysim40tf51apc3zxcyuwr',
            tileSize: 512,
            zoomOffset: -1,
            accessToken: 'pk.eyJ1IjoiZXJ3YW5iIiwiYSI6ImNrYWt6dmc4YjBwZHUyc3BpZmU2cnJ0aDEifQ._CCV-ZTOATCci6TWbpEIMQ'
        }).addTo(this.myMap);
    }
    
    async mqMarker(){
        await this.mq.currentWeather();
        this.weathers = this.mq.country.list;
        
        this.weathers.forEach((weather) =>{
            console.log(weather); // A supprimer quand les test sont terminer
            let myIcon = L.icon({
                iconUrl: 'http://openweathermap.org/img/wn/'+weather.weather[0].icon+'@2x.png',
                iconAnchor: [55, 83],
                popupAnchor: [100, 0],
                tooltipAnchor: [40, -25]
            });
            
            let marker = L.marker([weather.coord.lat, weather.coord.lon], {icon: myIcon}).addTo(this.myMap)
            .bindTooltip('<p>'+weather.main.temp + ' °C</p>', {permanent: true, direction: top}).openTooltip()
            .bindPopup('<p>' + weather.name + '</p><p>' + weather.weather[0].description + '<p>Mini: '+weather.main.temp_min + ' °C</p><p>Max: '+weather.main.temp_max + ' °C</p><p>Humidité: '+weather.main.humidity + ' %</p>',{className: 'popupTest'})
            .on('mouseover', function (e) {this.openPopup();})
            .on('mouseout', function (e) {this.closePopup();});
            
            marker.addEventListener("click", () => {
                this.forecast = new Forecast(weather.coord.lat,weather.coord.lon, this.appId, weather.name);
            })
        })     
    }
    
    event(weather){ // Voir avec JF si utilité de garder le champs meteo en direct ?
        let blocDonnee = document.getElementById("weatherDetail");
        blocDonnee.style.display = "block";
        
            blocDonnee.innerHTML = "";
            let title = document.createElement("h2");
            title.textContent = "Méteo en direct :";
            let currentWeather = document.createElement("p");
            currentWeather.innerHTML= "Description : " + weather.weather[0].description + "<br>Nom de la commune : " + weather.name + "<br>Température minimal prévus : " + weather.main.temp_min + " °C <br>Température maximal prévus : " + weather.main.temp_max + " °C<br>Taux d'humidité : " + weather.main.humidity + " %";
            blocDonnee.appendChild(title);
            blocDonnee.appendChild(currentWeather);
        
                
    }
}