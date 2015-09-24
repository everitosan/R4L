class LandingForm {
  beforeRegister() {
    this.is="landing-form";
    this.properties = {
      username: {
        is: String,
        value: "everardo.ipn@gmail.com"
      },
      password: {
        is: String,
        value: "brenda2013"
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
  ajaxResponse (request) {
    console.log( request.detail.response );
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
