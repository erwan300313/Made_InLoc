class Forecast{
    constructor(lat, lon, appId, name){
        this.lat = lat;
        this.lon = lon;
        this.appId = appId;
        this.name = name;
        this.mqForecast = new Weather();
        this.forecast();
    }
    
    async forecast(){
        await this.mqForecast.ForecastWeather(this.lat, this.lon, this.appId);
        console.log(this.mqForecast.countryForecast);    
        this.foreWeather =  this.mqForecast.countryForecast;
        this.getInfo(this.foreWeather);
    }
    
    getInfo(foreWeather){

        let weatherDetailBlock = document.getElementById('block_weatherDetail');
        weatherDetailBlock.innerHTML = '<h4> Ville: ' + this.name + '</h4><br /><p>Météo à 8 jours</p> <br/><table class="weatherDetail"><tr id="arrayPrev"></tr></table>'; 

        let arrayWeather = document.getElementById('arrayPrev');
        arrayWeather.style.marginLeft = '40px';

        let arrayId = document.getElementById('weather');
        arrayId.style.display='flex';
        
        foreWeather.daily.forEach((weather) =>{
    
            let timeStamp = new Date(weather.dt*1000);
            let options = {weekday: 'long', day: 'numeric'};
            let weekDay = timeStamp.toLocaleDateString(undefined, options);

            let dayWeather = document.createElement("td");
            dayWeather.className="arrayWeather";
            dayWeather.innerHTML = weekDay + '<br><img src="http://openweathermap.org/img/wn/'+weather.weather[0].icon+'@2x.png" alt="weather_icon"><br>'+weather.weather[0].description+'<br>Min : ' + weather.feels_like.morn +" °<br>Max : " +weather.feels_like.day+" °<br>Humidité : " +weather.humidity+' %<br>UV : '+ weather.uvi;
            arrayWeather.appendChild(dayWeather);
            
        })
    }
}

