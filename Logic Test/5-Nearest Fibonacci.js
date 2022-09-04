/** @format */
//Nearest Fibonacci
function fibonacci(nums) {
	//Deklarasi variabel
	let fib = [0, 1];
	let data = [];

	//Mengisi array fib dengan nilai
	for (let i = 2; i <= nums; i++) {
		//Mengisi array fib dengan nilai fib[i-2] + fib[i-1]
		fib[i] = fib[i - 1] + fib[i - 2];
		//Mengisi array data dengan nilai fib[i]
		data.push(fib[i]);
	}

	return data;
}

//Menampilkan hasil dengan mengisi nums pada fungsi fibonacci(nums)
console.log(fibonacci(10));