import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="votes"
export default class extends Controller {
  submit() {
    this.element.requestSubmit()
  }
}
