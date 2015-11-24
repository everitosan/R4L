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
  ready () {

  }
  loaded (request) {
    request.detail.response.forEach(function(item){
      item.category = "assets/icons/" + item.category + ".png";
    });

  

  }
}

Polymer(NewsFeed);
