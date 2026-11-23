import { LinkTo } from '@ember/routing';

<template>
  <div class="jumbo">
    <div class="right tomster"></div>
    <h2>Contact Us</h2>
    <p>Get in touch for help choosing a destination or planning your stay.</p>
    <address>
      Super Rentals HQ
      <p>
        1212 Test Address Avenue<br />
        Testington, OR 97233
      </p>
      <a href="tel:5035551212">+1 (503) 555-1212</a><br />
      <a href="mailto:superrentalsrep@emberjs.com">superrentalsrep@emberjs.com</a>
    </address>
    <LinkTo @route="about" class="button">About</LinkTo>
  </div>
</template>