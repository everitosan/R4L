class LandingCategories {
  beforeRegister() {
    this.is = "landing-categories";

  }

  showModal (id) {
    document.getElementById(id).toggle();
  }

}

Polymer(LandingCategories);
