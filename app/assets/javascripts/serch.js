$(document).on('turbolinks:load', function(){
  $(function() {
    var restaurants_list = $(".restaurants-search-result");

    function appendRestaurant(restaurant) {
      var html = `<div class="card">
                    <div class="card-body>
                      <h4 class="card-title">${restaurant.name}</h4> 
                      <p class="card-text">${restaurant.content}</p>
                      <%= link_to %>
                    </div>
                  </div>`
      user_list.append(html);
    };
    $("#serchbox").keyup(function() {
      var input = $("#serchbox").val();
      $.ajax({
      type: 'GET',
      url: '/restaurants',
      data: { name : input },
      dataType: 'json'
      })
    .dane(function(restaurants){
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
      alert('ユーザー検索に失敗しました')
    });
    });
  });
})