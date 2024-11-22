// import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="removals"
// export default class extends Controller {
//   connect() {
//   }
// }

import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  remove() {
    this.element.remove()
  }
}
