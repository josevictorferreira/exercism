local Hamming = {}

function Hamming.compute(a,b)
  SplittedB = split(b, ',')
  Total = 0
  for index, value in pairs(split(a)) do
    if value == b[index] then
      Total = Total + 1
    end
  end
end

return Hamming
