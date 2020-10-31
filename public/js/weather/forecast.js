class Forecast{
    constructor(lat, lon, appId){
        this.lat = lat;
        this.lon = lon;
        this.appId = appId;
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
        
        let arrayId = document.getElementById('weather');
        arrayId.style.display='flex';
        let arrayBlock = document.getElementById("arrayPrev");
        arrayBlock.style.marginLeft = '40px';

        let arrayWeather = document.getElementById('arrayPrev');
        arrayWeather.innerHTML= '';
        
        foreWeather.daily.forEach((weather) =>{
    
            let timeStamp = new Date(weather.dt*1000);
            let options = {weekday: 'long'};
            let weekDay = timeStamp.toLocaleDateString(undefined, options);

            let dayWeather = document.createElement("td");
            dayWeather.className="arrayWeather"
            dayWeather.innerHTML = weekDay + '<br><img src="http://openweathermap.org/img/wn/'+weather.weather[0].icon+'@2x.png" alt="weather_icon"><br>'+weather.weather[0].description+'<br>Min : ' + weather.feels_like.morn +" °<br>Max : " +weather.feels_like.day+" °<br>Humidité : " +weather.humidity+' %<br>UV : '+ weather.uvi;
            arrayWeather.appendChild(dayWeather);
            
        })
    }
}

