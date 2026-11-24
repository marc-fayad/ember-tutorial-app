import Component from '@glimmer/component';
import ENV from 'super-rentals/config/environment';

const TOMTOM_API = 'https://api.tomtom.com/map/1/staticimage';

export default class Map extends Component {
  get src() {
    const { lng, lat, width, height, zoom } = this.args;
    const key = encodeURIComponent(ENV.TOMTOM_ACCESS_TOKEN);

    return `${TOMTOM_API}?key=${key}&zoom=${zoom}&center=${lng},${lat}&width=${width}&height=${height}`;
  }

  <template>
    <div class="map">
      <img
        alt="Map image at coordinates {{@lat}},{{@lng}}"
        ...attributes
        src={{this.src}}
        width={{@width}}
        height={{@height}}
      />
    </div>
  </template>
}