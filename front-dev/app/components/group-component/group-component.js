class GroupComponent {
  beforeRegister () {
    this.is = "group-component";
    this.properties = {
      group: {
        type: Object,
        notify: true
      }
    }
  }
}

Polymer(GroupComponent);
