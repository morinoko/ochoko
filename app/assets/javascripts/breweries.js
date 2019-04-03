// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function(){
  if ($('body').is('.breweries')) {
    function Brewery(breweryJSON) {
      this.id = breweryJSON.id;
      this.localizedName = breweryJSON.localized_name;
      this.hiraganaName = breweryJSON.hiragana_name;
      this.romanizedName = breweryJSON.romanized_name;
      this.japaneseName = breweryJSON.japanese_name;
      this.localizedLocation = breweryJSON.localized_location;
    }
    
    if ($('body').is('.breweries.index')) {
      Brewery.prototype.templateSource = $('#brewery-template').html();
    } else if ($('body').is('.breweries.show')) {
      Brewery.prototype.templateSource = $('#brewery-show-template').html();
    }
    
    Brewery.prototype.template = Handlebars.compile(Brewery.prototype.templateSource);
    Brewery.prototype.renderHtml = function() {
      return Brewery.prototype.template(this);
    }
    
    if ($('body').is('.breweries.index')) {
      $.get("/breweries.json").success(breweries => {
        // iterate over and inject into DOM
        breweries.forEach(breweryData => {
          let breweryObj = new Brewery(breweryData);
          let breweryHtml = breweryObj.renderHtml();
          console.log(breweryHtml);
          $("#breweries-list").append(breweryHtml);
        })
      }).error(error => console.log(error));
    }
    
    if ($('body').is('.breweries.show')) {
      debugger
      $.get("/breweries/42.json").success(breweryData => {
        let breweryObj = new Brewery(breweryData);
        let breweryHtml = breweryObj.renderHtml();
        console.log(breweryHtml);
      }).error(error => console.log(error));
    }
  }

  // Using fetch
/*
  fetch("/breweries.json")
  .then(response => response.json())
  .then(json => console.log(json));
*/
});