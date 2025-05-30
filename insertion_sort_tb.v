module tb_top;
    reg [31:0] instruction;
    reg clk, rst;
    reg [31:0] inst_data_in, inst_addr;
    reg [31:0] mem_data_in, mem_addr;
    wire [31:0] processor_out;
    wire done;
    
    processor_top uut (clk, rst, inst_data_in, inst_addr, mem_data_in, mem_addr, processor_out, done);

    
    initial begin
        clk <= 0;
        forever #10 clk <= ~clk; 
    end


    initial begin
         rst <= 1;
        
        rst <= 0;
        
        wait(done);
        
        #10; mem_addr <= 0;
        #30; mem_addr <= 1;
            $display(processor_out);
        #30; mem_addr <= 2;
            $display(processor_out);
        #30; mem_addr <= 3;
            $display(processor_out);
        #30; mem_addr <= 4;
            $display(processor_out);
        #30; mem_addr <= 5;
            $display(processor_out);
        #30; mem_addr <= 6;
            $display(processor_out);
        #30; mem_addr <= 7;
            $display(processor_out);
        #30; mem_addr <= 8;
            $display(processor_out);
        #30; mem_addr <= 9;
            $display(processor_out);
        #30 
            $display(processor_out);

       $finish;
    end

endmodule