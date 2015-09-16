Polymer({
  is: "menu-component",
  loaded : function (request) {
    console.log(request.detail.response);
  }
});
