import { Blockchain } from "@proton/vert";

async function wait(ms: number) {
    return new Promise(resolve => {
        setTimeout(resolve, ms);
    });
}

async function main() {
    const blockchain = new Blockchain();
    const contract = blockchain.createContract('xprbet', 'tests/xtokens/xtokens');
    await wait(0);
    console.log(contract.actions)
    // Put you actions calls here
    
}

main();
