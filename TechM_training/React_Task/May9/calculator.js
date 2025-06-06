const calculate = () =>{
    let operation = prompt("Choose an operation: add, sub, mul, div: ").toLowerCase();
    let num1 = Number(prompt("Enter the first number: "));
    let num2 = Number(prompt("Enter the second number:"));

    const add = (a,b) => a + b;
    const sub = (a,b) => a - b;
    const mul = (a,b) => a * b;
    const div = (a,b) =>{
        if(b === 0) return "Cannot divide by zero";
        return `Quotient: ${(a / b).toFixed(3)}, Remainder: ${a % b}`
    };

    switch(operation){
        case "add":
            console.log(`Sum: ${add(num1,num2)}`);
            break;
        
        case "sub":
            console.log(`Difference ${sub(num1,num2)}`);
            break;

        case "mul":
            console.log(`Product: ${mul(num1,num2)}`);
            break;

        case "div":
            console.log(`Divisiion: ${div(num1,num2)}`);
            break;

        default:
            console.log("Invalid operation! Please choose add, sub, mul or div");
    }
};
calculate();