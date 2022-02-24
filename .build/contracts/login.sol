pragma soldidity ^0.5.0;

// set the default account //



web3.eth.defaultAccount = User;

contract Test {
    uint a;
    address = User;

    constructor(uint testInt)  { a = testInt;}

    event Event(uint indexed b, bytes32 c);

    event Event2(uint indexed b, bytes32 c);

    function foo(uint b, bytes32 c) public returns(address) {
        emit Event(b, c);
        return d;
    }
}


// would result in the JSON:
[
    {
        "type": "constructor"
        "stateMutability": "nonpayable",
        "inputs": [{"internalType":"uint256","name":"testInt","type":"uint256"}],
    },
    {
        "type": "event"
        "name": "Event",
        "inputs": [{"indexed":true,"internalType":"uint256","name":"b","type":"uint256"},{"indexed":false,"internalType":"bytes32","name":"c","type":"bytes32"}],
        "anonymous": false,
    },
    {
        "type": "event"
        "name": "Event2",
        "inputs": [{"indexed":true,"internalType":"uint256","name":"b","type":"uint256"},{"indexed":false,"internalType":"bytes32","name":"c","type":"bytes32"}],
        "anonymous": false,
    },
    {
        "type": "function"
        "name": "foo",
        "stateMutability": "nonpayable",
        "inputs": [{"internalType":"uint256","name":"b","type":"uint256"},{"internalType":"bytes32","name":"c","type":"bytes32"}],
        "outputs": [{"internalType":"address","name":"","type":"address"}],
    }
]
