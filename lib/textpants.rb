require 'nkf'

module Textpants
  module_function

  def sanitize(input)
    NKF.nkf('-WwLum0', input.to_s.scrub('?').gsub(/[\u0000-\u0008\u000E-\u001F\u007F]/, ''))
  end

  def normalize(input)
    NKF.nkf('-WwZ0Z1Xm0', sanitize(input))
  end

  def squish(input)
    normalize(input).gsub(/[\s\p{Cf}\p{Zs}\p{Zp}\p{Zl}]+/, ' ').strip
  end
end

require 'textpants/version'
