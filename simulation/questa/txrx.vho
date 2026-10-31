-- Copyright (C) 2025  Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Altera and sold by Altera or its authorized distributors.  Please
-- refer to the Altera Software License Subscription Agreements 
-- on the Quartus Prime software download page.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 25.1std.0 Build 1129 10/21/2025 SC Lite Edition"

-- DATE "10/30/2026 20:15:39"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Altera FPGA (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	txrx IS
    PORT (
	mensagem : IN std_logic_vector(3 DOWNTO 0);
	enable_divisor : IN std_logic;
	start : IN std_logic;
	clock_50 : IN std_logic;
	erro_pos : IN std_logic_vector(2 DOWNTO 0);
	visor : IN std_logic_vector(1 DOWNTO 0);
	led_serie : BUFFER std_logic;
	led_clock : BUFFER std_logic;
	led_erro : BUFFER std_logic;
	ponto_canal : BUFFER std_logic;
	codigo_out : BUFFER std_logic_vector(6 DOWNTO 0);
	hex0 : BUFFER std_logic_vector(6 DOWNTO 0);
	hex1 : BUFFER std_logic_vector(6 DOWNTO 0);
	hex2 : BUFFER std_logic_vector(6 DOWNTO 0);
	hex3 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END txrx;

-- Design Ports Information
-- led_serie	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_clock	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_erro	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ponto_canal	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codigo_out[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codigo_out[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codigo_out[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codigo_out[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codigo_out[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codigo_out[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codigo_out[6]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- visor[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- erro_pos[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- erro_pos[1]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- erro_pos[2]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mensagem[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- visor[0]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mensagem[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mensagem[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mensagem[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock_50	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable_divisor	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF txrx IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_mensagem : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_enable_divisor : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_clock_50 : std_logic;
SIGNAL ww_erro_pos : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_visor : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_led_serie : std_logic;
SIGNAL ww_led_clock : std_logic;
SIGNAL ww_led_erro : std_logic;
SIGNAL ww_ponto_canal : std_logic;
SIGNAL ww_codigo_out : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex3 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clock_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \led_serie~output_o\ : std_logic;
SIGNAL \led_clock~output_o\ : std_logic;
SIGNAL \led_erro~output_o\ : std_logic;
SIGNAL \ponto_canal~output_o\ : std_logic;
SIGNAL \codigo_out[0]~output_o\ : std_logic;
SIGNAL \codigo_out[1]~output_o\ : std_logic;
SIGNAL \codigo_out[2]~output_o\ : std_logic;
SIGNAL \codigo_out[3]~output_o\ : std_logic;
SIGNAL \codigo_out[4]~output_o\ : std_logic;
SIGNAL \codigo_out[5]~output_o\ : std_logic;
SIGNAL \codigo_out[6]~output_o\ : std_logic;
SIGNAL \hex0[0]~output_o\ : std_logic;
SIGNAL \hex0[1]~output_o\ : std_logic;
SIGNAL \hex0[2]~output_o\ : std_logic;
SIGNAL \hex0[3]~output_o\ : std_logic;
SIGNAL \hex0[4]~output_o\ : std_logic;
SIGNAL \hex0[5]~output_o\ : std_logic;
SIGNAL \hex0[6]~output_o\ : std_logic;
SIGNAL \hex1[0]~output_o\ : std_logic;
SIGNAL \hex1[1]~output_o\ : std_logic;
SIGNAL \hex1[2]~output_o\ : std_logic;
SIGNAL \hex1[3]~output_o\ : std_logic;
SIGNAL \hex1[4]~output_o\ : std_logic;
SIGNAL \hex1[5]~output_o\ : std_logic;
SIGNAL \hex1[6]~output_o\ : std_logic;
SIGNAL \hex2[0]~output_o\ : std_logic;
SIGNAL \hex2[1]~output_o\ : std_logic;
SIGNAL \hex2[2]~output_o\ : std_logic;
SIGNAL \hex2[3]~output_o\ : std_logic;
SIGNAL \hex2[4]~output_o\ : std_logic;
SIGNAL \hex2[5]~output_o\ : std_logic;
SIGNAL \hex2[6]~output_o\ : std_logic;
SIGNAL \hex3[0]~output_o\ : std_logic;
SIGNAL \hex3[1]~output_o\ : std_logic;
SIGNAL \hex3[2]~output_o\ : std_logic;
SIGNAL \hex3[3]~output_o\ : std_logic;
SIGNAL \hex3[4]~output_o\ : std_logic;
SIGNAL \hex3[5]~output_o\ : std_logic;
SIGNAL \hex3[6]~output_o\ : std_logic;
SIGNAL \clock_50~input_o\ : std_logic;
SIGNAL \clock_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \mensagem[0]~input_o\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \mensagem[1]~input_o\ : std_logic;
SIGNAL \mensagem[2]~input_o\ : std_logic;
SIGNAL \mensagem[3]~input_o\ : std_logic;
SIGNAL \ger|codigo[4]~0_combout\ : std_logic;
SIGNAL \ser|reg~7_combout\ : std_logic;
SIGNAL \enable_divisor~input_o\ : std_logic;
SIGNAL \rx|n[0]~1_combout\ : std_logic;
SIGNAL \rx|n[1]~2_combout\ : std_logic;
SIGNAL \rx|Add0~0_combout\ : std_logic;
SIGNAL \rx|n[2]~0_combout\ : std_logic;
SIGNAL \rx|LessThan0~0_combout\ : std_logic;
SIGNAL \div|cnt[0]~25_combout\ : std_logic;
SIGNAL \div|cnt[0]~26\ : std_logic;
SIGNAL \div|cnt[1]~27_combout\ : std_logic;
SIGNAL \div|cnt[1]~28\ : std_logic;
SIGNAL \div|cnt[2]~29_combout\ : std_logic;
SIGNAL \div|cnt[2]~30\ : std_logic;
SIGNAL \div|cnt[3]~31_combout\ : std_logic;
SIGNAL \div|cnt[3]~32\ : std_logic;
SIGNAL \div|cnt[4]~33_combout\ : std_logic;
SIGNAL \div|cnt[4]~34\ : std_logic;
SIGNAL \div|cnt[5]~35_combout\ : std_logic;
SIGNAL \div|cnt[5]~36\ : std_logic;
SIGNAL \div|cnt[6]~37_combout\ : std_logic;
SIGNAL \div|cnt[6]~38\ : std_logic;
SIGNAL \div|cnt[7]~39_combout\ : std_logic;
SIGNAL \div|cnt[7]~40\ : std_logic;
SIGNAL \div|cnt[8]~41_combout\ : std_logic;
SIGNAL \div|cnt[8]~42\ : std_logic;
SIGNAL \div|cnt[9]~43_combout\ : std_logic;
SIGNAL \div|cnt[9]~44\ : std_logic;
SIGNAL \div|cnt[10]~45_combout\ : std_logic;
SIGNAL \div|cnt[10]~46\ : std_logic;
SIGNAL \div|cnt[11]~47_combout\ : std_logic;
SIGNAL \div|cnt[11]~feeder_combout\ : std_logic;
SIGNAL \div|cnt[11]~48\ : std_logic;
SIGNAL \div|cnt[12]~49_combout\ : std_logic;
SIGNAL \div|cnt[12]~feeder_combout\ : std_logic;
SIGNAL \div|cnt[12]~50\ : std_logic;
SIGNAL \div|cnt[13]~51_combout\ : std_logic;
SIGNAL \div|cnt[13]~feeder_combout\ : std_logic;
SIGNAL \div|cnt[13]~52\ : std_logic;
SIGNAL \div|cnt[14]~53_combout\ : std_logic;
SIGNAL \div|cnt[14]~feeder_combout\ : std_logic;
SIGNAL \div|cnt[14]~54\ : std_logic;
SIGNAL \div|cnt[15]~55_combout\ : std_logic;
SIGNAL \div|cnt[15]~56\ : std_logic;
SIGNAL \div|cnt[16]~57_combout\ : std_logic;
SIGNAL \div|cnt[16]~58\ : std_logic;
SIGNAL \div|cnt[17]~59_combout\ : std_logic;
SIGNAL \div|cnt[17]~60\ : std_logic;
SIGNAL \div|cnt[18]~61_combout\ : std_logic;
SIGNAL \div|cnt[18]~62\ : std_logic;
SIGNAL \div|cnt[19]~63_combout\ : std_logic;
SIGNAL \div|cnt[19]~64\ : std_logic;
SIGNAL \div|cnt[20]~65_combout\ : std_logic;
SIGNAL \div|cnt[20]~66\ : std_logic;
SIGNAL \div|cnt[21]~67_combout\ : std_logic;
SIGNAL \div|cnt[21]~68\ : std_logic;
SIGNAL \div|cnt[22]~69_combout\ : std_logic;
SIGNAL \div|cnt[22]~70\ : std_logic;
SIGNAL \div|cnt[23]~71_combout\ : std_logic;
SIGNAL \div|Equal0~6_combout\ : std_logic;
SIGNAL \div|Equal0~5_combout\ : std_logic;
SIGNAL \div|Equal0~1_combout\ : std_logic;
SIGNAL \div|Equal0~2_combout\ : std_logic;
SIGNAL \div|cnt[23]~72\ : std_logic;
SIGNAL \div|cnt[24]~73_combout\ : std_logic;
SIGNAL \div|Equal0~0_combout\ : std_logic;
SIGNAL \div|Equal0~3_combout\ : std_logic;
SIGNAL \div|Equal0~4_combout\ : std_logic;
SIGNAL \div|Equal0~7_combout\ : std_logic;
SIGNAL \ser|reg[5]~1_combout\ : std_logic;
SIGNAL \ser|reg~6_combout\ : std_logic;
SIGNAL \ser|reg~5_combout\ : std_logic;
SIGNAL \ser|reg~4_combout\ : std_logic;
SIGNAL \ser|reg~3_combout\ : std_logic;
SIGNAL \ser|reg~2_combout\ : std_logic;
SIGNAL \ser|reg~0_combout\ : std_logic;
SIGNAL \erro_pos[0]~input_o\ : std_logic;
SIGNAL \erro_pos[1]~input_o\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \erro_pos[2]~input_o\ : std_logic;
SIGNAL \inj|ser|reg~8_combout\ : std_logic;
SIGNAL \inj|ser|reg~7_combout\ : std_logic;
SIGNAL \inj|ser|reg~0_combout\ : std_logic;
SIGNAL \inj|ser|reg~6_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \inj|ser|reg~5_combout\ : std_logic;
SIGNAL \inj|ser|reg~3_combout\ : std_logic;
SIGNAL \inj|ser|reg~4_combout\ : std_logic;
SIGNAL \inj|ser|reg~2_combout\ : std_logic;
SIGNAL \inj|ser|reg~1_combout\ : std_logic;
SIGNAL \des|reg~0_combout\ : std_logic;
SIGNAL \des|reg~4_combout\ : std_logic;
SIGNAL \des|reg~6_combout\ : std_logic;
SIGNAL \des|reg~5_combout\ : std_logic;
SIGNAL \des|reg~3_combout\ : std_logic;
SIGNAL \des|paralelo[2]~0_combout\ : std_logic;
SIGNAL \des|reg~1_combout\ : std_logic;
SIGNAL \des|reg~2_combout\ : std_logic;
SIGNAL \ver|s~0_combout\ : std_logic;
SIGNAL \ver|sindrome[2]~0_combout\ : std_logic;
SIGNAL \des|paralelo[3]~1_combout\ : std_logic;
SIGNAL \ver|sindrome[1]~1_combout\ : std_logic;
SIGNAL \des|paralelo[4]~3_combout\ : std_logic;
SIGNAL \des|paralelo[0]~2_combout\ : std_logic;
SIGNAL \ver|sindrome[0]~2_combout\ : std_logic;
SIGNAL \ver|erro~0_combout\ : std_logic;
SIGNAL \inj|saida~combout\ : std_logic;
SIGNAL \visor[0]~input_o\ : std_logic;
SIGNAL \visor[1]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \des|paralelo[1]~4_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \des|paralelo[5]~5_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux34~2_combout\ : std_logic;
SIGNAL \Mux34~3_combout\ : std_logic;
SIGNAL \Mux33~2_combout\ : std_logic;
SIGNAL \Mux33~3_combout\ : std_logic;
SIGNAL \Mux32~2_combout\ : std_logic;
SIGNAL \Mux32~3_combout\ : std_logic;
SIGNAL \Mux31~2_combout\ : std_logic;
SIGNAL \Mux31~3_combout\ : std_logic;
SIGNAL \Mux30~2_combout\ : std_logic;
SIGNAL \Mux30~3_combout\ : std_logic;
SIGNAL \Mux29~2_combout\ : std_logic;
SIGNAL \Mux29~3_combout\ : std_logic;
SIGNAL \Mux28~2_combout\ : std_logic;
SIGNAL \Mux28~3_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \r~0_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux20~2_combout\ : std_logic;
SIGNAL \Mux20~3_combout\ : std_logic;
SIGNAL \Mux19~2_combout\ : std_logic;
SIGNAL \Mux19~3_combout\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \Mux18~3_combout\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \Mux17~3_combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \Mux16~3_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Mux15~3_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \div|cnt\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \ger|codigo\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ser|reg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \des|reg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \rx|n\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inj|ser|reg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \cor|mensagem\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inj|ALT_INV_saida~combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux28~3_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_mensagem <= mensagem;
ww_enable_divisor <= enable_divisor;
ww_start <= start;
ww_clock_50 <= clock_50;
ww_erro_pos <= erro_pos;
ww_visor <= visor;
led_serie <= ww_led_serie;
led_clock <= ww_led_clock;
led_erro <= ww_led_erro;
ponto_canal <= ww_ponto_canal;
codigo_out <= ww_codigo_out;
hex0 <= ww_hex0;
hex1 <= ww_hex1;
hex2 <= ww_hex2;
hex3 <= ww_hex3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clock_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_50~input_o\);
\inj|ALT_INV_saida~combout\ <= NOT \inj|saida~combout\;
\ALT_INV_Mux21~0_combout\ <= NOT \Mux21~0_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_Mux14~3_combout\ <= NOT \Mux14~3_combout\;
\ALT_INV_Mux28~3_combout\ <= NOT \Mux28~3_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y43_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X49_Y54_N9
\led_serie~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ser|reg\(0),
	devoe => ww_devoe,
	o => \led_serie~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\led_clock~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \div|cnt\(24),
	devoe => ww_devoe,
	o => \led_clock~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\led_erro~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ver|erro~0_combout\,
	devoe => ww_devoe,
	o => \led_erro~output_o\);

-- Location: IOOBUF_X66_Y54_N16
\ponto_canal~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inj|ALT_INV_saida~combout\,
	devoe => ww_devoe,
	o => \ponto_canal~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\codigo_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~2_combout\,
	devoe => ww_devoe,
	o => \codigo_out[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\codigo_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~2_combout\,
	devoe => ww_devoe,
	o => \codigo_out[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\codigo_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~2_combout\,
	devoe => ww_devoe,
	o => \codigo_out[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\codigo_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~2_combout\,
	devoe => ww_devoe,
	o => \codigo_out[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\codigo_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~2_combout\,
	devoe => ww_devoe,
	o => \codigo_out[4]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\codigo_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~5_combout\,
	devoe => ww_devoe,
	o => \codigo_out[5]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\codigo_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~2_combout\,
	devoe => ww_devoe,
	o => \codigo_out[6]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\hex0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux34~3_combout\,
	devoe => ww_devoe,
	o => \hex0[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\hex0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux33~3_combout\,
	devoe => ww_devoe,
	o => \hex0[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\hex0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux32~3_combout\,
	devoe => ww_devoe,
	o => \hex0[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\hex0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux31~3_combout\,
	devoe => ww_devoe,
	o => \hex0[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\hex0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux30~3_combout\,
	devoe => ww_devoe,
	o => \hex0[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\hex0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux29~3_combout\,
	devoe => ww_devoe,
	o => \hex0[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\hex0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux28~3_combout\,
	devoe => ww_devoe,
	o => \hex0[6]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\hex1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~0_combout\,
	devoe => ww_devoe,
	o => \hex1[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\hex1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~0_combout\,
	devoe => ww_devoe,
	o => \hex1[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\hex1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r~0_combout\,
	devoe => ww_devoe,
	o => \hex1[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\hex1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~0_combout\,
	devoe => ww_devoe,
	o => \hex1[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\hex1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~0_combout\,
	devoe => ww_devoe,
	o => \hex1[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\hex1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~0_combout\,
	devoe => ww_devoe,
	o => \hex1[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\hex1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux21~0_combout\,
	devoe => ww_devoe,
	o => \hex1[6]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\hex2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~3_combout\,
	devoe => ww_devoe,
	o => \hex2[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\hex2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~3_combout\,
	devoe => ww_devoe,
	o => \hex2[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\hex2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~3_combout\,
	devoe => ww_devoe,
	o => \hex2[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\hex2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~3_combout\,
	devoe => ww_devoe,
	o => \hex2[3]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\hex2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~3_combout\,
	devoe => ww_devoe,
	o => \hex2[4]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\hex2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~3_combout\,
	devoe => ww_devoe,
	o => \hex2[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\hex2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux14~3_combout\,
	devoe => ww_devoe,
	o => \hex2[6]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\hex3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
	devoe => ww_devoe,
	o => \hex3[0]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\hex3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~0_combout\,
	devoe => ww_devoe,
	o => \hex3[1]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\hex3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~0_combout\,
	devoe => ww_devoe,
	o => \hex3[2]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\hex3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => \hex3[3]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\hex3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~0_combout\,
	devoe => ww_devoe,
	o => \hex3[4]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\hex3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => \hex3[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\hex3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux7~0_combout\,
	devoe => ww_devoe,
	o => \hex3[6]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\clock_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_50,
	o => \clock_50~input_o\);

-- Location: CLKCTRL_G19
\clock_50~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_50~inputclkctrl_outclk\);

-- Location: IOIBUF_X51_Y54_N29
\mensagem[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mensagem(0),
	o => \mensagem[0]~input_o\);

-- Location: IOIBUF_X46_Y54_N29
\start~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\mensagem[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mensagem(1),
	o => \mensagem[1]~input_o\);

-- Location: IOIBUF_X51_Y54_N1
\mensagem[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mensagem(2),
	o => \mensagem[2]~input_o\);

-- Location: IOIBUF_X54_Y54_N29
\mensagem[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mensagem(3),
	o => \mensagem[3]~input_o\);

-- Location: LCCOMB_X63_Y47_N16
\ger|codigo[4]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ger|codigo[4]~0_combout\ = \mensagem[0]~input_o\ $ (\mensagem[2]~input_o\ $ (\mensagem[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mensagem[0]~input_o\,
	datac => \mensagem[2]~input_o\,
	datad => \mensagem[3]~input_o\,
	combout => \ger|codigo[4]~0_combout\);

-- Location: LCCOMB_X63_Y47_N4
\ser|reg~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ser|reg~7_combout\ = (!\start~input_o\ & (\mensagem[2]~input_o\ $ (\mensagem[1]~input_o\ $ (\mensagem[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mensagem[2]~input_o\,
	datab => \start~input_o\,
	datac => \mensagem[1]~input_o\,
	datad => \mensagem[0]~input_o\,
	combout => \ser|reg~7_combout\);

-- Location: IOIBUF_X58_Y54_N29
\enable_divisor~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable_divisor,
	o => \enable_divisor~input_o\);

-- Location: LCCOMB_X63_Y50_N10
\rx|n[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|n[0]~1_combout\ = (\rx|n\(0) & ((!\ser|reg[5]~1_combout\) # (!\start~input_o\))) # (!\rx|n\(0) & ((\ser|reg[5]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datac => \rx|n\(0),
	datad => \ser|reg[5]~1_combout\,
	combout => \rx|n[0]~1_combout\);

-- Location: FF_X63_Y50_N11
\rx|n[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \rx|n[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|n\(0));

-- Location: LCCOMB_X63_Y50_N28
\rx|n[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|n[1]~2_combout\ = (\ser|reg[5]~1_combout\ & ((\rx|n\(0) $ (!\rx|n\(1))) # (!\start~input_o\))) # (!\ser|reg[5]~1_combout\ & (((\rx|n\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datab => \rx|n\(0),
	datac => \rx|n\(1),
	datad => \ser|reg[5]~1_combout\,
	combout => \rx|n[1]~2_combout\);

-- Location: FF_X63_Y50_N29
\rx|n[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \rx|n[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|n\(1));

-- Location: LCCOMB_X62_Y50_N20
\rx|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Add0~0_combout\ = \rx|n\(2) $ (((\rx|n\(0)) # (\rx|n\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx|n\(0),
	datac => \rx|n\(2),
	datad => \rx|n\(1),
	combout => \rx|Add0~0_combout\);

-- Location: LCCOMB_X63_Y50_N12
\rx|n[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|n[2]~0_combout\ = (\ser|reg[5]~1_combout\ & (((!\rx|Add0~0_combout\)) # (!\start~input_o\))) # (!\ser|reg[5]~1_combout\ & (((\rx|n\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datab => \rx|Add0~0_combout\,
	datac => \rx|n\(2),
	datad => \ser|reg[5]~1_combout\,
	combout => \rx|n[2]~0_combout\);

-- Location: FF_X63_Y50_N13
\rx|n[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \rx|n[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|n\(2));

-- Location: LCCOMB_X63_Y50_N22
\rx|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|LessThan0~0_combout\ = (\rx|n\(0)) # ((\rx|n\(1)) # (\rx|n\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|n\(0),
	datab => \rx|n\(1),
	datad => \rx|n\(2),
	combout => \rx|LessThan0~0_combout\);

-- Location: LCCOMB_X61_Y48_N8
\div|cnt[0]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|cnt[0]~25_combout\ = \div|cnt\(0) $ (VCC)
-- \div|cnt[0]~26\ = CARRY(\div|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|cnt\(0),
	datad => VCC,
	combout => \div|cnt[0]~25_combout\,
	cout => \div|cnt[0]~26\);

-- Location: FF_X61_Y48_N9
\div|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \div|cnt[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|cnt\(0));

-- Location: LCCOMB_X61_Y48_N10
\div|cnt[1]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|cnt[1]~27_combout\ = (\div|cnt\(1) & (!\div|cnt[0]~26\)) # (!\div|cnt\(1) & ((\div|cnt[0]~26\) # (GND)))
-- \div|cnt[1]~28\ = CARRY((!\div|cnt[0]~26\) # (!\div|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|cnt\(1),
	datad => VCC,
	cin => \div|cnt[0]~26\,
	combout => \div|cnt[1]~27_combout\,
	cout => \div|cnt[1]~28\);

-- Location: FF_X61_Y48_N11
\div|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \div|cnt[1]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|cnt\(1));

-- Location: LCCOMB_X61_Y48_N12
\div|cnt[2]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|cnt[2]~29_combout\ = (\div|cnt\(2) & (\div|cnt[1]~28\ $ (GND))) # (!\div|cnt\(2) & (!\div|cnt[1]~28\ & VCC))
-- \div|cnt[2]~30\ = CARRY((\div|cnt\(2) & !\div|cnt[1]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|cnt\(2),
	datad => VCC,
	cin => \div|cnt[1]~28\,
	combout => \div|cnt[2]~29_combout\,
	cout => \div|cnt[2]~30\);

-- Location: FF_X61_Y48_N13
\div|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \div|cnt[2]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|cnt\(2));

-- Location: LCCOMB_X61_Y48_N14
\div|cnt[3]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|cnt[3]~31_combout\ = (\div|cnt\(3) & (!\div|cnt[2]~30\)) # (!\div|cnt\(3) & ((\div|cnt[2]~30\) # (GND)))
-- \div|cnt[3]~32\ = CARRY((!\div|cnt[2]~30\) # (!\div|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div|cnt\(3),
	datad => VCC,
	cin => \div|cnt[2]~30\,
	combout => \div|cnt[3]~31_combout\,
	cout => \div|cnt[3]~32\);

-- Location: FF_X61_Y48_N15
\div|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \div|cnt[3]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|cnt\(3));

-- Location: LCCOMB_X61_Y48_N16
\div|cnt[4]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|cnt[4]~33_combout\ = (\div|cnt\(4) & (\div|cnt[3]~32\ $ (GND))) # (!\div|cnt\(4) & (!\div|cnt[3]~32\ & VCC))
-- \div|cnt[4]~34\ = CARRY((\div|cnt\(4) & !\div|cnt[3]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div|cnt\(4),
	datad => VCC,
	cin => \div|cnt[3]~32\,
	combout => \div|cnt[4]~33_combout\,
	cout => \div|cnt[4]~34\);

-- Location: FF_X61_Y48_N17
\div|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \div|cnt[4]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|cnt\(4));

-- Location: LCCOMB_X61_Y48_N18
\div|cnt[5]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|cnt[5]~35_combout\ = (\div|cnt\(5) & (!\div|cnt[4]~34\)) # (!\div|cnt\(5) & ((\div|cnt[4]~34\) # (GND)))
-- \div|cnt[5]~36\ = CARRY((!\div|cnt[4]~34\) # (!\div|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div|cnt\(5),
	datad => VCC,
	cin => \div|cnt[4]~34\,
	combout => \div|cnt[5]~35_combout\,
	cout => \div|cnt[5]~36\);

-- Location: FF_X61_Y48_N19
\div|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \div|cnt[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|cnt\(5));

-- Location: LCCOMB_X61_Y48_N20
\div|cnt[6]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|cnt[6]~37_combout\ = (\div|cnt\(6) & (\div|cnt[5]~36\ $ (GND))) # (!\div|cnt\(6) & (!\div|cnt[5]~36\ & VCC))
-- \div|cnt[6]~38\ = CARRY((\div|cnt\(6) & !\div|cnt[5]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div|cnt\(6),
	datad => VCC,
	cin => \div|cnt[5]~36\,
	combout => \div|cnt[6]~37_combout\,
	cout => \div|cnt[6]~38\);

-- Location: FF_X61_Y48_N21
\div|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \div|cnt[6]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|cnt\(6));

-- Location: LCCOMB_X61_Y48_N22
\div|cnt[7]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|cnt[7]~39_combout\ = (\div|cnt\(7) & (!\div|cnt[6]~38\)) # (!\div|cnt\(7) & ((\div|cnt[6]~38\) # (GND)))
-- \div|cnt[7]~40\ = CARRY((!\div|cnt[6]~38\) # (!\div|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|cnt\(7),
	datad => VCC,
	cin => \div|cnt[6]~38\,
	combout => \div|cnt[7]~39_combout\,
	cout => \div|cnt[7]~40\);

-- Location: FF_X61_Y48_N23
\div|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \div|cnt[7]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|cnt\(7));

-- Location: LCCOMB_X61_Y48_N24
\div|cnt[8]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|cnt[8]~41_combout\ = (\div|cnt\(8) & (\div|cnt[7]~40\ $ (GND))) # (!\div|cnt\(8) & (!\div|cnt[7]~40\ & VCC))
-- \div|cnt[8]~42\ = CARRY((\div|cnt\(8) & !\div|cnt[7]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div|cnt\(8),
	datad => VCC,
	cin => \div|cnt[7]~40\,
	combout => \div|cnt[8]~41_combout\,
	cout => \div|cnt[8]~42\);

-- Location: FF_X61_Y48_N25
\div|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \div|cnt[8]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|cnt\(8));

-- Location: LCCOMB_X61_Y48_N26
\div|cnt[9]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|cnt[9]~43_combout\ = (\div|cnt\(9) & (!\div|cnt[8]~42\)) # (!\div|cnt\(9) & ((\div|cnt[8]~42\) # (GND)))
-- \div|cnt[9]~44\ = CARRY((!\div|cnt[8]~42\) # (!\div|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div|cnt\(9),
	datad => VCC,
	cin => \div|cnt[8]~42\,
	combout => \div|cnt[9]~43_combout\,
	cout => \div|cnt[9]~44\);

-- Location: FF_X61_Y48_N27
\div|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \div|cnt[9]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|cnt\(9));

-- Location: LCCOMB_X61_Y48_N28
\div|cnt[10]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|cnt[10]~45_combout\ = (\div|cnt\(10) & (\div|cnt[9]~44\ $ (GND))) # (!\div|cnt\(10) & (!\div|cnt[9]~44\ & VCC))
-- \div|cnt[10]~46\ = CARRY((\div|cnt\(10) & !\div|cnt[9]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div|cnt\(10),
	datad => VCC,
	cin => \div|cnt[9]~44\,
	combout => \div|cnt[10]~45_combout\,
	cout => \div|cnt[10]~46\);

-- Location: FF_X61_Y48_N29
\div|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \div|cnt[10]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|cnt\(10));

-- Location: LCCOMB_X61_Y48_N30
\div|cnt[11]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|cnt[11]~47_combout\ = (\div|cnt\(11) & (!\div|cnt[10]~46\)) # (!\div|cnt\(11) & ((\div|cnt[10]~46\) # (GND)))
-- \div|cnt[11]~48\ = CARRY((!\div|cnt[10]~46\) # (!\div|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div|cnt\(11),
	datad => VCC,
	cin => \div|cnt[10]~46\,
	combout => \div|cnt[11]~47_combout\,
	cout => \div|cnt[11]~48\);

-- Location: LCCOMB_X62_Y48_N24
\div|cnt[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|cnt[11]~feeder_combout\ = \div|cnt[11]~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \div|cnt[11]~47_combout\,
	combout => \div|cnt[11]~feeder_combout\);

-- Location: FF_X62_Y48_N25
\div|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \div|cnt[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|cnt\(11));

-- Location: LCCOMB_X61_Y47_N0
\div|cnt[12]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|cnt[12]~49_combout\ = (\div|cnt\(12) & (\div|cnt[11]~48\ $ (GND))) # (!\div|cnt\(12) & (!\div|cnt[11]~48\ & VCC))
-- \div|cnt[12]~50\ = CARRY((\div|cnt\(12) & !\div|cnt[11]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div|cnt\(12),
	datad => VCC,
	cin => \div|cnt[11]~48\,
	combout => \div|cnt[12]~49_combout\,
	cout => \div|cnt[12]~50\);

-- Location: LCCOMB_X62_Y48_N30
\div|cnt[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|cnt[12]~feeder_combout\ = \div|cnt[12]~49_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \div|cnt[12]~49_combout\,
	combout => \div|cnt[12]~feeder_combout\);

-- Location: FF_X62_Y48_N31
\div|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \div|cnt[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|cnt\(12));

-- Location: LCCOMB_X61_Y47_N2
\div|cnt[13]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|cnt[13]~51_combout\ = (\div|cnt\(13) & (!\div|cnt[12]~50\)) # (!\div|cnt\(13) & ((\div|cnt[12]~50\) # (GND)))
-- \div|cnt[13]~52\ = CARRY((!\div|cnt[12]~50\) # (!\div|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div|cnt\(13),
	datad => VCC,
	cin => \div|cnt[12]~50\,
	combout => \div|cnt[13]~51_combout\,
	cout => \div|cnt[13]~52\);

-- Location: LCCOMB_X62_Y48_N20
\div|cnt[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|cnt[13]~feeder_combout\ = \div|cnt[13]~51_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div|cnt[13]~51_combout\,
	combout => \div|cnt[13]~feeder_combout\);

-- Location: FF_X62_Y48_N21
\div|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \div|cnt[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|cnt\(13));

-- Location: LCCOMB_X61_Y47_N4
\div|cnt[14]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|cnt[14]~53_combout\ = (\div|cnt\(14) & (\div|cnt[13]~52\ $ (GND))) # (!\div|cnt\(14) & (!\div|cnt[13]~52\ & VCC))
-- \div|cnt[14]~54\ = CARRY((\div|cnt\(14) & !\div|cnt[13]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|cnt\(14),
	datad => VCC,
	cin => \div|cnt[13]~52\,
	combout => \div|cnt[14]~53_combout\,
	cout => \div|cnt[14]~54\);

-- Location: LCCOMB_X62_Y48_N26
\div|cnt[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|cnt[14]~feeder_combout\ = \div|cnt[14]~53_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \div|cnt[14]~53_combout\,
	combout => \div|cnt[14]~feeder_combout\);

-- Location: FF_X62_Y48_N27
\div|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \div|cnt[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|cnt\(14));

-- Location: LCCOMB_X61_Y47_N6
\div|cnt[15]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|cnt[15]~55_combout\ = (\div|cnt\(15) & (!\div|cnt[14]~54\)) # (!\div|cnt\(15) & ((\div|cnt[14]~54\) # (GND)))
-- \div|cnt[15]~56\ = CARRY((!\div|cnt[14]~54\) # (!\div|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|cnt\(15),
	datad => VCC,
	cin => \div|cnt[14]~54\,
	combout => \div|cnt[15]~55_combout\,
	cout => \div|cnt[15]~56\);

-- Location: FF_X61_Y47_N7
\div|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \div|cnt[15]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|cnt\(15));

-- Location: LCCOMB_X61_Y47_N8
\div|cnt[16]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|cnt[16]~57_combout\ = (\div|cnt\(16) & (\div|cnt[15]~56\ $ (GND))) # (!\div|cnt\(16) & (!\div|cnt[15]~56\ & VCC))
-- \div|cnt[16]~58\ = CARRY((\div|cnt\(16) & !\div|cnt[15]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div|cnt\(16),
	datad => VCC,
	cin => \div|cnt[15]~56\,
	combout => \div|cnt[16]~57_combout\,
	cout => \div|cnt[16]~58\);

-- Location: FF_X61_Y47_N9
\div|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \div|cnt[16]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|cnt\(16));

-- Location: LCCOMB_X61_Y47_N10
\div|cnt[17]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|cnt[17]~59_combout\ = (\div|cnt\(17) & (!\div|cnt[16]~58\)) # (!\div|cnt\(17) & ((\div|cnt[16]~58\) # (GND)))
-- \div|cnt[17]~60\ = CARRY((!\div|cnt[16]~58\) # (!\div|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|cnt\(17),
	datad => VCC,
	cin => \div|cnt[16]~58\,
	combout => \div|cnt[17]~59_combout\,
	cout => \div|cnt[17]~60\);

-- Location: FF_X61_Y47_N11
\div|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \div|cnt[17]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|cnt\(17));

-- Location: LCCOMB_X61_Y47_N12
\div|cnt[18]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|cnt[18]~61_combout\ = (\div|cnt\(18) & (\div|cnt[17]~60\ $ (GND))) # (!\div|cnt\(18) & (!\div|cnt[17]~60\ & VCC))
-- \div|cnt[18]~62\ = CARRY((\div|cnt\(18) & !\div|cnt[17]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|cnt\(18),
	datad => VCC,
	cin => \div|cnt[17]~60\,
	combout => \div|cnt[18]~61_combout\,
	cout => \div|cnt[18]~62\);

-- Location: FF_X61_Y47_N13
\div|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \div|cnt[18]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|cnt\(18));

-- Location: LCCOMB_X61_Y47_N14
\div|cnt[19]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|cnt[19]~63_combout\ = (\div|cnt\(19) & (!\div|cnt[18]~62\)) # (!\div|cnt\(19) & ((\div|cnt[18]~62\) # (GND)))
-- \div|cnt[19]~64\ = CARRY((!\div|cnt[18]~62\) # (!\div|cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div|cnt\(19),
	datad => VCC,
	cin => \div|cnt[18]~62\,
	combout => \div|cnt[19]~63_combout\,
	cout => \div|cnt[19]~64\);

-- Location: FF_X61_Y47_N15
\div|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \div|cnt[19]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|cnt\(19));

-- Location: LCCOMB_X61_Y47_N16
\div|cnt[20]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|cnt[20]~65_combout\ = (\div|cnt\(20) & (\div|cnt[19]~64\ $ (GND))) # (!\div|cnt\(20) & (!\div|cnt[19]~64\ & VCC))
-- \div|cnt[20]~66\ = CARRY((\div|cnt\(20) & !\div|cnt[19]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div|cnt\(20),
	datad => VCC,
	cin => \div|cnt[19]~64\,
	combout => \div|cnt[20]~65_combout\,
	cout => \div|cnt[20]~66\);

-- Location: FF_X61_Y47_N17
\div|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \div|cnt[20]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|cnt\(20));

-- Location: LCCOMB_X61_Y47_N18
\div|cnt[21]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|cnt[21]~67_combout\ = (\div|cnt\(21) & (!\div|cnt[20]~66\)) # (!\div|cnt\(21) & ((\div|cnt[20]~66\) # (GND)))
-- \div|cnt[21]~68\ = CARRY((!\div|cnt[20]~66\) # (!\div|cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div|cnt\(21),
	datad => VCC,
	cin => \div|cnt[20]~66\,
	combout => \div|cnt[21]~67_combout\,
	cout => \div|cnt[21]~68\);

-- Location: FF_X61_Y47_N19
\div|cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \div|cnt[21]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|cnt\(21));

-- Location: LCCOMB_X61_Y47_N20
\div|cnt[22]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|cnt[22]~69_combout\ = (\div|cnt\(22) & (\div|cnt[21]~68\ $ (GND))) # (!\div|cnt\(22) & (!\div|cnt[21]~68\ & VCC))
-- \div|cnt[22]~70\ = CARRY((\div|cnt\(22) & !\div|cnt[21]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|cnt\(22),
	datad => VCC,
	cin => \div|cnt[21]~68\,
	combout => \div|cnt[22]~69_combout\,
	cout => \div|cnt[22]~70\);

-- Location: FF_X61_Y47_N21
\div|cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \div|cnt[22]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|cnt\(22));

-- Location: LCCOMB_X61_Y47_N22
\div|cnt[23]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|cnt[23]~71_combout\ = (\div|cnt\(23) & (!\div|cnt[22]~70\)) # (!\div|cnt\(23) & ((\div|cnt[22]~70\) # (GND)))
-- \div|cnt[23]~72\ = CARRY((!\div|cnt[22]~70\) # (!\div|cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|cnt\(23),
	datad => VCC,
	cin => \div|cnt[22]~70\,
	combout => \div|cnt[23]~71_combout\,
	cout => \div|cnt[23]~72\);

-- Location: FF_X61_Y47_N23
\div|cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \div|cnt[23]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|cnt\(23));

-- Location: LCCOMB_X61_Y47_N28
\div|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|Equal0~6_combout\ = (\div|cnt\(22) & (\div|cnt\(20) & (\div|cnt\(19) & \div|cnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|cnt\(22),
	datab => \div|cnt\(20),
	datac => \div|cnt\(19),
	datad => \div|cnt\(21),
	combout => \div|Equal0~6_combout\);

-- Location: LCCOMB_X61_Y47_N26
\div|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|Equal0~5_combout\ = (\div|cnt\(17) & (\div|cnt\(15) & (\div|cnt\(16) & \div|cnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|cnt\(17),
	datab => \div|cnt\(15),
	datac => \div|cnt\(16),
	datad => \div|cnt\(18),
	combout => \div|Equal0~5_combout\);

-- Location: LCCOMB_X61_Y48_N6
\div|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|Equal0~1_combout\ = (\div|cnt\(3) & (\div|cnt\(4) & (\div|cnt\(5) & \div|cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|cnt\(3),
	datab => \div|cnt\(4),
	datac => \div|cnt\(5),
	datad => \div|cnt\(6),
	combout => \div|Equal0~1_combout\);

-- Location: LCCOMB_X61_Y48_N0
\div|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|Equal0~2_combout\ = (\div|cnt\(7) & (\div|cnt\(10) & (\div|cnt\(9) & \div|cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|cnt\(7),
	datab => \div|cnt\(10),
	datac => \div|cnt\(9),
	datad => \div|cnt\(8),
	combout => \div|Equal0~2_combout\);

-- Location: LCCOMB_X61_Y47_N24
\div|cnt[24]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|cnt[24]~73_combout\ = \div|cnt[23]~72\ $ (!\div|cnt\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \div|cnt\(24),
	cin => \div|cnt[23]~72\,
	combout => \div|cnt[24]~73_combout\);

-- Location: FF_X61_Y47_N25
\div|cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \div|cnt[24]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|cnt\(24));

-- Location: LCCOMB_X61_Y48_N4
\div|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|Equal0~0_combout\ = (\div|cnt\(2) & (\div|cnt\(0) & (\div|cnt\(1) & \div|cnt\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|cnt\(2),
	datab => \div|cnt\(0),
	datac => \div|cnt\(1),
	datad => \div|cnt\(24),
	combout => \div|Equal0~0_combout\);

-- Location: LCCOMB_X62_Y48_N16
\div|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|Equal0~3_combout\ = (\div|cnt\(12) & (\div|cnt\(11) & (\div|cnt\(14) & \div|cnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|cnt\(12),
	datab => \div|cnt\(11),
	datac => \div|cnt\(14),
	datad => \div|cnt\(13),
	combout => \div|Equal0~3_combout\);

-- Location: LCCOMB_X61_Y48_N2
\div|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|Equal0~4_combout\ = (\div|Equal0~1_combout\ & (\div|Equal0~2_combout\ & (\div|Equal0~0_combout\ & \div|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|Equal0~1_combout\,
	datab => \div|Equal0~2_combout\,
	datac => \div|Equal0~0_combout\,
	datad => \div|Equal0~3_combout\,
	combout => \div|Equal0~4_combout\);

-- Location: LCCOMB_X62_Y47_N20
\div|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|Equal0~7_combout\ = (\div|cnt\(23) & (\div|Equal0~6_combout\ & (\div|Equal0~5_combout\ & \div|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|cnt\(23),
	datab => \div|Equal0~6_combout\,
	datac => \div|Equal0~5_combout\,
	datad => \div|Equal0~4_combout\,
	combout => \div|Equal0~7_combout\);

-- Location: LCCOMB_X62_Y47_N18
\ser|reg[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ser|reg[5]~1_combout\ = ((\rx|LessThan0~0_combout\ & ((\div|Equal0~7_combout\) # (!\enable_divisor~input_o\)))) # (!\start~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datab => \enable_divisor~input_o\,
	datac => \rx|LessThan0~0_combout\,
	datad => \div|Equal0~7_combout\,
	combout => \ser|reg[5]~1_combout\);

-- Location: FF_X63_Y47_N5
\ser|reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \ser|reg~7_combout\,
	ena => \ser|reg[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser|reg\(6));

-- Location: LCCOMB_X63_Y47_N18
\ger|codigo[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ger|codigo\(5) = \mensagem[0]~input_o\ $ (\mensagem[1]~input_o\ $ (\mensagem[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mensagem[0]~input_o\,
	datac => \mensagem[1]~input_o\,
	datad => \mensagem[3]~input_o\,
	combout => \ger|codigo\(5));

-- Location: LCCOMB_X63_Y47_N26
\ser|reg~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ser|reg~6_combout\ = (\start~input_o\ & (\ser|reg\(6))) # (!\start~input_o\ & ((\ger|codigo\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start~input_o\,
	datac => \ser|reg\(6),
	datad => \ger|codigo\(5),
	combout => \ser|reg~6_combout\);

-- Location: FF_X63_Y47_N27
\ser|reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \ser|reg~6_combout\,
	ena => \ser|reg[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser|reg\(5));

-- Location: LCCOMB_X62_Y47_N14
\ser|reg~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ser|reg~5_combout\ = (\start~input_o\ & ((\ser|reg\(5)))) # (!\start~input_o\ & (\ger|codigo[4]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ger|codigo[4]~0_combout\,
	datac => \start~input_o\,
	datad => \ser|reg\(5),
	combout => \ser|reg~5_combout\);

-- Location: FF_X62_Y47_N15
\ser|reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \ser|reg~5_combout\,
	ena => \ser|reg[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser|reg\(4));

-- Location: LCCOMB_X63_Y47_N12
\ser|reg~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ser|reg~4_combout\ = (\start~input_o\ & ((\ser|reg\(4)))) # (!\start~input_o\ & (\mensagem[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mensagem[3]~input_o\,
	datab => \start~input_o\,
	datad => \ser|reg\(4),
	combout => \ser|reg~4_combout\);

-- Location: FF_X63_Y47_N13
\ser|reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \ser|reg~4_combout\,
	ena => \ser|reg[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser|reg\(3));

-- Location: LCCOMB_X63_Y47_N2
\ser|reg~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ser|reg~3_combout\ = (\start~input_o\ & ((\ser|reg\(3)))) # (!\start~input_o\ & (\mensagem[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start~input_o\,
	datac => \mensagem[2]~input_o\,
	datad => \ser|reg\(3),
	combout => \ser|reg~3_combout\);

-- Location: FF_X63_Y47_N3
\ser|reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \ser|reg~3_combout\,
	ena => \ser|reg[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser|reg\(2));

-- Location: LCCOMB_X62_Y47_N22
\ser|reg~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ser|reg~2_combout\ = (\start~input_o\ & ((\ser|reg\(2)))) # (!\start~input_o\ & (\mensagem[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mensagem[1]~input_o\,
	datac => \start~input_o\,
	datad => \ser|reg\(2),
	combout => \ser|reg~2_combout\);

-- Location: FF_X62_Y47_N23
\ser|reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \ser|reg~2_combout\,
	ena => \ser|reg[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser|reg\(1));

-- Location: LCCOMB_X63_Y47_N28
\ser|reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ser|reg~0_combout\ = (\start~input_o\ & ((\ser|reg\(1)))) # (!\start~input_o\ & (\mensagem[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mensagem[0]~input_o\,
	datab => \start~input_o\,
	datad => \ser|reg\(1),
	combout => \ser|reg~0_combout\);

-- Location: FF_X63_Y47_N29
\ser|reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \ser|reg~0_combout\,
	ena => \ser|reg[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ser|reg\(0));

-- Location: IOIBUF_X54_Y54_N22
\erro_pos[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_erro_pos(0),
	o => \erro_pos[0]~input_o\);

-- Location: IOIBUF_X49_Y54_N1
\erro_pos[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_erro_pos(1),
	o => \erro_pos[1]~input_o\);

-- Location: LCCOMB_X63_Y50_N26
\Mux5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (!\erro_pos[0]~input_o\ & \erro_pos[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \erro_pos[0]~input_o\,
	datac => \erro_pos[1]~input_o\,
	combout => \Mux5~3_combout\);

-- Location: IOIBUF_X54_Y54_N15
\erro_pos[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_erro_pos(2),
	o => \erro_pos[2]~input_o\);

-- Location: LCCOMB_X63_Y47_N10
\inj|ser|reg~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inj|ser|reg~8_combout\ = (\erro_pos[2]~input_o\ & (!\start~input_o\ & (\erro_pos[1]~input_o\ & \erro_pos[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \erro_pos[2]~input_o\,
	datab => \start~input_o\,
	datac => \erro_pos[1]~input_o\,
	datad => \erro_pos[0]~input_o\,
	combout => \inj|ser|reg~8_combout\);

-- Location: FF_X63_Y47_N11
\inj|ser|reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inj|ser|reg~8_combout\,
	ena => \ser|reg[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inj|ser|reg\(6));

-- Location: LCCOMB_X62_Y47_N30
\inj|ser|reg~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inj|ser|reg~7_combout\ = (\start~input_o\ & (\inj|ser|reg\(6))) # (!\start~input_o\ & (((\erro_pos[2]~input_o\ & \Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datab => \inj|ser|reg\(6),
	datac => \erro_pos[2]~input_o\,
	datad => \Mux5~3_combout\,
	combout => \inj|ser|reg~7_combout\);

-- Location: FF_X62_Y47_N31
\inj|ser|reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inj|ser|reg~7_combout\,
	ena => \ser|reg[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inj|ser|reg\(5));

-- Location: LCCOMB_X63_Y50_N6
\inj|ser|reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inj|ser|reg~0_combout\ = (!\erro_pos[1]~input_o\ & (\erro_pos[0]~input_o\ & !\start~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \erro_pos[1]~input_o\,
	datab => \erro_pos[0]~input_o\,
	datac => \start~input_o\,
	combout => \inj|ser|reg~0_combout\);

-- Location: LCCOMB_X62_Y47_N28
\inj|ser|reg~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inj|ser|reg~6_combout\ = (\start~input_o\ & ((\inj|ser|reg\(5)) # ((\erro_pos[2]~input_o\ & \inj|ser|reg~0_combout\)))) # (!\start~input_o\ & (\erro_pos[2]~input_o\ & ((\inj|ser|reg~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datab => \erro_pos[2]~input_o\,
	datac => \inj|ser|reg\(5),
	datad => \inj|ser|reg~0_combout\,
	combout => \inj|ser|reg~6_combout\);

-- Location: FF_X62_Y47_N29
\inj|ser|reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inj|ser|reg~6_combout\,
	ena => \ser|reg[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inj|ser|reg\(4));

-- Location: LCCOMB_X63_Y50_N18
\Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!\erro_pos[0]~input_o\ & (!\erro_pos[1]~input_o\ & \erro_pos[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \erro_pos[0]~input_o\,
	datac => \erro_pos[1]~input_o\,
	datad => \erro_pos[2]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X62_Y47_N12
\inj|ser|reg~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inj|ser|reg~5_combout\ = (\start~input_o\ & (\inj|ser|reg\(4))) # (!\start~input_o\ & ((\Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inj|ser|reg\(4),
	datac => \start~input_o\,
	datad => \Mux3~0_combout\,
	combout => \inj|ser|reg~5_combout\);

-- Location: FF_X62_Y47_N13
\inj|ser|reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inj|ser|reg~5_combout\,
	ena => \ser|reg[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inj|ser|reg\(3));

-- Location: LCCOMB_X63_Y50_N24
\inj|ser|reg~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inj|ser|reg~3_combout\ = (\erro_pos[1]~input_o\ & (\erro_pos[0]~input_o\ & (!\start~input_o\ & !\erro_pos[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \erro_pos[1]~input_o\,
	datab => \erro_pos[0]~input_o\,
	datac => \start~input_o\,
	datad => \erro_pos[2]~input_o\,
	combout => \inj|ser|reg~3_combout\);

-- Location: LCCOMB_X62_Y47_N26
\inj|ser|reg~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inj|ser|reg~4_combout\ = (\inj|ser|reg~3_combout\) # ((\inj|ser|reg\(3) & \start~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inj|ser|reg\(3),
	datac => \start~input_o\,
	datad => \inj|ser|reg~3_combout\,
	combout => \inj|ser|reg~4_combout\);

-- Location: FF_X62_Y47_N27
\inj|ser|reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inj|ser|reg~4_combout\,
	ena => \ser|reg[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inj|ser|reg\(2));

-- Location: LCCOMB_X62_Y47_N0
\inj|ser|reg~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inj|ser|reg~2_combout\ = (\start~input_o\ & (((\inj|ser|reg\(2))))) # (!\start~input_o\ & (\Mux5~3_combout\ & (!\erro_pos[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datab => \Mux5~3_combout\,
	datac => \erro_pos[2]~input_o\,
	datad => \inj|ser|reg\(2),
	combout => \inj|ser|reg~2_combout\);

-- Location: FF_X62_Y47_N1
\inj|ser|reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inj|ser|reg~2_combout\,
	ena => \ser|reg[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inj|ser|reg\(1));

-- Location: LCCOMB_X62_Y47_N24
\inj|ser|reg~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inj|ser|reg~1_combout\ = (\start~input_o\ & ((\inj|ser|reg\(1)) # ((!\erro_pos[2]~input_o\ & \inj|ser|reg~0_combout\)))) # (!\start~input_o\ & (((!\erro_pos[2]~input_o\ & \inj|ser|reg~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datab => \inj|ser|reg\(1),
	datac => \erro_pos[2]~input_o\,
	datad => \inj|ser|reg~0_combout\,
	combout => \inj|ser|reg~1_combout\);

-- Location: FF_X62_Y47_N25
\inj|ser|reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \inj|ser|reg~1_combout\,
	ena => \ser|reg[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inj|ser|reg\(0));

-- Location: LCCOMB_X62_Y47_N8
\des|reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \des|reg~0_combout\ = (\start~input_o\ & (\inj|ser|reg\(0) $ (\ser|reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inj|ser|reg\(0),
	datac => \start~input_o\,
	datad => \ser|reg\(0),
	combout => \des|reg~0_combout\);

-- Location: FF_X62_Y47_N9
\des|reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \des|reg~0_combout\,
	ena => \ser|reg[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \des|reg\(6));

-- Location: LCCOMB_X62_Y47_N6
\des|reg~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \des|reg~4_combout\ = (\des|reg\(6) & \start~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \des|reg\(6),
	datac => \start~input_o\,
	combout => \des|reg~4_combout\);

-- Location: FF_X62_Y47_N7
\des|reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \des|reg~4_combout\,
	ena => \ser|reg[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \des|reg\(5));

-- Location: LCCOMB_X62_Y47_N10
\des|reg~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \des|reg~6_combout\ = (\start~input_o\ & \des|reg\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \start~input_o\,
	datad => \des|reg\(5),
	combout => \des|reg~6_combout\);

-- Location: FF_X62_Y47_N11
\des|reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \des|reg~6_combout\,
	ena => \ser|reg[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \des|reg\(4));

-- Location: LCCOMB_X62_Y47_N16
\des|reg~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \des|reg~5_combout\ = (\start~input_o\ & \des|reg\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \start~input_o\,
	datad => \des|reg\(4),
	combout => \des|reg~5_combout\);

-- Location: FF_X62_Y47_N17
\des|reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \des|reg~5_combout\,
	ena => \ser|reg[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \des|reg\(3));

-- Location: LCCOMB_X62_Y47_N4
\des|reg~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \des|reg~3_combout\ = (\start~input_o\ & \des|reg\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \start~input_o\,
	datad => \des|reg\(3),
	combout => \des|reg~3_combout\);

-- Location: FF_X62_Y47_N5
\des|reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \des|reg~3_combout\,
	ena => \ser|reg[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \des|reg\(2));

-- Location: LCCOMB_X62_Y50_N30
\des|paralelo[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \des|paralelo[2]~0_combout\ = (\des|reg\(2) & (!\rx|n\(2) & (!\rx|n\(0) & !\rx|n\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \des|reg\(2),
	datab => \rx|n\(2),
	datac => \rx|n\(0),
	datad => \rx|n\(1),
	combout => \des|paralelo[2]~0_combout\);

-- Location: LCCOMB_X62_Y47_N2
\des|reg~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \des|reg~1_combout\ = (\des|reg\(2) & \start~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \des|reg\(2),
	datac => \start~input_o\,
	combout => \des|reg~1_combout\);

-- Location: FF_X62_Y47_N3
\des|reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \des|reg~1_combout\,
	ena => \ser|reg[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \des|reg\(1));

-- Location: LCCOMB_X63_Y47_N6
\des|reg~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \des|reg~2_combout\ = (\start~input_o\ & \des|reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start~input_o\,
	datad => \des|reg\(1),
	combout => \des|reg~2_combout\);

-- Location: FF_X63_Y47_N7
\des|reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \des|reg~2_combout\,
	ena => \ser|reg[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \des|reg\(0));

-- Location: LCCOMB_X62_Y50_N4
\ver|s~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ver|s~0_combout\ = (!\rx|LessThan0~0_combout\ & (\des|reg\(0) $ (\des|reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \des|reg\(0),
	datab => \rx|LessThan0~0_combout\,
	datac => \des|reg\(1),
	combout => \ver|s~0_combout\);

-- Location: LCCOMB_X62_Y50_N0
\ver|sindrome[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ver|sindrome[2]~0_combout\ = \des|paralelo[2]~0_combout\ $ (\ver|s~0_combout\ $ (((\des|reg\(6) & !\rx|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \des|paralelo[2]~0_combout\,
	datab => \ver|s~0_combout\,
	datac => \des|reg\(6),
	datad => \rx|LessThan0~0_combout\,
	combout => \ver|sindrome[2]~0_combout\);

-- Location: LCCOMB_X62_Y50_N2
\des|paralelo[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \des|paralelo[3]~1_combout\ = (\des|reg\(3) & (!\rx|n\(2) & (!\rx|n\(0) & !\rx|n\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \des|reg\(3),
	datab => \rx|n\(2),
	datac => \rx|n\(0),
	datad => \rx|n\(1),
	combout => \des|paralelo[3]~1_combout\);

-- Location: LCCOMB_X62_Y50_N16
\ver|sindrome[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ver|sindrome[1]~1_combout\ = \des|paralelo[3]~1_combout\ $ (\ver|s~0_combout\ $ (((\des|reg\(5) & !\rx|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \des|reg\(5),
	datab => \des|paralelo[3]~1_combout\,
	datac => \ver|s~0_combout\,
	datad => \rx|LessThan0~0_combout\,
	combout => \ver|sindrome[1]~1_combout\);

-- Location: LCCOMB_X62_Y50_N28
\des|paralelo[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \des|paralelo[4]~3_combout\ = (\des|reg\(4) & (!\rx|n\(2) & (!\rx|n\(0) & !\rx|n\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \des|reg\(4),
	datab => \rx|n\(2),
	datac => \rx|n\(0),
	datad => \rx|n\(1),
	combout => \des|paralelo[4]~3_combout\);

-- Location: LCCOMB_X62_Y50_N22
\des|paralelo[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \des|paralelo[0]~2_combout\ = (\des|reg\(0) & (!\rx|n\(0) & (!\rx|n\(2) & !\rx|n\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \des|reg\(0),
	datab => \rx|n\(0),
	datac => \rx|n\(2),
	datad => \rx|n\(1),
	combout => \des|paralelo[0]~2_combout\);

-- Location: LCCOMB_X66_Y50_N16
\ver|sindrome[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ver|sindrome[0]~2_combout\ = \des|paralelo[4]~3_combout\ $ (\des|paralelo[3]~1_combout\ $ (\des|paralelo[0]~2_combout\ $ (\des|paralelo[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \des|paralelo[4]~3_combout\,
	datab => \des|paralelo[3]~1_combout\,
	datac => \des|paralelo[0]~2_combout\,
	datad => \des|paralelo[2]~0_combout\,
	combout => \ver|sindrome[0]~2_combout\);

-- Location: LCCOMB_X65_Y50_N0
\ver|erro~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ver|erro~0_combout\ = (\ver|sindrome[2]~0_combout\) # ((\ver|sindrome[1]~1_combout\) # (\ver|sindrome[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ver|sindrome[2]~0_combout\,
	datac => \ver|sindrome[1]~1_combout\,
	datad => \ver|sindrome[0]~2_combout\,
	combout => \ver|erro~0_combout\);

-- Location: LCCOMB_X62_Y51_N24
\inj|saida\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inj|saida~combout\ = \inj|ser|reg\(0) $ (\ser|reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inj|ser|reg\(0),
	datad => \ser|reg\(0),
	combout => \inj|saida~combout\);

-- Location: IOIBUF_X56_Y54_N1
\visor[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_visor(0),
	o => \visor[0]~input_o\);

-- Location: IOIBUF_X69_Y54_N1
\visor[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_visor(1),
	o => \visor[1]~input_o\);

-- Location: LCCOMB_X63_Y50_N0
\Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (!\erro_pos[1]~input_o\ & (\erro_pos[0]~input_o\ & (\visor[1]~input_o\ & !\erro_pos[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \erro_pos[1]~input_o\,
	datab => \erro_pos[0]~input_o\,
	datac => \visor[1]~input_o\,
	datad => \erro_pos[2]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X64_Y50_N4
\Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux6~0_combout\) # ((\mensagem[0]~input_o\ & (!\visor[0]~input_o\ & !\visor[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datab => \mensagem[0]~input_o\,
	datac => \visor[0]~input_o\,
	datad => \visor[1]~input_o\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X64_Y50_N26
\Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\Mux6~1_combout\) # ((\des|paralelo[0]~2_combout\ & (\visor[0]~input_o\ & !\visor[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \des|paralelo[0]~2_combout\,
	datab => \visor[0]~input_o\,
	datac => \Mux6~1_combout\,
	datad => \visor[1]~input_o\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X62_Y50_N6
\des|paralelo[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \des|paralelo[1]~4_combout\ = (!\rx|n\(2) & (!\rx|n\(1) & (!\rx|n\(0) & \des|reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|n\(2),
	datab => \rx|n\(1),
	datac => \rx|n\(0),
	datad => \des|reg\(1),
	combout => \des|paralelo[1]~4_combout\);

-- Location: LCCOMB_X63_Y50_N14
\Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\erro_pos[1]~input_o\ & (!\erro_pos[0]~input_o\ & (\visor[1]~input_o\ & !\erro_pos[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \erro_pos[1]~input_o\,
	datab => \erro_pos[0]~input_o\,
	datac => \visor[1]~input_o\,
	datad => \erro_pos[2]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X64_Y50_N20
\Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux5~0_combout\) # ((!\visor[1]~input_o\ & (!\visor[0]~input_o\ & \mensagem[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \visor[1]~input_o\,
	datac => \visor[0]~input_o\,
	datad => \mensagem[1]~input_o\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X64_Y50_N22
\Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\Mux5~1_combout\) # ((\des|paralelo[1]~4_combout\ & (\visor[0]~input_o\ & !\visor[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \des|paralelo[1]~4_combout\,
	datab => \Mux5~1_combout\,
	datac => \visor[0]~input_o\,
	datad => \visor[1]~input_o\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X63_Y50_N4
\Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\erro_pos[1]~input_o\ & (\erro_pos[0]~input_o\ & (\visor[1]~input_o\ & !\erro_pos[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \erro_pos[1]~input_o\,
	datab => \erro_pos[0]~input_o\,
	datac => \visor[1]~input_o\,
	datad => \erro_pos[2]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X64_Y50_N24
\Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux4~0_combout\) # ((\mensagem[2]~input_o\ & (!\visor[0]~input_o\ & !\visor[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mensagem[2]~input_o\,
	datab => \visor[0]~input_o\,
	datac => \Mux4~0_combout\,
	datad => \visor[1]~input_o\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X64_Y50_N14
\Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\Mux4~1_combout\) # ((\des|paralelo[2]~0_combout\ & (\visor[0]~input_o\ & !\visor[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \des|paralelo[2]~0_combout\,
	datab => \Mux4~1_combout\,
	datac => \visor[0]~input_o\,
	datad => \visor[1]~input_o\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X64_Y50_N12
\Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\visor[1]~input_o\ & (\Mux3~0_combout\)) # (!\visor[1]~input_o\ & (((\mensagem[3]~input_o\ & !\visor[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \mensagem[3]~input_o\,
	datac => \visor[0]~input_o\,
	datad => \visor[1]~input_o\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X64_Y50_N18
\Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\Mux3~1_combout\) # ((\visor[0]~input_o\ & (\des|paralelo[3]~1_combout\ & !\visor[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \visor[0]~input_o\,
	datac => \des|paralelo[3]~1_combout\,
	datad => \visor[1]~input_o\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X62_Y50_N12
\Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!\visor[1]~input_o\ & ((\visor[0]~input_o\ & ((\des|paralelo[4]~3_combout\))) # (!\visor[0]~input_o\ & (\ger|codigo[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \visor[0]~input_o\,
	datab => \ger|codigo[4]~0_combout\,
	datac => \des|paralelo[4]~3_combout\,
	datad => \visor[1]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X63_Y50_N20
\Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\visor[1]~input_o\ & \erro_pos[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \visor[1]~input_o\,
	datad => \erro_pos[2]~input_o\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X63_Y50_N30
\Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\Mux2~0_combout\) # ((\erro_pos[0]~input_o\ & (!\erro_pos[1]~input_o\ & \Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \erro_pos[0]~input_o\,
	datac => \erro_pos[1]~input_o\,
	datad => \Mux2~1_combout\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X62_Y50_N14
\des|paralelo[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \des|paralelo[5]~5_combout\ = (\des|reg\(5) & (!\rx|n\(0) & (!\rx|n\(2) & !\rx|n\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \des|reg\(5),
	datab => \rx|n\(0),
	datac => \rx|n\(2),
	datad => \rx|n\(1),
	combout => \des|paralelo[5]~5_combout\);

-- Location: LCCOMB_X63_Y50_N16
\Mux1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (!\visor[1]~input_o\ & ((\visor[0]~input_o\ & (\des|paralelo[5]~5_combout\)) # (!\visor[0]~input_o\ & ((\ger|codigo\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \des|paralelo[5]~5_combout\,
	datab => \visor[0]~input_o\,
	datac => \visor[1]~input_o\,
	datad => \ger|codigo\(5),
	combout => \Mux1~4_combout\);

-- Location: LCCOMB_X63_Y50_N2
\Mux1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = (\Mux1~4_combout\) # ((\erro_pos[1]~input_o\ & (!\erro_pos[0]~input_o\ & \Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \erro_pos[1]~input_o\,
	datab => \Mux1~4_combout\,
	datac => \erro_pos[0]~input_o\,
	datad => \Mux2~1_combout\,
	combout => \Mux1~5_combout\);

-- Location: LCCOMB_X63_Y47_N0
\ger|codigo[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ger|codigo\(6) = \mensagem[1]~input_o\ $ (\mensagem[2]~input_o\ $ (\mensagem[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mensagem[1]~input_o\,
	datac => \mensagem[2]~input_o\,
	datad => \mensagem[0]~input_o\,
	combout => \ger|codigo\(6));

-- Location: LCCOMB_X62_Y50_N8
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\visor[0]~input_o\ & (!\rx|LessThan0~0_combout\ & (\des|reg\(6) & !\visor[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \visor[0]~input_o\,
	datab => \rx|LessThan0~0_combout\,
	datac => \des|reg\(6),
	datad => \visor[1]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X62_Y50_N18
\Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux0~0_combout\) # ((!\visor[0]~input_o\ & (\ger|codigo\(6) & !\visor[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \visor[0]~input_o\,
	datab => \ger|codigo\(6),
	datac => \Mux0~0_combout\,
	datad => \visor[1]~input_o\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X63_Y50_N8
\Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\Mux0~1_combout\) # ((\erro_pos[1]~input_o\ & (\erro_pos[0]~input_o\ & \Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \erro_pos[1]~input_o\,
	datab => \Mux0~1_combout\,
	datac => \erro_pos[0]~input_o\,
	datad => \Mux2~1_combout\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X66_Y50_N12
\cor|mensagem[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cor|mensagem\(3) = \des|paralelo[3]~1_combout\ $ (((\ver|sindrome[0]~2_combout\ & (!\ver|sindrome[2]~0_combout\ & \ver|sindrome[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ver|sindrome[0]~2_combout\,
	datab => \ver|sindrome[2]~0_combout\,
	datac => \des|paralelo[3]~1_combout\,
	datad => \ver|sindrome[1]~1_combout\,
	combout => \cor|mensagem\(3));

-- Location: LCCOMB_X66_Y50_N30
\cor|mensagem[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cor|mensagem\(0) = \des|paralelo[0]~2_combout\ $ (((\ver|sindrome[1]~1_combout\ & (\ver|sindrome[2]~0_combout\ & \ver|sindrome[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ver|sindrome[1]~1_combout\,
	datab => \ver|sindrome[2]~0_combout\,
	datac => \ver|sindrome[0]~2_combout\,
	datad => \des|paralelo[0]~2_combout\,
	combout => \cor|mensagem\(0));

-- Location: LCCOMB_X66_Y50_N26
\cor|mensagem[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cor|mensagem\(2) = \des|paralelo[2]~0_combout\ $ (((\ver|sindrome[0]~2_combout\ & (\ver|sindrome[2]~0_combout\ & !\ver|sindrome[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ver|sindrome[0]~2_combout\,
	datab => \ver|sindrome[2]~0_combout\,
	datac => \ver|sindrome[1]~1_combout\,
	datad => \des|paralelo[2]~0_combout\,
	combout => \cor|mensagem\(2));

-- Location: LCCOMB_X66_Y50_N20
\cor|mensagem[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cor|mensagem\(1) = \des|paralelo[1]~4_combout\ $ (((\ver|sindrome[1]~1_combout\ & (\ver|sindrome[2]~0_combout\ & !\ver|sindrome[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ver|sindrome[1]~1_combout\,
	datab => \ver|sindrome[2]~0_combout\,
	datac => \ver|sindrome[0]~2_combout\,
	datad => \des|paralelo[1]~4_combout\,
	combout => \cor|mensagem\(1));

-- Location: LCCOMB_X66_Y50_N14
\Mux34~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux34~2_combout\ = (\cor|mensagem\(3) & (\cor|mensagem\(0) & (\cor|mensagem\(2) $ (\cor|mensagem\(1))))) # (!\cor|mensagem\(3) & (!\cor|mensagem\(1) & (\cor|mensagem\(0) $ (\cor|mensagem\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|mensagem\(3),
	datab => \cor|mensagem\(0),
	datac => \cor|mensagem\(2),
	datad => \cor|mensagem\(1),
	combout => \Mux34~2_combout\);

-- Location: LCCOMB_X62_Y50_N26
\Mux34~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux34~3_combout\ = (\Mux34~2_combout\) # ((\rx|n\(0)) # ((\rx|n\(2)) # (\rx|n\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~2_combout\,
	datab => \rx|n\(0),
	datac => \rx|n\(2),
	datad => \rx|n\(1),
	combout => \Mux34~3_combout\);

-- Location: LCCOMB_X66_Y50_N4
\Mux33~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux33~2_combout\ = (\cor|mensagem\(3) & ((\cor|mensagem\(0) & ((\cor|mensagem\(1)))) # (!\cor|mensagem\(0) & (\cor|mensagem\(2))))) # (!\cor|mensagem\(3) & (\cor|mensagem\(2) & (\cor|mensagem\(0) $ (\cor|mensagem\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|mensagem\(3),
	datab => \cor|mensagem\(0),
	datac => \cor|mensagem\(2),
	datad => \cor|mensagem\(1),
	combout => \Mux33~2_combout\);

-- Location: LCCOMB_X67_Y50_N28
\Mux33~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux33~3_combout\ = (\rx|n\(1)) # ((\Mux33~2_combout\) # ((\rx|n\(2)) # (\rx|n\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|n\(1),
	datab => \Mux33~2_combout\,
	datac => \rx|n\(2),
	datad => \rx|n\(0),
	combout => \Mux33~3_combout\);

-- Location: LCCOMB_X66_Y50_N10
\Mux32~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux32~2_combout\ = (\cor|mensagem\(3) & (\cor|mensagem\(2) & ((\cor|mensagem\(1)) # (!\cor|mensagem\(0))))) # (!\cor|mensagem\(3) & (!\cor|mensagem\(0) & (!\cor|mensagem\(2) & \cor|mensagem\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|mensagem\(3),
	datab => \cor|mensagem\(0),
	datac => \cor|mensagem\(2),
	datad => \cor|mensagem\(1),
	combout => \Mux32~2_combout\);

-- Location: LCCOMB_X62_Y50_N24
\Mux32~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux32~3_combout\ = (\Mux32~2_combout\) # ((\rx|n\(0)) # ((\rx|n\(2)) # (\rx|n\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux32~2_combout\,
	datab => \rx|n\(0),
	datac => \rx|n\(2),
	datad => \rx|n\(1),
	combout => \Mux32~3_combout\);

-- Location: LCCOMB_X66_Y50_N0
\Mux31~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~2_combout\ = (\cor|mensagem\(1) & ((\cor|mensagem\(0) & ((\cor|mensagem\(2)))) # (!\cor|mensagem\(0) & (\cor|mensagem\(3) & !\cor|mensagem\(2))))) # (!\cor|mensagem\(1) & (!\cor|mensagem\(3) & (\cor|mensagem\(0) $ (\cor|mensagem\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|mensagem\(3),
	datab => \cor|mensagem\(0),
	datac => \cor|mensagem\(2),
	datad => \cor|mensagem\(1),
	combout => \Mux31~2_combout\);

-- Location: LCCOMB_X62_Y50_N10
\Mux31~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~3_combout\ = (\Mux31~2_combout\) # ((\rx|n\(0)) # ((\rx|n\(2)) # (\rx|n\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~2_combout\,
	datab => \rx|n\(0),
	datac => \rx|n\(2),
	datad => \rx|n\(1),
	combout => \Mux31~3_combout\);

-- Location: LCCOMB_X66_Y50_N6
\Mux30~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~2_combout\ = (\cor|mensagem\(1) & (!\cor|mensagem\(3) & (\cor|mensagem\(0)))) # (!\cor|mensagem\(1) & ((\cor|mensagem\(2) & (!\cor|mensagem\(3))) # (!\cor|mensagem\(2) & ((\cor|mensagem\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|mensagem\(3),
	datab => \cor|mensagem\(0),
	datac => \cor|mensagem\(2),
	datad => \cor|mensagem\(1),
	combout => \Mux30~2_combout\);

-- Location: LCCOMB_X67_Y50_N14
\Mux30~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~3_combout\ = (\rx|n\(1)) # ((\Mux30~2_combout\) # ((\rx|n\(2)) # (\rx|n\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|n\(1),
	datab => \Mux30~2_combout\,
	datac => \rx|n\(2),
	datad => \rx|n\(0),
	combout => \Mux30~3_combout\);

-- Location: LCCOMB_X66_Y50_N8
\Mux29~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~2_combout\ = (\cor|mensagem\(0) & (\cor|mensagem\(3) $ (((\cor|mensagem\(1)) # (!\cor|mensagem\(2)))))) # (!\cor|mensagem\(0) & (!\cor|mensagem\(3) & (!\cor|mensagem\(2) & \cor|mensagem\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|mensagem\(3),
	datab => \cor|mensagem\(0),
	datac => \cor|mensagem\(2),
	datad => \cor|mensagem\(1),
	combout => \Mux29~2_combout\);

-- Location: LCCOMB_X67_Y50_N8
\Mux29~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~3_combout\ = (\rx|n\(0)) # ((\rx|n\(1)) # ((\rx|n\(2)) # (\Mux29~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|n\(0),
	datab => \rx|n\(1),
	datac => \rx|n\(2),
	datad => \Mux29~2_combout\,
	combout => \Mux29~3_combout\);

-- Location: LCCOMB_X66_Y50_N2
\Mux28~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~2_combout\ = (\cor|mensagem\(0) & ((\cor|mensagem\(3)) # (\cor|mensagem\(2) $ (\cor|mensagem\(1))))) # (!\cor|mensagem\(0) & ((\cor|mensagem\(1)) # (\cor|mensagem\(3) $ (\cor|mensagem\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cor|mensagem\(3),
	datab => \cor|mensagem\(0),
	datac => \cor|mensagem\(2),
	datad => \cor|mensagem\(1),
	combout => \Mux28~2_combout\);

-- Location: LCCOMB_X67_Y50_N2
\Mux28~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~3_combout\ = (\rx|n\(0)) # ((\rx|n\(1)) # ((\rx|n\(2)) # (\Mux28~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|n\(0),
	datab => \rx|n\(1),
	datac => \rx|n\(2),
	datad => \Mux28~2_combout\,
	combout => \Mux28~3_combout\);

-- Location: LCCOMB_X65_Y50_N2
\Mux27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\rx|LessThan0~0_combout\) # ((!\ver|sindrome[1]~1_combout\ & (\ver|sindrome[0]~2_combout\ $ (\ver|sindrome[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ver|sindrome[1]~1_combout\,
	datab => \ver|sindrome[0]~2_combout\,
	datac => \rx|LessThan0~0_combout\,
	datad => \ver|sindrome[2]~0_combout\,
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X65_Y50_N16
\Mux26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\rx|LessThan0~0_combout\) # ((\ver|sindrome[2]~0_combout\ & (\ver|sindrome[1]~1_combout\ $ (\ver|sindrome[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ver|sindrome[1]~1_combout\,
	datab => \ver|sindrome[0]~2_combout\,
	datac => \rx|LessThan0~0_combout\,
	datad => \ver|sindrome[2]~0_combout\,
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X65_Y50_N30
\r~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r~0_combout\ = (\rx|LessThan0~0_combout\) # ((\ver|sindrome[1]~1_combout\ & (!\ver|sindrome[0]~2_combout\ & !\ver|sindrome[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ver|sindrome[1]~1_combout\,
	datab => \ver|sindrome[0]~2_combout\,
	datac => \rx|LessThan0~0_combout\,
	datad => \ver|sindrome[2]~0_combout\,
	combout => \r~0_combout\);

-- Location: LCCOMB_X65_Y50_N12
\Mux24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\rx|LessThan0~0_combout\) # ((\ver|sindrome[1]~1_combout\ & (\ver|sindrome[0]~2_combout\ & \ver|sindrome[2]~0_combout\)) # (!\ver|sindrome[1]~1_combout\ & (\ver|sindrome[0]~2_combout\ $ (\ver|sindrome[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ver|sindrome[1]~1_combout\,
	datab => \ver|sindrome[0]~2_combout\,
	datac => \rx|LessThan0~0_combout\,
	datad => \ver|sindrome[2]~0_combout\,
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X65_Y50_N26
\Mux23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\ver|sindrome[0]~2_combout\) # ((\rx|LessThan0~0_combout\) # ((!\ver|sindrome[1]~1_combout\ & \ver|sindrome[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ver|sindrome[1]~1_combout\,
	datab => \ver|sindrome[0]~2_combout\,
	datac => \rx|LessThan0~0_combout\,
	datad => \ver|sindrome[2]~0_combout\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X65_Y50_N24
\Mux22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\rx|LessThan0~0_combout\) # ((\ver|sindrome[1]~1_combout\ & ((\ver|sindrome[0]~2_combout\) # (!\ver|sindrome[2]~0_combout\))) # (!\ver|sindrome[1]~1_combout\ & (\ver|sindrome[0]~2_combout\ & !\ver|sindrome[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ver|sindrome[1]~1_combout\,
	datab => \ver|sindrome[0]~2_combout\,
	datac => \rx|LessThan0~0_combout\,
	datad => \ver|sindrome[2]~0_combout\,
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X65_Y50_N22
\Mux21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\rx|LessThan0~0_combout\) # ((\ver|sindrome[1]~1_combout\ & ((!\ver|sindrome[2]~0_combout\) # (!\ver|sindrome[0]~2_combout\))) # (!\ver|sindrome[1]~1_combout\ & ((\ver|sindrome[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ver|sindrome[1]~1_combout\,
	datab => \ver|sindrome[0]~2_combout\,
	datac => \rx|LessThan0~0_combout\,
	datad => \ver|sindrome[2]~0_combout\,
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X64_Y50_N16
\Mux20~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~2_combout\ = (\des|paralelo[2]~0_combout\ & (!\des|paralelo[1]~4_combout\ & (\des|paralelo[3]~1_combout\ $ (!\des|paralelo[0]~2_combout\)))) # (!\des|paralelo[2]~0_combout\ & (\des|paralelo[0]~2_combout\ & (\des|paralelo[3]~1_combout\ $ 
-- (!\des|paralelo[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \des|paralelo[2]~0_combout\,
	datab => \des|paralelo[3]~1_combout\,
	datac => \des|paralelo[0]~2_combout\,
	datad => \des|paralelo[1]~4_combout\,
	combout => \Mux20~2_combout\);

-- Location: LCCOMB_X67_Y50_N12
\Mux20~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~3_combout\ = (\rx|n\(1)) # ((\Mux20~2_combout\) # ((\rx|n\(2)) # (\rx|n\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|n\(1),
	datab => \Mux20~2_combout\,
	datac => \rx|n\(2),
	datad => \rx|n\(0),
	combout => \Mux20~3_combout\);

-- Location: LCCOMB_X66_Y50_N28
\Mux19~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~2_combout\ = (\des|paralelo[1]~4_combout\ & ((\des|paralelo[0]~2_combout\ & (\des|paralelo[3]~1_combout\)) # (!\des|paralelo[0]~2_combout\ & ((\des|paralelo[2]~0_combout\))))) # (!\des|paralelo[1]~4_combout\ & (\des|paralelo[2]~0_combout\ & 
-- (\des|paralelo[3]~1_combout\ $ (\des|paralelo[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \des|paralelo[1]~4_combout\,
	datab => \des|paralelo[3]~1_combout\,
	datac => \des|paralelo[0]~2_combout\,
	datad => \des|paralelo[2]~0_combout\,
	combout => \Mux19~2_combout\);

-- Location: LCCOMB_X67_Y50_N18
\Mux19~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~3_combout\ = (\rx|n\(1)) # ((\Mux19~2_combout\) # ((\rx|n\(2)) # (\rx|n\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|n\(1),
	datab => \Mux19~2_combout\,
	datac => \rx|n\(2),
	datad => \rx|n\(0),
	combout => \Mux19~3_combout\);

-- Location: LCCOMB_X66_Y50_N18
\Mux18~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = (\des|paralelo[3]~1_combout\ & (\des|paralelo[2]~0_combout\ & ((\des|paralelo[1]~4_combout\) # (!\des|paralelo[0]~2_combout\)))) # (!\des|paralelo[3]~1_combout\ & (\des|paralelo[1]~4_combout\ & (!\des|paralelo[0]~2_combout\ & 
-- !\des|paralelo[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \des|paralelo[1]~4_combout\,
	datab => \des|paralelo[3]~1_combout\,
	datac => \des|paralelo[0]~2_combout\,
	datad => \des|paralelo[2]~0_combout\,
	combout => \Mux18~2_combout\);

-- Location: LCCOMB_X67_Y50_N24
\Mux18~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~3_combout\ = (\rx|n\(0)) # ((\Mux18~2_combout\) # ((\rx|n\(2)) # (\rx|n\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|n\(0),
	datab => \Mux18~2_combout\,
	datac => \rx|n\(2),
	datad => \rx|n\(1),
	combout => \Mux18~3_combout\);

-- Location: LCCOMB_X64_Y50_N2
\Mux17~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = (\des|paralelo[1]~4_combout\ & ((\des|paralelo[2]~0_combout\ & ((\des|paralelo[0]~2_combout\))) # (!\des|paralelo[2]~0_combout\ & (\des|paralelo[3]~1_combout\ & !\des|paralelo[0]~2_combout\)))) # (!\des|paralelo[1]~4_combout\ & 
-- (!\des|paralelo[3]~1_combout\ & (\des|paralelo[2]~0_combout\ $ (\des|paralelo[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \des|paralelo[2]~0_combout\,
	datab => \des|paralelo[3]~1_combout\,
	datac => \des|paralelo[0]~2_combout\,
	datad => \des|paralelo[1]~4_combout\,
	combout => \Mux17~2_combout\);

-- Location: LCCOMB_X67_Y50_N26
\Mux17~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~3_combout\ = (\rx|n\(1)) # ((\Mux17~2_combout\) # ((\rx|n\(2)) # (\rx|n\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|n\(1),
	datab => \Mux17~2_combout\,
	datac => \rx|n\(2),
	datad => \rx|n\(0),
	combout => \Mux17~3_combout\);

-- Location: LCCOMB_X66_Y50_N24
\Mux16~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = (\des|paralelo[1]~4_combout\ & (!\des|paralelo[3]~1_combout\ & (\des|paralelo[0]~2_combout\))) # (!\des|paralelo[1]~4_combout\ & ((\des|paralelo[2]~0_combout\ & (!\des|paralelo[3]~1_combout\)) # (!\des|paralelo[2]~0_combout\ & 
-- ((\des|paralelo[0]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \des|paralelo[1]~4_combout\,
	datab => \des|paralelo[3]~1_combout\,
	datac => \des|paralelo[0]~2_combout\,
	datad => \des|paralelo[2]~0_combout\,
	combout => \Mux16~2_combout\);

-- Location: LCCOMB_X67_Y50_N20
\Mux16~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~3_combout\ = (\rx|n\(1)) # ((\Mux16~2_combout\) # ((\rx|n\(2)) # (\rx|n\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|n\(1),
	datab => \Mux16~2_combout\,
	datac => \rx|n\(2),
	datad => \rx|n\(0),
	combout => \Mux16~3_combout\);

-- Location: LCCOMB_X66_Y50_N22
\Mux15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (\des|paralelo[1]~4_combout\ & (!\des|paralelo[3]~1_combout\ & ((\des|paralelo[0]~2_combout\) # (!\des|paralelo[2]~0_combout\)))) # (!\des|paralelo[1]~4_combout\ & (\des|paralelo[0]~2_combout\ & (\des|paralelo[3]~1_combout\ $ 
-- (!\des|paralelo[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \des|paralelo[1]~4_combout\,
	datab => \des|paralelo[3]~1_combout\,
	datac => \des|paralelo[0]~2_combout\,
	datad => \des|paralelo[2]~0_combout\,
	combout => \Mux15~2_combout\);

-- Location: LCCOMB_X67_Y50_N22
\Mux15~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~3_combout\ = (\rx|n\(1)) # ((\Mux15~2_combout\) # ((\rx|n\(2)) # (\rx|n\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|n\(1),
	datab => \Mux15~2_combout\,
	datac => \rx|n\(2),
	datad => \rx|n\(0),
	combout => \Mux15~3_combout\);

-- Location: LCCOMB_X64_Y50_N28
\Mux14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (\des|paralelo[0]~2_combout\ & ((\des|paralelo[3]~1_combout\) # (\des|paralelo[2]~0_combout\ $ (\des|paralelo[1]~4_combout\)))) # (!\des|paralelo[0]~2_combout\ & ((\des|paralelo[1]~4_combout\) # (\des|paralelo[2]~0_combout\ $ 
-- (\des|paralelo[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \des|paralelo[2]~0_combout\,
	datab => \des|paralelo[3]~1_combout\,
	datac => \des|paralelo[0]~2_combout\,
	datad => \des|paralelo[1]~4_combout\,
	combout => \Mux14~2_combout\);

-- Location: LCCOMB_X67_Y50_N4
\Mux14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (\rx|n\(1)) # ((\Mux14~2_combout\) # ((\rx|n\(2)) # (\rx|n\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|n\(1),
	datab => \Mux14~2_combout\,
	datac => \rx|n\(2),
	datad => \rx|n\(0),
	combout => \Mux14~3_combout\);

-- Location: LCCOMB_X63_Y47_N14
\Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\mensagem[2]~input_o\ & (!\mensagem[1]~input_o\ & (\mensagem[0]~input_o\ $ (!\mensagem[3]~input_o\)))) # (!\mensagem[2]~input_o\ & (\mensagem[0]~input_o\ & (\mensagem[1]~input_o\ $ (!\mensagem[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mensagem[0]~input_o\,
	datab => \mensagem[1]~input_o\,
	datac => \mensagem[2]~input_o\,
	datad => \mensagem[3]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X63_Y47_N8
\Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\mensagem[1]~input_o\ & ((\mensagem[0]~input_o\ & ((\mensagem[3]~input_o\))) # (!\mensagem[0]~input_o\ & (\mensagem[2]~input_o\)))) # (!\mensagem[1]~input_o\ & (\mensagem[2]~input_o\ & (\mensagem[0]~input_o\ $ 
-- (\mensagem[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mensagem[0]~input_o\,
	datab => \mensagem[1]~input_o\,
	datac => \mensagem[2]~input_o\,
	datad => \mensagem[3]~input_o\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X63_Y47_N30
\Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\mensagem[2]~input_o\ & (\mensagem[3]~input_o\ & ((\mensagem[1]~input_o\) # (!\mensagem[0]~input_o\)))) # (!\mensagem[2]~input_o\ & (!\mensagem[0]~input_o\ & (\mensagem[1]~input_o\ & !\mensagem[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mensagem[0]~input_o\,
	datab => \mensagem[1]~input_o\,
	datac => \mensagem[2]~input_o\,
	datad => \mensagem[3]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X64_Y50_N10
\Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\mensagem[1]~input_o\ & ((\mensagem[0]~input_o\ & (\mensagem[2]~input_o\)) # (!\mensagem[0]~input_o\ & (!\mensagem[2]~input_o\ & \mensagem[3]~input_o\)))) # (!\mensagem[1]~input_o\ & (!\mensagem[3]~input_o\ & (\mensagem[0]~input_o\ $ 
-- (\mensagem[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mensagem[1]~input_o\,
	datab => \mensagem[0]~input_o\,
	datac => \mensagem[2]~input_o\,
	datad => \mensagem[3]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X63_Y47_N24
\Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\mensagem[1]~input_o\ & (\mensagem[0]~input_o\ & ((!\mensagem[3]~input_o\)))) # (!\mensagem[1]~input_o\ & ((\mensagem[2]~input_o\ & ((!\mensagem[3]~input_o\))) # (!\mensagem[2]~input_o\ & (\mensagem[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mensagem[0]~input_o\,
	datab => \mensagem[1]~input_o\,
	datac => \mensagem[2]~input_o\,
	datad => \mensagem[3]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X63_Y47_N22
\Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\mensagem[0]~input_o\ & (\mensagem[3]~input_o\ $ (((\mensagem[1]~input_o\) # (!\mensagem[2]~input_o\))))) # (!\mensagem[0]~input_o\ & (\mensagem[1]~input_o\ & (!\mensagem[2]~input_o\ & !\mensagem[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mensagem[0]~input_o\,
	datab => \mensagem[1]~input_o\,
	datac => \mensagem[2]~input_o\,
	datad => \mensagem[3]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X63_Y47_N20
\Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\mensagem[0]~input_o\ & ((\mensagem[3]~input_o\) # (\mensagem[1]~input_o\ $ (\mensagem[2]~input_o\)))) # (!\mensagem[0]~input_o\ & ((\mensagem[1]~input_o\) # (\mensagem[2]~input_o\ $ (\mensagem[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mensagem[0]~input_o\,
	datab => \mensagem[1]~input_o\,
	datac => \mensagem[2]~input_o\,
	datad => \mensagem[3]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_led_serie <= \led_serie~output_o\;

ww_led_clock <= \led_clock~output_o\;

ww_led_erro <= \led_erro~output_o\;

ww_ponto_canal <= \ponto_canal~output_o\;

ww_codigo_out(0) <= \codigo_out[0]~output_o\;

ww_codigo_out(1) <= \codigo_out[1]~output_o\;

ww_codigo_out(2) <= \codigo_out[2]~output_o\;

ww_codigo_out(3) <= \codigo_out[3]~output_o\;

ww_codigo_out(4) <= \codigo_out[4]~output_o\;

ww_codigo_out(5) <= \codigo_out[5]~output_o\;

ww_codigo_out(6) <= \codigo_out[6]~output_o\;

ww_hex0(0) <= \hex0[0]~output_o\;

ww_hex0(1) <= \hex0[1]~output_o\;

ww_hex0(2) <= \hex0[2]~output_o\;

ww_hex0(3) <= \hex0[3]~output_o\;

ww_hex0(4) <= \hex0[4]~output_o\;

ww_hex0(5) <= \hex0[5]~output_o\;

ww_hex0(6) <= \hex0[6]~output_o\;

ww_hex1(0) <= \hex1[0]~output_o\;

ww_hex1(1) <= \hex1[1]~output_o\;

ww_hex1(2) <= \hex1[2]~output_o\;

ww_hex1(3) <= \hex1[3]~output_o\;

ww_hex1(4) <= \hex1[4]~output_o\;

ww_hex1(5) <= \hex1[5]~output_o\;

ww_hex1(6) <= \hex1[6]~output_o\;

ww_hex2(0) <= \hex2[0]~output_o\;

ww_hex2(1) <= \hex2[1]~output_o\;

ww_hex2(2) <= \hex2[2]~output_o\;

ww_hex2(3) <= \hex2[3]~output_o\;

ww_hex2(4) <= \hex2[4]~output_o\;

ww_hex2(5) <= \hex2[5]~output_o\;

ww_hex2(6) <= \hex2[6]~output_o\;

ww_hex3(0) <= \hex3[0]~output_o\;

ww_hex3(1) <= \hex3[1]~output_o\;

ww_hex3(2) <= \hex3[2]~output_o\;

ww_hex3(3) <= \hex3[3]~output_o\;

ww_hex3(4) <= \hex3[4]~output_o\;

ww_hex3(5) <= \hex3[5]~output_o\;

ww_hex3(6) <= \hex3[6]~output_o\;
END structure;


