// Import readline module from node.js
const readline = require("readline")

// Create reader for reading input on console
const reader = readline.createInterface(
    {
        input: process.stdin,
        output: process.stdout
    }
)

// Create global variables
let number = null;
let range = null;
let sum = 0;
let object = {};

// Create function for asking the input value on console
const numberQuestion = () => {
    return new Promise((resolve, reject) => {
      reader.question('What is the number? ', (answer) => {
        number = answer;
        resolve()
      })
    })
  }
  
// Create function for asking the range on console
const rangeQuestion = () => {
  return new Promise((resolve, reject) => {
    reader.question('What is the range? ', (answer) => {
      range = answer;
      resolve()
    })
  })
}

// Main function
const main = async () => {
  // Waits for promise from numberQuestion function
  await numberQuestion()

  // Waits for promise from rangeQuestion function
  await rangeQuestion()

  // Find the sum of digits in the integer provided from input
  let digits = String(number).split('').map(Number);
  for (const element of digits) {
    sum += element;
  }

  // Check if the sum is divisible from 2 - range and adds the right key-value pair into the object
  for (let i = 2; i <= range; i++) {
    if (sum % i == 0) {
      object['sum-of-digits-divisible-by-' + i] = true;
    }
    else {
      object['sum-of-digits-divisible-by-' + i] = false;
    }
  }

  // Logging out the outputs to the console
  console.log('Your number is ' + number);
  console.log('The range is ' + range);
  console.log('The sum is ' + sum);
  console.log(object);

  // Close reader
  reader.close();

  // Return object
  return object;
}

// Call main function
main()
