pragma solidity 0.4.19;


contract XOR {
    function xor(string x, string y) public pure returns (string) {
        bytes memory _x = bytes(x);
        bytes memory _y = bytes(y);
        bytes memory _xor = new bytes(_x.length);
        uint i = 0;

        while (i < _xor.length) {
            if (_x[i] != _y[i]) {
                _xor[i] = "1";
            } else {
                _xor[i] = "0";
            }
            i += 1;
        }
        
        return string(_xor);
    }
}
