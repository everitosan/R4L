class PostComponent {
    beforeRegister() {
      this.is = "post-component";
      this.properties = {
        comment: {
          type: String,
          observer: '_commentAdded'
        },
        hideSend: {
          type: Boolean,
          value : true,
          notify: true
        }
      };
    }

  _commentAdded (comment) {
    if (this.comment.length != 0) {
      this.hideSend = false;
    }
    else {
      this.hideSend = true;
    }
  }
}

Polymer(PostComponent);
