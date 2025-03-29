import { Blockchain } from "@proton/vert";

async function wait(ms: number) {
    return new Promise(resolve => {
        setTimeout(resolve, ms);
    });
}

async function main() {
    const blockchain = new Blockchain();
    const snipstaking = blockchain.createContract('snipstaking', 'target/snipstk.contract');
    const contract = blockchain.createContract('snipvoting', 'target/snipvote.contract');
    await wait(0);

    console.log('------ BEFORE ------');

    // Put you actions calls here
    // await contract.actions.transfer([]).send('snipstaking@active');
    // await contract.actions.registercand(['snipstk', [{ account: "snipstk", electionName: "Election2025", description: "nothing" }]]).send('snipstk@active');
    await contract.actions.createelect([
        'Election2025',
        "2025-03-23T19:20:00",
        "2025-03-25T19:30:00",
        "2025-03-22T19:40:00",
        "2025-03-23T19:50:00",
        0,
        0
      ]).send('snipstk@active');
      

    console.log('------ AFTER ------');

}

main();
