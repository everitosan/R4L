class PostCard {
  beforeRegister () {
    this.is = "post-card";
    this.properties = {
      data: {
        type: Object,
        notify: true,
        readOnly: false
      }
    };
  }

  plusLike () {
    this.data.likes = this.data.likes+1;
    console.log(this.data.likes);
  }
}


Polymer(PostCard);
