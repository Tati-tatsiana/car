import flatpickr from 'flatpickr'
import 'flatpickr/dist/flatpickr.min.css'

import { Controller } from "stimulus"

export default class extends Controller {
  connect() {
    flatpickr(".datepicker", {
      altinput: true,
    });
  }
}
