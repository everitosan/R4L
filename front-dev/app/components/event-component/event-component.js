class EventComponent {
  beforeRegister() {
    this.is = "event-component";
    this.properties = {
      event: {
        type: Object,
        notify: true
      }
    };
  }
}

Polymer(EventComponent)
