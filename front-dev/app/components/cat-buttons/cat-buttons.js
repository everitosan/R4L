class CatButtons {
  beforeRegister() {
    this.is = "cat-buttons";
    this.properties = {
      info : {
        type : Object,
        notify: true
      }
    };
  }

  loaded (req) {
    req.detail.response.forEach(function(cat){
      cat.name = "assets/icons/" + cat.name + ".png";
    });
  }
}

Polymer(CatButtons);
