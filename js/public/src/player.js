function Player() {
  this.health = 100;
  this.hunger = 10;
  this.thirst = 10;
  this.weapons = [];
}

Player.prototype.surviveDay = function() {
  this.hunger--;
}

module.exports = Player
