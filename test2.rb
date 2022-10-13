require 'byebug'
  
  
  def mixed_fraction(s)
    ch = s.split('/')[0].to_i
    zn = s.split('/')[1].to_i
    znak = ch/zn < 0 ? '-' : ''
    ch=ch.abs
    zn=zn.abs
    greate = (ch/zn).to_i
    ch -= zn*greate

    return "#{znak}#{greate.to_s}" if ch == 0
    
    com_d =  ch.gcdlcm(zn)[0]
    ch/= com_d
    zn/= com_d
    
    return "#{znak}#{ch}/#{zn}" if greate == 0
    
    
    "#{znak}#{greate} #{ch.abs}/#{zn.abs}"
  end


puts mixed_fraction('4/-6')