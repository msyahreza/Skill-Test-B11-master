/** @format */
//Reverse Words
function reverseWords(str) {
	//Deklarasi variabel
	let reverseWordArr = str
		//Mengubah string menjadi array string
		.split(" ")
		//Mengubah array string menjadi array string baru dengan nilai yang sudah dibalik
		.map((word) => word.split("").reverse().join(""));
	//Mengembalikan nilai array string yang sudah dibalik
	return reverseWordArr.join(" ");
}

//Menampilkan hasil dengan mengisi nilai pada fungsi reverseWords(str)
console.log(reverseWords("I am A Great human"));