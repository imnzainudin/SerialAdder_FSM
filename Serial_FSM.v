/*
	Digital Design Project SEM 5
	by Muhammad Iman Bin Zainudin
*/
module Serial_FSM (clk,reset,A,a,B,b,en1,en2);

input clk,reset,en1,en2;
input[0:3] A,B;
output[0:3]a,b;
reg[0:3]y, Y, s, a, b;
localparam G0=4'b0000, G1=4'b0001, H0=4'b0010, H1=4'b0011;

//shift register
always@(posedge clk)
begin
if(en1)
a<=A;
else
a=4'bzzzz;
end

always@(posedge clk)
begin
if(en2)
b<=B;
else
b=4'bzzzz;
end

//State register
always@(posedge clk, posedge reset)
begin
if(reset)
y=G0;

else
y<=Y;
end


//next state and output 
always@(y,a,b)
case (y)
G0: begin
s=0;
case ({a,b})
2'b00:Y=G0;
2'b01:Y=G1;
2'b10:Y=G1;
2'b11:Y=H0;
endcase
end


G1:begin
s=1;
case({a,b})
2'b00:Y=G0;
2'b01:Y=G1;
2'b10:Y=G1;
2'b11:Y=H0;
endcase
end


H0:begin
s=0;
case({a,b})
2'b00:Y=G1;
2'b01:Y=H0;
2'b10:Y=H0;
2'b11:Y=H1;
endcase
end


H1:begin
s=1;
case({a,b})
2'b00:Y=G0;
2'b01:Y=H0;
2'b10:Y=H0;
2'b11:Y=H1;
endcase
end


endcase
endmodule