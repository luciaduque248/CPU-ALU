library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ALU_TEST is
    Port (
        A          : in  std_logic_vector(7 downto 0);
        B          : in  std_logic_vector(7 downto 0);
        ALU_Sel    : in  std_logic_vector(2 downto 0);
        segments_0 : out std_logic_vector(6 downto 0); -- Display for lower nibble
        segments_1 : out std_logic_vector(6 downto 0); -- Display for upper nibble
        NZVC       : out std_logic_vector(3 downto 0)
    );
end ALU_TEST;

architecture Behavioral of ALU_TEST is
    signal Result : std_logic_vector(7 downto 0);
begin
    -- Instantiate the ALU
    ALU_inst : entity work.ALU
        port map (
            A => A,
            B => B,
            ALU_Sel => ALU_Sel,
            Result => Result,
            NZVC => NZVC
        );

    -- Instantiate the 7-segment display decoder for the lower nibble
    display_lower : entity work.display7seg_hex
        port map (
            num => unsigned(Result(3 downto 0)),
            segments => segments_0
        );

    -- Instantiate the 7-segment display decoder for the upper nibble
    display_upper : entity work.display7seg_hex                                                                       
        port map (
            num => unsigned(Result(7 downto 4)),
            segments => segments_1
        );
end Behavioral;
