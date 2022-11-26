import Person from "./person.js"

const john = new Person("John", "Doe");
const joe = new Person("Joe", "Doe");

console.log(john.getFullName());
console.log(joe.getFullName());
