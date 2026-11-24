import { module, test } from 'qunit';
import { find, render, rerender } from '@ember/test-helpers';
import { tracked } from '@glimmer/tracking';
import { setupRenderingTest } from 'super-rentals/tests/helpers';
import Map from 'super-rentals/components/map';

module('Integration | Component | map', function (hooks) {
  setupRenderingTest(hooks);

  test('renders a map and updates its URL when zoom changes', async function (assert) {
    class MapOptions {
      @tracked zoom = 9;
    }

    const options = new MapOptions();

    await render(
      <template>
        <Map
          @lat="37.7749"
          @lng="-122.4194"
          @zoom={{options.zoom}}
          @width="150"
          @height="150"
          alt="A map of San Francisco"
        />
      </template>,
    );

    const image = '.map img';
    assert.dom(image).hasAttribute('alt', 'A map of San Francisco');
    assert.dom(image).hasAttribute('width', '150');
    assert.dom(image).hasAttribute('height', '150');

    const initialUrl = new URL(find(image).src);
    assert.strictEqual(initialUrl.origin, 'https://api.tomtom.com');
    assert.strictEqual(initialUrl.searchParams.get('center'), '-122.4194,37.7749');
    assert.strictEqual(initialUrl.searchParams.get('zoom'), '9');

    options.zoom = 12;
    await rerender();

    const updatedUrl = new URL(find(image).src);
    assert.strictEqual(updatedUrl.searchParams.get('zoom'), '12');
  });
});