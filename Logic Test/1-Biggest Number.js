/** @format */

//Deklarasi variabel
const num1 = 123;
const num2 = 231;
const num3 = 321;

//Deklarasi variabel maxRedigit1
const maxRedigit1 = function (num1) {
	//Jika num1 kurang dari 100 atau lebih dari 999 maka akan mengembalikan nilai null
	if (num1 < 100 || num1 > 999) return null;
	//Mengembalikan nilai num1 yang sudah diubah menjadi string, di split, di sort, di join
	return +num1
		//Mengubah num1 menjadi string
		.toString()
		//Mengubah num1 menjadi array
		.split("")
		//Mengurutkan num1 dari yang terbesar
		.sort((a, b) => b - a)
		//Menggabungkan num1 menjadi string
		.join("");
};
//Deklarasi variabel selanjutnya
const maxRedigit2 = function (num2) {
	if (num2 < 100 || num2 > 999) return null;
	return +num2
		.toString()
		.split("")
		.sort((a, b) => b - a)
		.join("");
};
//Deklarasi variabel selanjutnya
const maxRedigit3 = function (num3) {
	if (num3 < 100 || num3 > 999) return null;
	return +num3
		.toString()
		.split("")
		.sort((a, b) => b - a)
		.join("");
};
//Menampilkan output dari proses
console.log("output: ", maxRedigit1(num1));
console.log("output: ", maxRedigit2(num2));
console.log("output: ", maxRedigit3(num3));
