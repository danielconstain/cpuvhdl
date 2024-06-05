library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;


entity memory is
	port (
	      address : in std_logic_vector(7 downto 0);
			data_in : in std_logic_vector(7 downto 0);
			writen  : in std_logic;
			port_in_00, port_in_01 : in std_logic_vector(7 downto 0);
			clock   : in std_logic;
			reset   : in std_logic;
			data_out: out std_logic_vector(7 downto 0);
			port_out_00, port_out_01: out std_logic_vector(7 downto 0));

end memory;

architecture arch_memo of memory is

component ROMsync128x8 is
	port (
	      clock : in std_logic;
	      address: in std_logic_vector(7 downto 0);
			SalidaROM:out std_logic_vector(7 downto 0));

end component;

component ram96x8sync is
	port (
	      clock : in std_logic;
	      address: in std_logic_vector(7 downto 0);
			data_in : in std_logic_vector(7 downto 0);
			writen : in std_logic;
			SalidaRam:out std_logic_vector(7 downto 0));

end component;

component output_ports is
	port (
	      clock : in std_logic;
	      address: in std_logic_vector(7 downto 0);
			data_in : in std_logic_vector(7 downto 0);
			reset : in std_logic;
			writen : in std_logic;
			port_out_00, port_out_01 : out std_logic_vector(7 downto 0));

end component;

component multiplexor is

	port (
	      address : in std_logic_vector(7 downto 0);
	      rom_data_out : in std_logic_vector(7 downto 0);
			rw_data_out : in std_logic_vector(7 downto 0);
			port_in_00 : in std_logic_vector(7 downto 0);
			port_in_01 : in std_logic_vector(7 downto 0);
			data_out   :out std_logic_vector(7 downto 0));

end component;

signal data_out_rom, data_out_ram : std_logic_vector(7 downto 0);

begin 

paso1 : ROMsync128x8 port map (clock => clock, address => address, salidaROM => data_out_rom);
paso2 : ram96x8sync port map (clock => clock, address => address, data_in => data_in, writen => writen, salidaRam => data_out_ram);
paso3 : output_ports port map (clock => clock, address => address, data_in => data_in, reset => reset, writen => writen, port_out_00 => port_out_00, port_out_01 => port_out_01);
paso4 : multiplexor port map (address => address, rom_data_out => data_out_rom, rw_data_out => data_out_ram, port_in_00 => port_in_00, port_in_01 => port_in_01, data_out => data_out);

end arch_memo;