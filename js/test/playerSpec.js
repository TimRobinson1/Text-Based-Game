const expect = require('chai').expect;
const Player = require('../public/src/player.js')

describe('Player', function() {
  var player;

  beforeEach(function() {
    player = new Player();
  })

  describe('Initialisation', function() {
    it('starts with 100 health', function() {
      expect(player.health).equal(100);
    })

    it('starts with no weapons', function() {
      expect(player.weapons).to.deep.equal([]);
    })

    it('starts with 10 points of hunger', function() {
      expect(player.hunger).equal(10);
    })

    it('starts with 10 points of thirst', function() {
      expect(player.thirst).equal(10);
    })
  })

  describe('#surviveDay', function() {
    it('the player loses hunger points after a day', function() {
      player.surviveDay();
      expect(player.hunger).equal(9);
    })
  })
})
