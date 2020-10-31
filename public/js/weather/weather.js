class Weather{
    constructor(city, lang, unit, appid){
        this.city = city;
        this.lang = lang;
        this.unit = unit;
        this.appId = appid
    }
    
    currentWeather(){
        return fetch("https://api.openweathermap.org/data/2.5/group?id="+this.city+" &units="+ this.unit +"&appid=" +this.appId+"&lang="+this.lang)
        .then(response => response.json())
        .then(data => this.country = data); 
    }
    
    ForecastWeather(lat, long, appId){
        return fetch("https://api.openweathermap.org/data/2.5/onecall?lat="+ lat + "&lon="+long+"&exclude=current,minutely,hourly,alerts&units=metric&appid="+ appId +"&lang=fr")
        .then(response => response.json())
        .then(data => this.countryForecast = data); 
    }
}



