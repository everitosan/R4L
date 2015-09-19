class EventList {
  beforeRegister() {
      this.is="event-list";
  }
  loaded (request) {
    request.detail.response.events.forEach(item => {
      item.hour = item.date.substring(11, 16);
      item.date = item.date.substr(0,10).split("-");
      item.date[1] = window.filter.montify(item.date[1]);
      item.url = "events/" + item.id;
    });
  }



}
Polymer(EventList);
