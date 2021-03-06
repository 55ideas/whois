#--
# Ruby Whois
#
# An intelligent pure Ruby WHOIS client and parser.
#
# Copyright (c) 2009-2012 Simone Carletti <weppos@weppos.net>
#++


require 'whois/record/parser/whois.centralnic.com'


module Whois
  class Record
    class Parser

      # Parser for the whois.centralnic.net server.
      #
      # It aliases the whois.centralnic.com parser.
      class WhoisCentralnicNet < WhoisCentralnicCom
      end

    end
  end
end
