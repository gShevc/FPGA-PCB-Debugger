`timescale 1ns / 1ps

module tb_top;

    reg clk;
    reg d;
    wire q;
    integer errors;

    top dut (
        .clk(clk),
        .d(d),
        .q(q)
    );

    // 100 MHz clock: rising edge every 10 ns
    initial clk = 0;
    always #5 clk = ~clk;

    task check_capture;
        input value;
        begin
            // Change input away from the sampling edge
            @(negedge clk);
            d = value;

            @(posedge clk);
            #1; // Allow q <= d to complete before checking

            if (q !== value) begin
                $display("FAIL at %0t: expected q=%b, got q=%b",
                         $time, value, q);
                errors = errors + 1;
            end
        end
    endtask

    initial begin
        d = 0;
        errors = 0;

        check_capture(0);
        check_capture(1);
        check_capture(1);
        check_capture(0);
        check_capture(1);
        check_capture(0);

        if (errors == 0)
            $display("PASS: all checks passed.");
        else
            $display("FAIL: %0d checks failed.", errors);

        $finish;
    end

endmodule