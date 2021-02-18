import 'dart:math';

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
  var _target;

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
  String get detail_target => '${_target.name}==> Level: ${_target.level}, Hp: ${_target.hp}, Mana: ${_target.mana}, Energy: ${_target.energy}, PAtk: ${_target.physical_attack}, MAtk: ${_target.magic_attack}, PDef: ${_target.physical_defend}, MDef: ${_target.magic_defend}, Crirate: ${_target.crirate}%, Cridamage: ${_target.cridamage}%';

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

  void takeDamage() {
    var damage = 0;
    var cri = Random();
    var damage_phy = target.physical_attack - physical_defend;
    var damage_mag = target.magic_attack - magic_defend;

    if (damage_phy < 0) damage_phy = 0;
    if (damage_mag < 0) damage_mag = 0;

    damage += damage_phy + damage_mag;
    if (cri.nextInt(100) <= target.crirate) damage += ((damage * target.cridamage)/100).floor();
    print(damage);
    hp -= damage;
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
    str += '||==> Target: $detail_target\n';
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
  var dody = Character();
  dody.initCharacter('Dody', 100, 10000, 100, 300, 1100, 1200, 400, 100, 40, 50);
  boby.initCharacter('Boby', 100, 100000, 100, 260, 555, 210, 380, 150, 40, 50);
  boby.targetLock(dody);
  boby.takeDamage();
  print(boby);
}