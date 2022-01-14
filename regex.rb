2.7.2 :005 > s = 'Today it is 2021-11-07, a Sunday.'
2.7.2 :006 > expr = /\d\d\d\d-\d\d-\d\d/
 => /\d\d\d\d-\d\d-\d\d/
 => 12
 => "this is not a matching string."
 => nil
2.7.2 :010 > expr.match s
 => #<MatchData "2021-11-07">
2.7.2 :011 > s.match expr
 => #<MatchData "2021-11-07">
2.7.2 :012 > matchdata = expr.match s
 => #<MatchData "2021-11-07">
2.7.2 :013 > matchdata[0]
 => "2021-11-07"
2.7.2 :014 > matchdata.to_a
 => ["2021-11-07"]
2.7.2 :015 > expr
 => /\d\d\d\d-\d\d-\d\d/
2.7.2 :016 > s
 => "Today it is 2021-11-07, a Sunday."
2.7.2 :017 > expr.match(s).to_a
 => ["2021-11-07"]
2.7.2 :018 > expr.match(s).t^C
2.7.2 :018 > /(\d{4})-(\d\d)-(\d\d)/.match(s).to_a
 => ["2021-11-07", "2021", "11", "07"]
2.7.2 :019 > "2021".to_i
 => 2021
2.7.2 :020 > 'sdofiajsdvoaijsdvalsjvd'.to_i
 => 0

2021-01-11
2001-01-23
2017-11-15
not a date
11/15/2017

Today's date is 2021-11-07, okay?

Date: 2021-11-07

2021-11-07, 11:34 PM
