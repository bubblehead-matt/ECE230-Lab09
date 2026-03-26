module memory_system(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output [7:0] memory
);

    // This should instantiate 4 instances of
    // byte_memory, and then demultiplex
    // data and store into the one selected by
    // addr
    wire [7:0] dataA, dataB, dataC, dataD;
    wire storeA, storeB, storeC, storeD;
    wire [7:0] memoryA, memoryB, memoryC, memoryD;

  
    byte_memory byte0(
      .data(dataA),
      .store(storeA),
      .memory(memoryA));
  
    byte_memory byte1(
      .data(dataB),
      .store(storeB),
      .memory(memoryB));
  
    byte_memory byte2(
      .data(dataC),
      .store(storeC),
      .memory(memoryC));
  
    byte_memory byte3(
      .data(dataD),
      .store(storeD),
      .memory(memoryD));
  

    // It should then multiplex the output of the
    // memory specified by addr into the memory
    // output for display on the LEDs
    // you will need 2 demultiplexers:
    // 1. Demultiplex data -> selected byte
    demultiplexer data_demux (
      .data(data),
      .sel(addr),
      .A(dataA),
      .B(dataB),
      .C(dataC),
      .D(dataD)
    );

    // 2. Demultiplex store -> selected byte
    demultiplexer store_demux (
      .data(store),
      .sel(addr),
      .A(storeA),
      .B(storeB),
      .C(storeC),
      .D(storeD)
    );

    // and one multiplexer:
    // 1. Multiplex selected byte -> memory
    multiplexer output_mux(
        .A(memoryA),
        .B(memoryB),
        .C(memoryC),
        .D(memoryD),
        .Select(addr),
        .Out(memory)
    );
  

endmodule
