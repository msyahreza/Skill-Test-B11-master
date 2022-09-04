/** @format */

//Alternate Case
var alternateCase = function (s) {
	//deklarasi chars untuk mengubah function s menjadi toLowerCase
	var chars = s.toLowerCase().split("");
	for (var i = 0; i < chars.length; i++) {
		if (i % 2 === 0) {
			//jika i habis dibagi 2 maka chars[i] akan diubah menjadi toUpperCase
			chars[i] = chars[i].toUpperCase();
		}
	}
	return chars.join("");
};

//Mengisi nilai variabel
var txt1 = "abc";
var txt2 = "ABC";
var txt3 = "Hello World";
//Menampilkan hasil function (s) menggunakan variabel txt sebelumnya
console.log(alternateCase(txt1));
console.log(alternateCase(txt2));
console.log(alternateCase(txt3));
