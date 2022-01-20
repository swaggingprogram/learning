def to_hex(r, g, b)
  "#" +
  r.to_s(16).rjust(2,"0") +
  g.to_s(16).rjust(2,"0") +
  b.to_s(16).rjust(2,"0") +
end

def to_hex(r,g,b)
  hex = "#"
  [r,g,b].each do |n|
      n.to_s(16).rjust(2, "0")
  end
end
    