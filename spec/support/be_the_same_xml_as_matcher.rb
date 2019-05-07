require 'equivalent-xml'

module BeTheSameXmlAsMatcherHelpers
  def the_same_xml_as?(actual, expected)
    expected_xml = Nokogiri::XML("<test-xml>\n#{expected}\n</test-xml>") { |config| config.default_xml.noblanks }
    actual_xml = Nokogiri::XML("<test-xml>\n#{actual}\n</test-xml>") { |config| config.default_xml.noblanks }
    # ignored_attributes  = %w[style data-disable-with]
    ignored_attributes = []

    # expect(expected_xml).to be_equivalent_to(actual_xml)
    EquivalentXml.equivalent?(
      expected_xml, actual_xml, ignore_attr_values: ignored_attributes
    ) do |a, b, result|
      equivalent_xml?(a, b, result)
    end
  end

  private

  def equivalent_xml?(expected, real, result)
    return result if result != false || !real.is_a?(Nokogiri::XML::Element)

    # if real.attr('name') == 'utf8'
    #   # Handle wrapped utf8 hidden field for Rails 4.2+
    #   expected = expected.child
    # end

    # real.delete('data-disable-with')

    # if expected.attr('type') == 'datetime' && real.attr('type') == 'datetime-local'
    #   expected.delete('type')
    #   real.delete('type')
    # end

    EquivalentXml.equivalent?(expected, real)
  end
end

RSpec::Matchers.define :be_the_same_xml_as do |expected|
  include BeTheSameXmlAsMatcherHelpers

  match { |actual| the_same_xml_as?(actual, expected) }
  diffable
end
