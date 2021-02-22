import { LightningElement, track } from 'lwc';

export default class SimpleCalculator extends LightningElement {
    currentResult = "New Result";
    firstNumber;
    secondNumber;
    numberChangeHandler(event) {
        const field = event.target.name
        if (field === 'firstNumber'){
            this.firstNumber = event.target.value;
        } else {
            this.secondNumber = event.target.value;
        }
    }
    addHandler(){
        this.currentResult = `The result of ${parseInt(this.firstNumber)} + ${parseInt(this.secondNumber)} is ${parseInt(this.firstNumber) + parseInt(this.secondNumber)} `
    }
    subtractHandler(){
        this.currentResult = `The result of ${parseInt(this.firstNumber)} - ${parseInt(this.secondNumber)} is ${parseInt(this.firstNumber) - parseInt(this.secondNumber)} `
    }
    multiplyHandler(){
        this.currentResult = `The result of ${parseInt(this.firstNumber)} x ${parseInt(this.secondNumber)} is ${parseInt(this.firstNumber) * parseInt(this.secondNumber)} `
    }
    divideHandler(){
        this.currentResult = `The result of ${parseInt(this.firstNumber)} ÷ ${parseInt(this.secondNumber)} is ${parseInt(this.firstNumber) /  parseInt(this.secondNumber)} `
    }
}