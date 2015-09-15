Polymer({
  is: "user-info",
  loaded : function (request) {
    this.pic = "assets/profile/".concat(request.detail.response.picProfile);
    this.peso = "73";
    this.altura = "1.7";
    this.IMC = "24";
  }
});
