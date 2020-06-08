namespace HelloQubit{
    open Microsoft.Quantum.Diagnostics;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;
    operation Qubits_Demo () : Unit {
        let divider = "--------------------------------------------------------------------------------------------------";
        //Allocates qubit in state |0⟩
        using(q = Qubit()) {
            Message("State |0⟩:");

            //Print state of quantum computer
            // Only one qubit is allocated, so only its state is printed
            DumpMachine();
            Message(divider);

            //Change the qubit from state |0⟩ to state |1⟩
            X(q);

            Message("State |1⟩:");
            DumpMachine();
            Message(divider);

            //This line puts the qubit into a superposition
            // State |-⟩ = (1/sqrt(2))(|0⟩ - |1⟩)
            H(q);
            Message("State |-⟩:");
            DumpMachine();
            Message(divider);

            //This line changes the qubit to state |-i⟩ 
            // (1/sqrt(2))(|0⟩ - i|1⟩)
            S(q);
            Message("State |-i⟩:");
            DumpMachine();
            Message(divider);

            //This will put the qubit into an uneven superposition
            // The amplitudes of |0⟩ and |1⟩ have different moduli
            Rx(2.0, q);
            Ry(1.0, q);

            Message("Uneven superposition state:");
            DumpMachine();

            //This line returns the qubit to state |0⟩
            Reset(q);
        }
    }    
}
