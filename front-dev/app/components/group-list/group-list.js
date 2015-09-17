class GroupList {
  beforeRegister () {
    this.is = "group-list";
    this.properties = {
      groups: {
        type: Array,
        notify: true
      }
    };
  }
}

Polymer(GroupList);
