module HAS2 (clk, rst, sfd, srd, sw, sfa, st, fdoor, rdoor, winbuzz, alarmbuzz, heater, cooler, display);

    input clk, rst;
    input sfd, srd, sw, sfa;
    input [6:0] st;

    output reg fdoor, rdoor, winbuzz, alarmbuzz, heater, cooler;
    output reg [2:0] display;
    
    reg [2:0] curr_state;

    reg [2:0] next_state;

    always @ (posedge clk, rst)
    begin
        if (rst == 1'b1)
        begin
            curr_state <= 3'd0;
        end
        else
        begin
            curr_state <= next_state;
        end
    end

    always @ (curr_state, sfd, srd, sw, sfa, st)
    begin
        if (curr_state == 3'd0)
        begin
            fdoor <= 1'b0;
            rdoor <= 1'b0;
            winbuzz <= 1'b0;
            alarmbuzz <= 1'b0;
            heater <= 1'b0;
            cooler <= 1'b0;
            next_state <= 3'd1;
        end
        else if (curr_state == 3'd1)
        begin
            display <= 3'd1;
            fdoor <= sfd;
            next_state <= 3'd2;
        end
        else if (curr_state == 3'd2)
        begin
            display <= 3'd2;
            rdoor <= srd;
            next_state <= 3'd3;
        end
        else if (curr_state == 3'd3)
        begin
            display <= 3'd3;
            alarmbuzz <= sfa;
            next_state <= 3'd4;
        end
        else if (curr_state == 3'd4)
        begin
            display <= 3'd4;
            winbuzz <= sw;
            next_state <= 3'd5;
        end
        else if (curr_state == 3'd5)
        begin
            display <= 3'd5;
            if (st < 7'd50)
            begin
                heater <= 1'b1;
            end
            else
            begin
                heater <= 1'b0;
            end
            next_state <= 3'd6;
        end
        else if (curr_state == 3'd6)
        begin
            display <= 3'd6;
            if (st > 7'd70)
            begin
                cooler <= 1'b1;
            end
            else
            begin
                cooler <= 1'b0;
            end
            next_state <= 3'd1;
        end
        begin


        end
    end
    
endmodule