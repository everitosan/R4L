class LandingProfessionals {
  beforeRegister() {
    this.is="landing-professionals";
  }

  professinalsGotten(request) {
    console.log( request.detail.response );
  }
}

Polymer(LandingProfessionals)
