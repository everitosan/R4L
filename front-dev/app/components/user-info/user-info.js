class UserInfo {
  beforeRegister() {
    this.is = "user-info";
    this.properties = {
      info: {
        type: Object,
        notify: true
      }
    };
  }

  ready () {
    this.peso = "73";
    this.altura = "1.7";
    this.IMC = "24";
  }
}

Polymer(UserInfo);
