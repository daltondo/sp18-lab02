pragma solidity 0.4.19;


contract Fibonacci {
    /* Carry out calculations to find the nth Fibonacci number */
    function fibRecur(uint n) public pure returns (uint) {
    }

    /* Carry out calculations to find the nth Fibonacci number */
    function fibIter(uint n) public returns (uint) {
        uint prev = 0;
        uint curr = 1;
        uint i = 0;
        
        while (i < n) {
            uint temp = curr;
            curr = curr + prev;
            prev = temp;
            i += 1;
        }
        
        return curr;
    }
}
