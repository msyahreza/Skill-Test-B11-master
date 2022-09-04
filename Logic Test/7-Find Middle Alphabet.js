/** @format */
//Find Middle Alphabet
function middleAlphabet(a, b) {
	//Deklarasi variabel
	let alphabet1 = Alphabet.indexOf(a);
	let alphabet2 = Alphabet.indexOf(b);
	let center = (alphabet1 + alphabet2) / 2;
	let letterLength;

	//Jika center dibagi 2 sama dengan 0.5 maka akan letterLength = 2
	if (center % 2 == 0.5) {
		letterLength = 2;
	} else {
		//Jika center dibagi 2 tidak sama dengan 0.5 maka akan letterLength = 1
		letterLength = 1;
	}

	return Alphabet.substring(center, center + letterLength);
}
//mengisi variabel Alphabet
var Alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

//Menampilkan Hasil dengan mengisi nilai a dan b pada fungsi middleAlphabet(a, b)
console.log(middleAlphabet("Q", "U"));
console.log(middleAlphabet("R", "U"));
console.log(middleAlphabet("T", "Z"));
console.log(middleAlphabet("Q", "Z"));
