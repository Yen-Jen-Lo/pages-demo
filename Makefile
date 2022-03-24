VERILOG = iverilog
TARGET = test0324.vcd

$(TARGET) : test0324.vvp
	vvp test0324.vvp

test0324.vvp: test0324_tb.v test0324.v
	$(VERILOG) -o test0324.vvp test0324_tb.v test0324.v

clean:
	-del $(TARGET)