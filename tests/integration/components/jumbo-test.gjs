import { module, test } from 'qunit';
import { render } from '@ember/test-helpers';
import { setupRenderingTest } from 'super-rentals/tests/helpers';
import Jumbo from 'super-rentals/components/jumbo';

module('Integration | Component | jumbo', function (hooks) {
  setupRenderingTest(hooks);

  test('renders the banner content and Tomster', async function (assert) {
    await render(<template><Jumbo>Hello World</Jumbo></template>);

    assert.dom('.jumbo').hasText('Hello World');
    assert.dom('.jumbo .tomster').exists();
  });
});