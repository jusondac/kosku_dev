import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="province-regencies"
export default class extends Controller {
  static targets = ['provinceSelect','regencySelect']
  connect() {
    console.log('connected')
  }

  provinceSelectChanged() {
    console.log("changed")
    const provinceId = this.provinceSelectTarget.value
    this.regencySelectTarget.textContent = "Kota Kabupaten"
    if (provinceId !== "") {
      fetch(`/kosans/regencies?province_id=${provinceId}`)
      .then((response) => response.json())
      .then((data) => {
        data.forEach((regency) => {
          const option = document.createElement('option');
          option.value = regency.id;
          option.text = regency.name;
          this.regencySelectTarget.appendChild(option)
        })
      })
    }
  }
}
