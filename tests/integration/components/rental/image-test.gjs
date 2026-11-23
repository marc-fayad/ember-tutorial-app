import { module, test } from 'qunit';
import { render } from '@ember/test-helpers';
import { setupRenderingTest } from 'super-rentals/tests/helpers';
import RentalImage from 'super-rentals/components/rental/image';

module('Integration | Component | rental/image', function (hooks) {
  setupRenderingTest(hooks);

  test('forwards image attributes', async function (assert) {
    await render(
      <template>
        <RentalImage src="/assets/images/teaching-tomster.png" alt="Teaching Tomster" />
      </template>,
    );

    assert.dom('.image img').hasAttribute('src', '/assets/images/teaching-tomster.png');
    assert.dom('.image img').hasAttribute('alt', 'Teaching Tomster');
  });
});