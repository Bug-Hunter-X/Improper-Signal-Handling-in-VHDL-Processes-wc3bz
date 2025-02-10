```vhdl
ENTITY good_process IS
  PORT ( clk : IN  STD_LOGIC; 
        data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0); 
        data_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END ENTITY;

ARCHITECTURE behavioral OF good_process IS
  SIGNAL internal_data : STD_LOGIC_VECTOR(7 DOWNTO 0);  -- Added internal signal
BEGIN
  PROCESS (clk)
  BEGIN
    IF rising_edge(clk) THEN
      internal_data <= data_in;  -- Assign to internal signal
    END IF;
  END PROCESS;

  data_out <= internal_data; -- Assign internal signal to output port
END ARCHITECTURE;
```