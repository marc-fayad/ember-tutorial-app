import { module, test } from 'qunit';
import { click, render } from '@ember/test-helpers';
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
  test('toggles the rental image size', async function (assert) {
    await render(
      <template>
        <RentalImage
          src="/assets/images/teaching-tomster.png"
          alt="Teaching Tomster"
        />
      </template>,
    );

    const button = 'button.image';

    assert.dom(button).doesNotHaveClass('large');
    assert.dom(`${button} small`).hasText('View Larger');

    await click(button);

    assert.dom(button).hasClass('large');
    assert.dom(`${button} small`).hasText('View Smaller');

    await click(button);

    assert.dom(button).doesNotHaveClass('large');
    assert.dom(`${button} small`).hasText('View Larger');
  });
});