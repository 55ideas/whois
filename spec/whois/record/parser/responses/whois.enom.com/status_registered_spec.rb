# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.enom.com/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.enom.com.rb'

describe Whois::Record::Parser::WhoisEnomCom, "status_registered.expected" do

  before(:each) do
    file = fixture("responses", "whois.enom.com/status_registered.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  describe "#status" do
    it do
      lambda { @parser.status }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#available?" do
    it do
      @parser.available?.should == false
    end
  end
  describe "#registered?" do
    it do
      @parser.registered?.should == true
    end
  end
  describe "#created_on" do
    it do
      @parser.created_on.should be_a(Time)
      @parser.created_on.should == Time.parse("2004-06-16 18:07:25")
    end
  end
  describe "#updated_on" do
    it do
      lambda { @parser.updated_on }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#expires_on" do
    it do
      @parser.expires_on.should be_a(Time)
      @parser.expires_on.should == Time.parse("2015-06-16 00:00:00")
    end
  end
  describe "#registrar" do
    it do
      @parser.registrar.should be_a(Whois::Record::Registrar)
      @parser.registrar.id.should           == nil
      @parser.registrar.name.should         == "eNom Inc."
      @parser.registrar.url.should          == "http://www.enom.com/"
    end
  end
  describe "#registrant_contacts" do
    it do
      @parser.registrant_contacts.should be_a(Array)
      @parser.registrant_contacts.should have(1).items
      @parser.registrant_contacts[0].should be_a(Whois::Record::Contact)
      @parser.registrant_contacts[0].type.should         == Whois::Record::Contact::TYPE_REGISTRANT
      @parser.registrant_contacts[0].name.should         == "Host Master"
      @parser.registrant_contacts[0].organization.should == "AdBrite, Inc."
      @parser.registrant_contacts[0].address.should      == "731 Market Street, Suite 500"
      @parser.registrant_contacts[0].city.should         == "San Francisco"
      @parser.registrant_contacts[0].zip.should          == "94103"
      @parser.registrant_contacts[0].state.should        == "CA"
      @parser.registrant_contacts[0].country_code.should == "US"
      @parser.registrant_contacts[0].phone.should        == ""
      @parser.registrant_contacts[0].fax.should          == ""
      @parser.registrant_contacts[0].email.should        == ""
    end
  end
  describe "#admin_contacts" do
    it do
      @parser.admin_contacts.should be_a(Array)
      @parser.admin_contacts.should have(1).items
      @parser.admin_contacts[0].should be_a(Whois::Record::Contact)
      @parser.admin_contacts[0].type.should         == Whois::Record::Contact::TYPE_ADMIN
      @parser.admin_contacts[0].name.should         == "Host Master"
      @parser.admin_contacts[0].organization.should == "AdBrite, Inc."
      @parser.admin_contacts[0].address.should      == "731 Market Street, Suite 500"
      @parser.admin_contacts[0].city.should         == "San Francisco"
      @parser.admin_contacts[0].zip.should          == "94103"
      @parser.admin_contacts[0].state.should        == "CA"
      @parser.admin_contacts[0].country_code.should == "US"
      @parser.admin_contacts[0].phone.should        == "4159750916"
      @parser.admin_contacts[0].fax.should          == ""
      @parser.admin_contacts[0].email.should        == "hostmaster@adbrite.com"
    end
  end
  describe "#technical_contacts" do
    it do
      @parser.technical_contacts.should be_a(Array)
      @parser.technical_contacts.should have(1).items
      @parser.technical_contacts[0].should be_a(Whois::Record::Contact)
      @parser.technical_contacts[0].type.should         == Whois::Record::Contact::TYPE_TECHNICAL
      @parser.technical_contacts[0].name.should         == "Host Master"
      @parser.technical_contacts[0].organization.should == "AdBrite, Inc."
      @parser.technical_contacts[0].address.should      == "731 Market Street, Suite 500"
      @parser.technical_contacts[0].city.should         == "San Francisco"
      @parser.technical_contacts[0].zip.should          == "94103"
      @parser.technical_contacts[0].state.should        == "CA"
      @parser.technical_contacts[0].country_code.should == "US"
      @parser.technical_contacts[0].phone.should        == "4159750916"
      @parser.technical_contacts[0].fax.should          == ""
      @parser.technical_contacts[0].email.should        == "hostmaster@adbrite.com"
    end
  end
  describe "#nameservers" do
    it do
      @parser.nameservers.should be_a(Array)
      @parser.nameservers.should have(8).items
      @parser.nameservers[0].should be_a(Whois::Record::Nameserver)
      @parser.nameservers[0].name.should == "asia3.akam.net"
      @parser.nameservers[1].should be_a(Whois::Record::Nameserver)
      @parser.nameservers[1].name.should == "aus1.akam.net"
      @parser.nameservers[2].should be_a(Whois::Record::Nameserver)
      @parser.nameservers[2].name.should == "eur1.akam.net"
      @parser.nameservers[3].should be_a(Whois::Record::Nameserver)
      @parser.nameservers[3].name.should == "eur2.akam.net"
      @parser.nameservers[4].should be_a(Whois::Record::Nameserver)
      @parser.nameservers[4].name.should == "ns1-105.akam.net"
      @parser.nameservers[5].should be_a(Whois::Record::Nameserver)
      @parser.nameservers[5].name.should == "ns1-232.akam.net"
      @parser.nameservers[6].should be_a(Whois::Record::Nameserver)
      @parser.nameservers[6].name.should == "usc2.akam.net"
      @parser.nameservers[7].should be_a(Whois::Record::Nameserver)
      @parser.nameservers[7].name.should == "usw6.akam.net"
    end
  end
end
