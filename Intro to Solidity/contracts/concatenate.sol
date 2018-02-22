pragma solidity 0.4.19;


contract Concatenate {
    function concatWithoutImport(string x, string y) public returns (string) {
        bytes memory _x = bytes(x);
        bytes memory _y = bytes(y);
        bytes memory fused = new bytes(_x.length + _y.length);
        uint k = 0;
        
        for (uint i = 0; i < _x.length; i++) {
            fused[k] = _x[i];
            k += 1;
        }
        
        for (uint j = 0; j < _y.length; j++) {
            fused[k] = _y[j];
            k += 1;
        }
        
        return string(fused);
    }

    /* BONUS */
    function concatWithImport(string s, string t) public returns (string) {
    }
}
