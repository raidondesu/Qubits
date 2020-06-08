open Microsoft.Quantum.Diagnostics;

operation Qubits_Demo () : Unit {
    let divider = "--------------------------------------------------------------------------------------------------";
    //Allocates qubit in state |0⟩
    using(q = Qubit()) {
        Message("State |0⟩:");

        //Print state of quantum computer
        // Only one qubit is allocated, so only its state is printed
        Dumpmachine();
        Message(divider);

        //Change the qubit from state |0⟩ to state |1⟩
        X(q);

        Message("State |1⟩:");
        DumpMachine();
        Message(divider);

    }
}