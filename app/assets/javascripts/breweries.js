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
      this.previousId = breweryJSON.previous_id;
      this.nextId = breweryJSON.next_id;
      this.sakes = breweryJSON.sakes;
    }
    
    if ($('body').is('.breweries.index')) {
      Brewery.prototype.templateSource = $('#brewery-template').html();
    } else if ($('body').is('.breweries.show')) {
      Brewery.prototype.templateSource = $('#brewery-show-template').html();
      Brewery.prototype.sakeTemplateSource = $('#brewery-sake-template').html();
      Brewery.prototype.sakeTemplate = Handlebars.compile(Brewery.prototype.sakeTemplateSource);
      Brewery.prototype.renderHmtlForSake = function(sake) {
        return Brewery.prototype.sakeTemplate(sake);
      }
    }
    
    Brewery.prototype.template = Handlebars.compile(Brewery.prototype.templateSource);
    Brewery.prototype.renderHtml = function() {
      return Brewery.prototype.template(this);
    }
    
    if ($('body').is('.breweries.index')) {
      $.get("/breweries.json").success(breweries => {
        $("#loading").remove();
        
        // iterate over and inject into DOM
        breweries.forEach(breweryData => {
          let breweryObj = new Brewery(breweryData);
          let breweryHtml = breweryObj.renderHtml();

          $("#breweries-list").append(breweryHtml);
        })
      }).error(error => console.log(error));
      
      $('#add-brewery-button').bind('click', showForm);
      $('form').submit(submitForm);
    }
    
    if ($('body').is('.breweries.show')) {
      attachEventListeners();
      
      function attachEventListeners() {
        let $nextLink = $("#next-link");
        let $previousLink = $("#previous-link");
        
        $nextLink.bind('click', getData);
        $previousLink.bind('click', getData);
      }
      
      function getData(event) {
        event.preventDefault();
        
        $('#sake-list').empty();
        
        let url = event.target.href;
        
        $.get(url + ".json").success(breweryData => {
          let breweryObj = new Brewery(breweryData);
          let breweryHtml = breweryObj.renderHtml();
          
          $("#brewery").html(breweryHtml);
          
          if (breweryObj.sakes.length > 0) {
            breweryObj.sakes.forEach(sake => {
              let sakeHtml = breweryObj.renderHmtlForSake(sake);
              $('#sake-list').append(sakeHtml);
            });
          } else {
            const noSakes = $('#brewery-no-sakes').html();
            $('#sake-list').append(noSakes);
          }
          
          attachEventListeners();
          history.pushState({brewery: breweryObj.id}, "brewery", breweryObj.id);
        }).error(error => console.log(error));
      }
    }
    
    function showForm(event) {
      event.preventDefault();
      $('form').show();
    }
    
    function resetForm() {
      $('form')[0].reset();
      $('#brewery-submit-button').prop('disabled', false);
    }
    
    function submitForm(event) {
      event.preventDefault();
      
      let formValues = $(this).serialize();
      let posting = $.post('/breweries', formValues);
      
      posting.done(function(breweryData) {
        let breweryObj = new Brewery(breweryData);
        let breweryHtml = breweryObj.renderHtml();
        
        $('#breweries-list').prepend(breweryHtml);
        resetForm();
      });
    }
  }

  // Using fetch
/*
  fetch("/breweries.json")
  .then(response => response.json())
  .then(json => console.log(json));
*/
});