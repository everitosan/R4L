Polymer({
  is: "user-info",
  properties: {
    info: {
      type: Object,
      notify: true
    }
  },
  ready: function() {
    this.peso = "73";
    this.altura = "1.7";
    this.IMC = "24";
  }
});
