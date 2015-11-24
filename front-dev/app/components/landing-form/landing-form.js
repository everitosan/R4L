class LandingForm {
  beforeRegister() {
    this.is="landing-form";
    this.properties = {
      username: {
        is: String,
        value: ""
      },
      password: {
        is: String,
        value: ""
      },
      hideFooter: {
        is: Boolean,
        value: false
      },
      ajaxBody: {
        type: String,
        computed: 'processBody(username, password)'
      }
    };
  }

  showLogIn () {
    this.$.dialog.toggle();
  }

  submitForm () {
    //let form = document.getElementById('signIn');
    //form.submit();
    this.$.logInAjax.generateRequest();
  }

  logInResponse (request) {

    console.log( request.detail.response.valid );
    if (request.detail.response.valid == 'ok') {
      location.reload();
    }
    else {
      this.username = '';
      this.password = '';
    }
  }

  processBody (username, password) {
    var myJson = {
      utf8: "✓",
      authenticity_token: document.head.querySelector('meta[name="csrf-token"]').getAttribute('content'),
      identity : { email: username, password:password},
      commit: "Log in"};


    return JSON.stringify(myJson);
  }
}

Polymer(LandingForm);
