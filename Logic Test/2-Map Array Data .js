/** @format */

function MapArrayData(arr, x) {
	if (x == 1) {
		document.write(0);
		return;
	}
	//Deklarasi array baru
	let left = new Array(x);
	let right = new Array(x);
	let prod = new Array(x);

	//Mengisi array baru dengan nilai
	let i, j;
	//Mengisi array left dengan nilai 1
	left[0] = 1;
	//Mengisi array right dengan nilai 1
	right[x - 1] = 1;
	//Mengisi array left dengan nilai arr[0] * arr[1] * arr[2] * ... * arr[i - 1]
	for (i = 1; i < x; i++) left[i] = arr[i - 1] * left[i - 1];
	//Mengisi array right dengan nilai arr[n - 1] * arr[n - 2] * arr[n - 3] * ... * arr[i + 1]
	for (j = x - 2; j >= 0; j--) right[j] = arr[j + 1] * right[j + 1];
	//Mengisi array prod dengan nilai left[i] * right[i]
	for (i = 0; i < x; i++) prod[i] = left[i] * right[i];
	//Menampilkan array prod
	for (i = 0; i < x; i++) console.log(prod[i] + " ");
	//Menampilkan array product
	return;
}

//Mengisi Array
let arr = [10, 3, 5, 6, 2];
//Mengisi nilai x
let x = arr.length;
//Menampilkan Array
console.log("The product array is :" + "</br>");
//Menampilkan Hasil
MapArrayData(arr, x);
