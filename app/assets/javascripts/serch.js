$(document).on('turbolinks:load', function(){
  $(function() {
    var restaurants_list = $(".restaurants-serch-result");

    function appendRestaurant(restaurant) {
      var html = `<div class="card text-center">
                    <div class="card-body>
                      <h2 class="card-title"> ${restaurant.name} </h2> 
                      <a href= "${restaurant.id}", class="btn btn-danger">詳細ページに行く</a>
                    </div>
                  </div>`
      restaurants_list.append(html);
    };
    $("#serchbox").keyup(function() {
      var input = $("#serchbox").val();
      $.ajax({ 
      type: 'GET',
      url: '/restaurants/serch',
      data: { name : input },
      dataType: 'json'
      })
      .done(function(restaurants){
        restaurants_list.empty();
        if (restaurants.length !== 0 && input.length !== 0) {
          restaurants.forEach(function(restaurant) {
            appendRestaurant(restaurant);
          });
        } else if (input.length == 0){
          restaurant_list.empty();
        } else {
          appendNoRestaurant();
        }
      })
      .fail(function() {
        alert('レストラン検索に失敗しました')
      });
    });
  });
})