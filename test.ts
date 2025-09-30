function add(a: number, b: number): number {
    return a + b;
}

function helloWorld(): string {
    return "Hello, World!";
}

function greet(name: string): string {
    return `Hello, ${name}!`;
}

function calculateSum(): number {
    const result1 = add(1, 2);
    const result2 = add(3, 4);
    const result3 = add(5, 6);
    const result4 = add(7, 8);
    const result5 = add(9, 10);
    return result1 + result2 + result3 + result4 + result5;
}

function processData(): number {
    const x = add(100, 200);
    const y = add(x, 50);
    const z = add(y, 25);
    return add(z, 10);
}

function main(): void {
    const message = helloWorld();
    console.log(message);
    const greeting = greet("TypeScript");
    console.log(greeting);
    const total = calculateSum();
    console.log(`Sum: ${total}`);
    const processed = processData();
    console.log(`Processed: ${processed}`);
    const final = add(total, processed);
    console.log(`Final: ${final}`);
}

main();
