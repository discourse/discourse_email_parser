$LOAD_PATH.unshift '.'
require 'lib/discourse_email_parser'

Gem::Specification.new do |s|
  s.name              = 'discourse_email_parser'
  s.version           = DiscourseEmailParser::VERSION
  s.date              = Time.now.strftime('%Y-%m-%d')

  s.summary     = "Small library to parse plain text email content."
  s.description = "DiscourseEmailParser is a small library to parse plain text email content."

  s.authors  = ["Rick Olson", "Arpit Jalan", "Robin Ward", "Sam Saffron", "Neil Lalonde", "Régis Hanol"]
  s.email    = ["arpit.jalan@discourse.org", "robin.ward@discourse.org", "sam.saffron@discourse.org", "neil.lalonde@discourse.org", "regis.hanol@discourse.org"]
  s.homepage = 'http://github.com/discourse/discourse_email_parser'
  s.license  = 'MIT'

  s.require_paths = %w[lib]

  s.files = %w[
    LICENSE
    README.md
    Rakefile
    discourse_email_parser.gemspec
    lib/discourse_email_parser.rb
    script/release
    script/test
    test/discourse_email_parser_test.rb
    test/emails/correct_sig.txt
    test/emails/email_1_1.txt
    test/emails/email_1_2.txt
    test/emails/email_1_3.txt
    test/emails/email_1_4.txt
    test/emails/email_1_5.txt
    test/emails/email_1_6.txt
    test/emails/email_1_7.txt
    test/emails/email_1_8.txt
    test/emails/email_2_1.txt
    test/emails/email_2_2.txt
    test/emails/email_BlackBerry.txt
    test/emails/email_bullets.txt
    test/emails/email_iPhone.txt
    test/emails/email_multi_word_sent_from_my_mobile_device.txt
    test/emails/email_one_is_not_on.txt
    test/emails/email_sent_from_my_not_signature.txt
    test/emails/email_sig_delimiter_in_middle_of_line.txt
    test/emails/greedy_on.txt
    test/emails/pathological.txt
  ]

  s.test_files = s.files.select { |path| path =~ /^test\/.*_test\.rb/ }
end
