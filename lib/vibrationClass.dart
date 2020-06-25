class VibrateMenu {
  String alphabet;
  String pattern;

  VibrateMenu(this.alphabet, this.pattern);
}

List<VibrateMenu> table = vibrateData.map((item) => VibrateMenu(
      item['alphabet'],
      item['pattern'],
    )).toList();

var dot=400;
var dash=1200;
var gap=400;
var vibrateData = [
  {"alphabet": "a", "pattern": "pattern:[gap,dot,gap,dash]"},
  {"alphabet": "b", "pattern": "pattern:[gap,dash,gap,dot,gap,dot,gap,dot]"},
  {"alphabet": "c", "pattern": "pattern:[gap,dash,gap,dot,gap,dash,gap,dot]"},
  {"alphabet": "d", "pattern": "pattern:[gap,dash,gap,dot,gap,dot]"},
  {"alphabet": "e", "pattern": "pattern:[gap,dot]"},
  {"alphabet": "f", "pattern": "pattern:[gap,dot,gap,dot,gap,dash,gap,dot]"},
  {"alphabet": "g", "pattern": "pattern:[gap,dash,gap,dash,gap,dot]"},
  {"alphabet": "h", "pattern": "pattern:[gap,dot,gap,dot,gap,dot,gap,dot]"},
  {"alphabet": "i", "pattern": "pattern:[gap,dot,gap,dot]"},
  {"alphabet": "j", "pattern": "pattern:[gap,dot,gap,dash,gap,dash,gap,dash]"},
  {"alphabet": "k", "pattern": "pattern:[gap,dash,gap,dot,gap,dash]"},
  {"alphabet": "l", "pattern": "pattern:[gap,dot,gap,dash,gap,dot,gap,dot]"},
  {"alphabet": "m", "pattern": "pattern:[gap,dash,gap,dash]"},
  {"alphabet": "n", "pattern": "pattern:[gap,dash,gap,dot]"},
  {"alphabet": "o", "pattern": "pattern:[gap,dash,gap,dash,gap,dash]"},
  {"alphabet": "p", "pattern": "pattern:[gap,dot,gap,dash,gap,dash,gap,dot]"},
  {"alphabet": "q", "pattern": "pattern:[gap,dash,gap,dash,gap,dot,gap,dash]"},
  {"alphabet": "r", "pattern": "pattern:[gap,dot,gap,dash,gap,dot]"},
  {"alphabet": "s", "pattern": "pattern:[gap,dot,gap,dot,gap,dot]"},
  {"alphabet": "t", "pattern": "pattern:[gap,dash]"},
  {"alphabet": "u", "pattern": "pattern:[gap,dot,gap,dot,gap,dash]"},
  {"alphabet": "v", "pattern": "pattern:[gap,dot,gap,dot,gap,dot,gap,dash]"},
  {"alphabet": "w", "pattern": "pattern:[gap,dot,gap,dash,gap,dash]"},
  {"alphabet": "x", "pattern": "pattern:[gap,dash,gap,dot,gap,dot,gap,dash]"},
  {"alphabet": "y", "pattern": "pattern:[gap,dash,gap,dot,gap,dash,gap,dash]"},
  {"alphabet": "z", "pattern": "pattern:[gap,dash,gap,dash,gap,dot,gap,dot]"},
  {"alphabet": "1", "pattern": "pattern:[gap,dot,gap,dash,gap,dash,gap,gap,dash,dash]"},
  {"alphabet": "2", "pattern": "pattern:[gap,dot,gap,dot,gap,dash,gap,dash,gap,dash]"},
  {"alphabet": "3", "pattern": "pattern:[gap,dot,gap,dot,gap,dot,gap,dash,gap,dash]"},
  {"alphabet": "4", "pattern": "pattern:[gap,dot,gap,dot,gap,dot,gap,dot,gap,dash]"},
  {"alphabet": "5", "pattern": "pattern:[gap,dot,gap,dot,gap,dot,gap,dot,gap,dot]"},
  {"alphabet": "6", "pattern": "pattern:[gap,dash,gap,dot,gap,dot,gap,dot,gap,dot]"},
  {"alphabet": "7", "pattern": "pattern:[gap,dash,gap,dash,gap,dot,gap,dot,gap,dot]"},
  {"alphabet": "8", "pattern": "pattern:[gap,dash,gap,dash,gap,dash,gap,dot,gap,dot]"},
  {"alphabet": "9", "pattern": "pattern:[gap,dash,gap,dash,gap,dash,gap,dash,gap,dot]"},
  {"alphabet": "0", "pattern": "pattern:[gap,dash,gap,dash,gap,dash,gap,dash,gap,dash]"},
  {"alphabet": ".", "pattern": "pattern:[gap,dot,gap,dash,gap,dot,gap,dash,gap,dot,gap,dash]"},
  {"alphabet": ",", "pattern": "pattern:[gap,dash,gap,dash,gap,dot,gap,dot,gap,dash,gap,dash]"},
  {"alphabet": "?", "pattern": "pattern:[gap,dot,gap,dot,gap,dash,gap,dash,gap,dot,gap,dot]"},
  {"alphabet": "/", "pattern": "pattern:[gap,dash,gap,dot,gap,dot,gap,dash,gap,dot]"},
  {"alphabet": "@", "pattern": "pattern:[gap,dot,gap,dash,gap,dash,gap,dot,gap,dash,gap,dot]"},
];
