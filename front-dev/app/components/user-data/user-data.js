class UserData {
  beforeRegister (){
    this.is = "user-data";
    this.properties = {
      data: {
        type: Object,
        notify: true
      }
    };
  }
}

Polymer(UserData);
