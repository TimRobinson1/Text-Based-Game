const chai = require('chai')
const Player = require('../public/src/player.js')
const expect = chai.expect;

describe('Player', function() {
  var player;

  beforeEach(function() {
    player = new Player();
  })

  describe('Initialisation', function() {
    it('has starts with 100 health', function() {
      expect(player.health).equal(100);
    })
  })
})
