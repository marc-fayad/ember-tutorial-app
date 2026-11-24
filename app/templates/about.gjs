import { LinkTo } from '@ember/routing';
import Jumbo from 'super-rentals/components/jumbo';

<template>
  <div class="jumbo">
    <h2>About Super Rentals</h2>
    <p>
      Super Rentals is a sample property rental website built to explore Ember.
    </p>
    <LinkTo @route="contact" class="button">Contact Us</LinkTo>
  </div>
</template>