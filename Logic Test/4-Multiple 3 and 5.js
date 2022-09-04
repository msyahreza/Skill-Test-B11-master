/** @format */
//Multiple 3 and 5
function sumOfMultiples(number) {
	//Deklarasi array baru
	let sum = 0;
	//Mengisi array baru dengan nilai
	for (let i = 1; i < number; i++) {
		//jika i habis dibagi 3 dan 5 maka akan dijumlahkan
		if (i % 3 === 0 || i % 5 === 0) {
			//jika i habis dibagi 3 dan 5 maka akan dijumlahkan
			sum += i;
		}
	}
	return sum;
}

//Menampilkan Hasil dengan mengisi nilai 10 dan 20 pada fungsi sumOfMultiples(number)
console.log(sumOfMultiples(10));
console.log(sumOfMultiples(20));
