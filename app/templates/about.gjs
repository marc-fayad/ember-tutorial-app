import { LinkTo } from '@ember/routing';

<template>
  <div class="jumbo">
    <div class="right tomster"></div>
    <h2>About Super Rentals</h2>
    <p>
      Super Rentals is a sample property rental website built to explore Ember.
    </p>
    <LinkTo @route="contact" class="button">Contact Us</LinkTo>
  </div>
</template>