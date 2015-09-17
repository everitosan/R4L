class NewsFeed {
  beforeRegister () {
    this.is = "news-feed";
    this.properties =  {
      data: {
        type: Array,
        notify: true
      }
    };
  }

  loaded (request) {
    request.detail.response.forEach(function(item){
      item.category = "assets/icons/" + item.category + ".png";
    });
    //console.log(request.detail.response);
  }
}

Polymer(NewsFeed);
