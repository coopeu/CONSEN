//
//import { Controller } from "@hotwired/stimulus"
//
//export default class extends Controller {
//  connect() {
//    this.element.textContent = "Hello World!"
//  }
//}
//

import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "name", "output" ]

  greet() {
    this.outputTarget.textContent =
      `Hello, ${this.nameTarget.value}!`
  }
}