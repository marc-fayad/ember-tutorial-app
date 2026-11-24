import { module, test } from 'qunit';
import { render } from '@ember/test-helpers';
import { setupRenderingTest } from 'super-rentals/tests/helpers';
import Rental from 'super-rentals/components/rental';

module('Integration | Component | rental', function (hooks) {
  setupRenderingTest(hooks);

  test('renders the rental details and image', async function (assert) {
    const rental = {
      title: 'Grand Old Mansion',
      owner: 'Veruca Salt',
      city: 'San Francisco',
      location: {
        lat: 37.7749,
        lng: -122.4194,
      },
      type: 'Standalone',
      bedrooms: 15,
      image: '/assets/images/teaching-tomster.png',
    };

    await render(<template><Rental @rental={{rental}} /></template>);

    assert.dom('article').hasClass('rental');
    assert.dom('.rental h3').hasText('Grand Old Mansion');
    assert.dom('.rental .owner').includesText('Veruca Salt');
    assert.dom('.rental .type').includesText('Standalone');
    assert.dom('.rental .location').includesText('San Francisco');
    assert.dom('.rental .bedrooms').includesText('15');
    assert.dom('.rental .image img').exists();
    assert.dom('.rental .map img').exists();
  });
});