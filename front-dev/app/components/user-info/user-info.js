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
}

Polymer(UserInfo);
