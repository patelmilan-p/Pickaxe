alias old_backquote `
def `(cmd)
  result = old_backquote(cmd)
  if $? != 0
    puts "*** Command #{cmd} failed: Status = #{$?.exitstatus}"
  end
  puts result.inspect + "hello"
end

print `ls -l /etc/passwd`
print `ls -l /etc/wibble`
