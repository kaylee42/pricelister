
$(function(){
  insertWave()

  FormValidations.prototype.searchForm()
});

function FormValidations(){

}

function buildWave(w, h) {
  const path = document.querySelector('#wave');
  const animation = document.querySelector('#moveTheWave');
  const m = 0.512286623256592433;


  const a = h / 4;
  const y = h / 2;

  const pathData = [
    'M', w * 0, y + a / 2,
    'c',
      a * m, 0,
      -(1 - a) * m, -a,
      a, -a,
    's',
      -(1 - a) * m, a,
      a, a,
    's',
      -(1 - a) * m, -a,
      a, -a,
    's',
      -(1 - a) * m, a,
      a, a,
    's',
      -(1 - a) * m, -a,
      a, -a,

    's',
      -(1 - a) * m, a,
      a, a,
    's',
      -(1 - a) * m, -a,
      a, -a,
    's',
      -(1 - a) * m, a,
      a, a,
    's',
      -(1 - a) * m, -a,
      a, -a,
    's',
      -(1 - a) * m, a,
      a, a,
    's',
      -(1 - a) * m, -a,
      a, -a,
    's',
      -(1 - a) * m, a,
      a, a,
    's',
      -(1 - a) * m, -a,
      a, -a,
    's',
      -(1 - a) * m, a,
      a, a,
    's',
      -(1 - a) * m, -a,
      a, -a
  ].join(' ');

  path.setAttribute('d', pathData);
  }



  function insertWave(){
    $('#searchForm').on('submit', function(){
      $('#response').html('<div class="wave"><svg xmlns="http://www.w3.org/2000/svg"width="80px" height="60px"viewBox="5 0 80 60"><path id="wave"fill="none"stroke="#262626"stroke-width="4"stroke-linecap="round"></path></svg></div>')
        buildWave(90, 60);
  })
}

jQuery.validator.addMethod("notEqual", function(value, element, param) {
  return this.optional(element) || value != param;
}, "Please specify a different (non-default) value");


FormValidations.prototype.searchForm = function() {
  $('#searchForm').validate({
    rules: {
      "search_term": "required",
      "states": { notEqual: "select state" },
      "market": { notEqual: "state first!" }
    },
    messages: {
      "search_term": "You must search for something!",
      "states": "Please pick a state!",
      "market": "Please pick a market!"
    }
  });
};
