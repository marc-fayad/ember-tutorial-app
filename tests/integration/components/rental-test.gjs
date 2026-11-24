import { module, test } from 'qunit';
import { render } from '@ember/test-helpers';
import { setupRenderingTest } from 'super-rentals/tests/helpers';
import Rental from 'super-rentals/components/rental';

module('Integration | Component | rental', function (hooks) {
  setupRenderingTest(hooks);

  test('renders the rental details and image', async function (assert) {
    await render(<template><Rental /></template>);

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