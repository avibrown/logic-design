entity demux is

	port(
	
		x, B, A : in bit;
		D0, D1, D2, D3 : out bit
		
);

end entity;



architecture demux_arc of demux is
begin

	D0 <= (x) and ((not B) and (not A));
	D1 <= (x) and ((not B) and (A));
	D2 <= (x) and ((B) and (not A));
	D3 <= (x) and ((B) and (A));
	
end demux_arc;