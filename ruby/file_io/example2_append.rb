# Append details to the existing file.
=begin
afile = File.new("employees.txt","a")
	afile.write("\nJasmeet singh,  BDE")
afile.close
=end

File.open("employees.txt","a") do |file|
file.write("\nRajat Banduni, HM")
end
