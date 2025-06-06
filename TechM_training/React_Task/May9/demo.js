function tables(num, limit){
    for(let i=1; i<=limit; i++){
        console.log(`${num} * ${i} = ` + num*i);
    }
}
let num = prompt("Enter a number: ");
let limit  = prompt("Enter the limit: ");
tables(num,limit);