require 'test_helper'

class FormattingTest < ActiveSupport::TestCase
  test "register" do
    Brushup::Formatting.register("aa", "aa")
    assert_not_nil Brushup::Formatting.module_eval("@@formatters")[:aa]
  end
  
  def test_register_fail
    Brushup::Formatting.register("aa", "aa")
    Brushup::Formatting.register("aa", "aa")
    assert false
  rescue ArgumentError => ex
    assert true
  end

  test "to html" do
    assert_equal "<p>http://hoge</p>", Brushup::Formatting.to_html("default", "http://hoge")
  end

  test "to html rd" do
    assert_equal "<h2><a name=\"label-0\" id=\"label-0\">http://hoge</a></h2><!-- RDLabel: \"http://hoge\" -->", Brushup::Formatting.to_html(:rd, "== http://hoge")
  end

  test "to html textile" do
    assert_equal "<ul>\n\t<li>hoge</li>\n\t</ul>", Brushup::Formatting.to_html(:textile, "* hoge")
  end
end
