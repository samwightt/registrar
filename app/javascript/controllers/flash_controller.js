import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["notification"];

  delete() {
    const notification = this.notificationTarget;
    notification.remove();
  }
}
