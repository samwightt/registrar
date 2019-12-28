import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["menu"];

  toggle() {
    const element = this.menuTarget;
    if (element.classList.contains("is-active"))
      element.classList.remove("is-active");
    else element.classList.add("is-active");
  }
}
