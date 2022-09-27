library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity VoltageToFrequency is
  port(
      InputClock  : in std_logic;
      Reset  : in std_logic;
      Voltage: in std_logic_vector(1 downto 0);            
      OutputClock :out std_logic;
      );
end VoltageToFrequency;
 
architecture Operation of VoltageToFrequency is

begin
  process(InputClock)
    variable PC:std_logic_vector(15 downto 0):="0000000000000000";
    begin
      if(Reset='1' and Clock='1')then
        PC:="0000000000000000";        
      elsif(PCload='1' and Clock='1')then
        PC:=Input;
      end if;
      Output<=PC;
    end process;
end Operation;