REGEX_TS = /([\d]+)h\s([\d]+)m\s([\d]+)s/

fname = if ARGV.length != 1
          'timestamps.dat'
        else
          ARGV.first
        end

File.foreach(fname) do |line|
  matches = REGEX_TS.match(line)

  if matches
    hh = matches[1] || 0
    mm = matches[2] || 0
    ss = matches[3] || 0

    puts "#{hh}:#{mm}:#{ss}"
  else
    puts "error parsing: #{line}"
  end
end
