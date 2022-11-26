class Person {
  constructor(firstName, lastName) {
    debugger
    this.firstName = firstName;
    this.lastName = lastName;
  }
  
  getFullName() {
    return `${this.firstName} ${this.lastName}`;
  }
}

export default Person
