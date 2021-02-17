
class Character {
  String _name = 'new character';
  int _level = 0;
  int _hp = 100;
  int _mana = 0;
  int _energy = 0;
  int _physical_attack = 0;
  int _magic_attack = 0;
  int _physical_defend = 0;
  int _magic_defend = 0;
  int _crirate = 0;
  int _cridamage = 0;
  Character _target;

  Character();

  String get name => _name;
  set name(String name) {
    _name = name;
  }

  int get level => _level;
  void levelUp(int level) {
    _level += level;
  }

  int get hp => _hp;
  set hp(int hp) {
    _hp = hp;
  }
  void hpUp(int hp) {
    _hp += hp;
  }

  int get mana => _mana;
  void manaUp(int mana) {
    _mana += mana;
  }

  int get energy => _energy;
  void energyUp(int energy) {
    _energy += energy;
  }

  int get physical_attack => _physical_attack;
  void physicalAtkUp(int atkup) {
    _physical_attack += atkup;
  }

  int get magic_attack => _magic_attack;
  void magicAtkUp(int atkup) {
    _magic_attack += atkup;
  }

  int get physical_defend => _physical_defend;
  void physicalDefUp(int defup) {
    _physical_defend += defup;
  }

  int get magic_defend => _magic_defend;
  void magicDefUp(int defup) {
    _magic_defend += defup;
  }

  int get crirate => _crirate;
  void criRateUp(int rateup) {
    _crirate += rateup;
  } 

  int get cridamage => _cridamage;
  void criDamageUp(int damup) {
    _cridamage += damup;
  }

  Character get target => _target;
  void targetLock(Character target) {
    _target = target;
  }

  void initCharacter(String name, int level, int hp, int mana, int energy, int atkphy, int atkmag, int phydef, int magdef, int crirte, int cridam) {
    this.name = name;
    levelUp(level);
    this.hp = hp;
    manaUp(mana);
    energyUp(energy);
    physicalAtkUp(atkphy);
    magicAtkUp(atkmag);
    physicalDefUp(phydef);
    magicDefUp(magdef);
    criRateUp(crirte);
    criDamageUp(cridam);
  }

  void takeDamage(Character enemy) {
    
  }

  String normalAttack() {
    if (target.hp >= 0) {
      
    }

    if (target.hp <= 0) _target = null;
  }

  @override
  String toString() {
    var str = '';
    str += '====== $name ======>\n';
    str += '||==> Level: $level\n';
    str += '||==> Hp: $hp\n';
    str += '||==> Mana: $mana\n';
    str += '||==> Energy: $energy\n';
    str += '||==> Physical Attack: $physical_attack\n';
    str += '||==> Magic Attack: $magic_attack\n';
    str += '||==> Physical Defend: $physical_defend\n';
    str += '||==> Magic Defend: $magic_defend\n';
    str += '||==> Crirate: $crirate\n';
    str += '||==> Cridamage: $cridamage\n';
    return str;
  }
} 

//======================================================warrior=================================================
class Warrior extends Character {
  
  String chop() {}
}

//======================================================Mage=================================================
class Mage extends Character {}

//======================================================Priest=================================================
class Priest extends Character {}

//======================================================Monster Egg=================================================
class MonsterEgg extends Character {}

//======================================================Monster Bird=================================================
class MonsterBird extends Character {}

//======================================================Monster Rock=================================================
class MonsterRock extends Character {}

void main() {
  var boby = Character();
  boby.initCharacter('Boby', 10, 1000, 10, 10, 55, 10, 35, 20, 30, 50);
  print(boby);
  print(Warrior());
}