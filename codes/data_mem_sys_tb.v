module data_mem_sys_tb;

  // Testbench inputs
  reg clk;
  reg rst;
  reg MemRead;
  reg MemWrite;
  reg [9:0] WordAddress;
  reg [31:0] DataIn;

  // Testbench outputs
  wire Stall;
  wire [31:0] DataOut;

  // Instantiate the module under test
  data_mem_sys UUT (
    .clk(clk),
    .rst(rst),
    .MemRead(MemRead),
    .MemWrite(MemWrite),
    .WordAddress(WordAddress),
    .DataIn(DataIn),
    .Stall(Stall),
    .DataOut(DataOut)
  );

  // Clock generation
  always begin
    clk = 0;
    #10;
    clk = 1;
    #10;
  end

  // Testbench stimulus
  initial begin
    // Reset the system
    rst = 0;
    MemRead = 1'b0;
    MemWrite = 1'b0;

    #20;
    rst = 1;

    // Perform memory write operation -------------------------------------1
    MemWrite = 1'b1;
    WordAddress = 10'b00000_10100; // Example address  x20
    DataIn = 'b11111; // Example data
    #20;
    MemWrite = 1'b0;

    // Wait for the memory operation to complete
    #100;

    // Read the data from the output
    $display("DataOut: %D", DataOut);

    // Perform memory read operation
    MemRead = 1'b1;
    WordAddress = 10'b0000010100; // Example address x20
    #20;
    MemRead = 1'b0;

    // Wait for the memory operation to complete
    #100;
    
    // Read the data from the output
    $display("DataOut: %D", DataOut);

    // Perform memory write operation ------------------------------------2
    MemWrite = 1'b1;
    WordAddress = 10'b000001010; // Example address  x29
    DataIn = 'b11111111; // Example data
    #20;
    MemWrite = 1'b0;

    // Wait for the memory operation to complete
    #100;

    // Read the data from the output
    $display("DataOut: %D", DataOut);

    // Perform memory write operation --------------------------------------3
    MemWrite = 1'b1;
    WordAddress = 10'b000001010; // Example address  x29
    DataIn = 'b111111111; // Example data
    #20;
    MemWrite = 1'b0;

    // Wait for the memory operation to complete
    #100;

    // Read the data from the output
    $display("DataOut: %D", DataOut);



    // Perform memory read operation ----------------------------------------------1
    MemRead = 1'b1;
    WordAddress = 10'b0000010100; // Example address x20
    #20;
    MemRead = 1'b0;

    // Wait for the memory operation to complete
    #100;
    
    // Read the data from the output -------------------------------------------2
    $display("DataOut: %D", DataOut);


    // Perform memory read operation
    MemRead = 1'b1;
    WordAddress = 10'b0000010101; // Example address x20
    #20;
    MemRead = 1'b0;

    // Wait for the memory operation to complete
    #100;
    
    // Read the data from the output
    $display("DataOut: %D", DataOut);


    // Perform memory read operation
    MemRead = 1'b1;
    WordAddress = 10'b0010011101; // Example address x29
    #20;
    MemRead = 1'b0;

    // Wait for the memory operation to complete
    #100;
    
    // Read the data from the output
    $display("DataOut: %D", DataOut);


    // End simulation
    $stop;
  end

endmodule