const readline = require("readline")

const reader = readline.createInterface(
    {
        input: process.stdin,
        output: process.stdout
    }
)

let number = null;
let range = null;

const numberQuestion = () => {
    return new Promise((resolve, reject) => {
      reader.question('What is the number? ', (answer) => {
        number = answer;
        resolve()
      })
    })
  }
  
  const rangeQuestion = () => {
    return new Promise((resolve, reject) => {
      reader.question('What is the range? ', (answer) => {
        range = answer;
        resolve()
      })
    })
  }
  
  const main = async () => {
    await numberQuestion()
    await rangeQuestion()
    console.log('Your number is ' + number);
    console.log('The range is ' + range);
    reader.close()
  }
  
  main()
