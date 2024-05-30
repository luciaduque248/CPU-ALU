library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ALU is
    Port ( 
        A       : in  STD_LOGIC_VECTOR(7 downto 0);
        B       : in  STD_LOGIC_VECTOR(7 downto 0);
        ALU_Sel : in  STD_LOGIC_VECTOR(2 downto 0);
        Result  : out STD_LOGIC_VECTOR(7 downto 0);
        NZVC    : out STD_LOGIC_VECTOR(3 downto 0)
    );
end ALU;

architecture Behavioral of ALU is
    signal Result_temp : STD_LOGIC_VECTOR(7 downto 0);
begin
   
    ALU_PROCESS : process (A, B, ALU_Sel)
    variable Sum_uns : unsigned(8 downto 0);
	 variable Sub_uns : unsigned(8 downto 0);
	 
    begin
        if (ALU_Sel = "000") then
            -- SUMA
            Sum_uns := unsigned('0' & A) + unsigned('0' & B);
            Result_temp <= std_logic_vector(Sum_uns(7 downto 0));
            
            -- Negative Flag (N)
            NZVC(3) <= Sum_uns(7);
            
            -- Zero Flag (Z)
            if (Sum_uns(7 downto 0) = x"00") then
                NZVC(2) <= '1';
            else
                NZVC(2) <= '0';
            end if;
            
            -- Overflow Flag (V)
            if ((A(7) = '0' and B(7) = '0' and Sum_uns(7) = '1') or
                (A(7) = '1' and B(7) = '1' and Sum_uns(7) = '0')) then
                NZVC(1) <= '1';
            else
                NZVC(1) <= '0';
            end if;
            
            -- Carry Flag (C)
            NZVC(0) <= Sum_uns(8);

        elsif (ALU_Sel = "001") then
				 -- SUBTRACTION
            Sub_uns := unsigned('0' & A) - unsigned('0' & B);
            Result <= std_logic_vector(Sub_uns(7 downto 0));
            
            -- Negative Flag (N)
            NZVC(3) <= Sub_uns(7);
            
            -- Zero Flag (Z)
            if (Sub_uns(7 downto 0) = x"00") then
                NZVC(2) <= '1';
            else
                NZVC(2) <= '0';
            end if;
            
            -- Overflow Flag (V)
            if ((A(7) = '0' and B(7) = '1' and Sub_uns(7) = '1') or
                (A(7) = '1' and B(7) = '0' and Sub_uns(7) = '0')) then
                NZVC(1) <= '1';
            else
                NZVC(1) <= '0';
            end if;
				
				-- Carry Flag (C)
            if unsigned(A) < unsigned(B) then
                NZVC(0) <= '1';
            else
                NZVC(0) <= '0';
            end if;

		  
		  elsif (ALU_Sel = "010") then
            -- AND
            Result_temp <= A and B;
            
            -- Negative Flag (N)
            NZVC(3) <= Result_temp(7);
            
            -- Zero Flag (Z)
            if (Result_temp = x"00") then
                NZVC(2) <= '1';
            else
                NZVC(2) <= '0';
            end if;
            
            -- Overflow Flag (V)
            NZVC(1) <= '0';  -- No overflow in AND operation
            
            -- Carry Flag (C)
            NZVC(0) <= '0';  -- No carry in AND operation

        elsif (ALU_Sel = "011") then
            -- OR
            Result_temp <= A or B;
            
            -- Negative Flag (N)
            NZVC(3) <= Result_temp(7);
            
            -- Zero Flag (Z)
            if (Result_temp = x"00") then
                NZVC(2) <= '1';
            else
                NZVC(2) <= '0';
            end if;
            
            -- Overflow Flag (V)
            NZVC(1) <= '0';  -- No overflow in OR operation
            
            -- Carry Flag (C)
            NZVC(0) <= '0';  -- No carry in OR operation

        elsif (ALU_Sel = "100") then
            -- XOR
            Result_temp <= A xor B;
            
            -- Negative Flag (N)
            NZVC(3) <= Result_temp(7);
            
            -- Zero Flag (Z)
            if (Result_temp = x"00") then
                NZVC(2) <= '1';
            else
                NZVC(2) <= '0';
            end if;
            
            -- Overflow Flag (V)
            NZVC(1) <= '0';  -- No overflow in XOR operation
            
            -- Carry Flag (C)
            NZVC(0) <= '0';  -- No carry in XOR operation

        elsif (ALU_Sel = "101") then
            -- NOT
            Result_temp <= not A;
            
            -- Negative Flag (N)
            NZVC(3) <= Result_temp(7);
            
            -- Zero Flag (Z)
            if (Result_temp = x"00") then
                NZVC(2) <= '1';
            else
                NZVC(2) <= '0';
            end if;
            
            -- Overflow Flag (V)
            NZVC(1) <= '0';  -- No overflow in NOT operation
            
            -- Carry Flag (C)
            NZVC(0) <= '0';  -- No carry in NOT operation

        elsif (ALU_Sel = "110") then
            -- SHIFT LEFT
            Result_temp <= std_logic_vector(shift_left(unsigned(A), 1));
            
            -- Negative Flag (N)
            NZVC(3) <= Result_temp(7);
            
            -- Zero Flag (Z)
            if (Result_temp = x"00") then
                NZVC(2) <= '1';
            else
                NZVC(2) <= '0';
            end if;
            
            -- Overflow Flag (V)
            NZVC(1) <= '0';  -- No overflow in shift left operation
            
            -- Carry Flag (C)
            NZVC(0) <= A(7);  -- Carry out is the bit shifted out

        elsif (ALU_Sel = "111") then
            -- SHIFT RIGHT
            Result_temp <= std_logic_vector(shift_right(unsigned(A), 1));
            
            -- Negative Flag (N)
            NZVC(3) <= Result_temp(7);
            
            -- Zero Flag (Z)
            if (Result_temp = x"00") then
                NZVC(2) <= '1';
            else
                NZVC(2) <= '0';
            end if;
            
            -- Overflow Flag (V)
            NZVC(1) <= '0';  -- No overflow in shift right operation
            
            -- Carry Flag (C)
            NZVC(0) <= A(0);  -- Carry out is the bit shifted out

        else
            -- Default case, if needed
            Result_temp <= (others => '0');
            NZVC <= (others => '0');
        end if;
    end process ALU_PROCESS;

end Behavioral;