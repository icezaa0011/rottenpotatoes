{"filter":false,"title":"movie.rb","tooltip":"/Myrottenpotatoes/app/models/movie.rb","undoManager":{"mark":15,"position":15,"stack":[[{"start":{"row":1,"column":0},"end":{"row":2,"column":0},"action":"insert","lines":["",""],"id":2}],[{"start":{"row":1,"column":0},"end":{"row":25,"column":62},"action":"insert","lines":["class Movie < ActiveRecord::Base","  def self.all_ratings ; %w[G PG PG-13 R NC-17] ; end #  shortcut: array of strings","  validates :title, :presence => true","  validates :release_date, :presence => true","  validate :released_1930_or_later # uses custom validator below","  validates :rating, :inclusion => {:in => Movie.all_ratings},","    :unless => :grandfathered?","  def released_1930_or_later","    errors.add(:release_date, 'must be 1930 or later') if","      release_date && release_date < Date.parse('1 Jan 1930')","  end","  @@grandfathered_date = Date.parse('1 Nov 1968')","  def grandfathered?","    release_date && release_date < @@grandfathered_date","  end","end","# try in console:","m = Movie.new(:title => '', :rating => 'RG', :release_date => '1929-01-01')","# force validation checks to be performed:","m.valid?  # => false","m.errors[:title] # => [\"can't be blank\"]","m.errors[:rating] # => [] - validation skipped for grandfathered movies","m.errors[:release_date] # => [\"must be 1930 or later\"]","m.errors.full_messages # => [\"Title can't be blank\", \"Rating is not","  included in the list\", \"Release date must be 1930 or later\"]"],"id":3}],[{"start":{"row":26,"column":2},"end":{"row":26,"column":3},"action":"remove","lines":["d"],"id":4},{"start":{"row":26,"column":1},"end":{"row":26,"column":2},"action":"remove","lines":["n"]},{"start":{"row":26,"column":0},"end":{"row":26,"column":1},"action":"remove","lines":["e"]}],[{"start":{"row":0,"column":31},"end":{"row":0,"column":32},"action":"remove","lines":["e"],"id":5},{"start":{"row":0,"column":30},"end":{"row":0,"column":31},"action":"remove","lines":["s"]},{"start":{"row":0,"column":29},"end":{"row":0,"column":30},"action":"remove","lines":["a"]},{"start":{"row":0,"column":28},"end":{"row":0,"column":29},"action":"remove","lines":["B"]},{"start":{"row":0,"column":27},"end":{"row":0,"column":28},"action":"remove","lines":[":"]},{"start":{"row":0,"column":26},"end":{"row":0,"column":27},"action":"remove","lines":[":"]},{"start":{"row":0,"column":25},"end":{"row":0,"column":26},"action":"remove","lines":["d"]},{"start":{"row":0,"column":24},"end":{"row":0,"column":25},"action":"remove","lines":["r"]},{"start":{"row":0,"column":23},"end":{"row":0,"column":24},"action":"remove","lines":["o"]},{"start":{"row":0,"column":22},"end":{"row":0,"column":23},"action":"remove","lines":["c"]},{"start":{"row":0,"column":21},"end":{"row":0,"column":22},"action":"remove","lines":["e"]},{"start":{"row":0,"column":20},"end":{"row":0,"column":21},"action":"remove","lines":["R"]},{"start":{"row":0,"column":19},"end":{"row":0,"column":20},"action":"remove","lines":["e"]},{"start":{"row":0,"column":18},"end":{"row":0,"column":19},"action":"remove","lines":["v"]},{"start":{"row":0,"column":17},"end":{"row":0,"column":18},"action":"remove","lines":["i"]},{"start":{"row":0,"column":16},"end":{"row":0,"column":17},"action":"remove","lines":["t"]},{"start":{"row":0,"column":15},"end":{"row":0,"column":16},"action":"remove","lines":["c"]},{"start":{"row":0,"column":14},"end":{"row":0,"column":15},"action":"remove","lines":["A"]},{"start":{"row":0,"column":13},"end":{"row":0,"column":14},"action":"remove","lines":[" "]},{"start":{"row":0,"column":12},"end":{"row":0,"column":13},"action":"remove","lines":["<"]},{"start":{"row":0,"column":11},"end":{"row":0,"column":12},"action":"remove","lines":[" "]},{"start":{"row":0,"column":10},"end":{"row":0,"column":11},"action":"remove","lines":["e"]},{"start":{"row":0,"column":9},"end":{"row":0,"column":10},"action":"remove","lines":["i"]},{"start":{"row":0,"column":8},"end":{"row":0,"column":9},"action":"remove","lines":["v"]},{"start":{"row":0,"column":7},"end":{"row":0,"column":8},"action":"remove","lines":["o"]},{"start":{"row":0,"column":6},"end":{"row":0,"column":7},"action":"remove","lines":["M"]},{"start":{"row":0,"column":5},"end":{"row":0,"column":6},"action":"remove","lines":[" "]},{"start":{"row":0,"column":4},"end":{"row":0,"column":5},"action":"remove","lines":["s"]},{"start":{"row":0,"column":3},"end":{"row":0,"column":4},"action":"remove","lines":["s"]},{"start":{"row":0,"column":2},"end":{"row":0,"column":3},"action":"remove","lines":["a"]},{"start":{"row":0,"column":1},"end":{"row":0,"column":2},"action":"remove","lines":["l"]},{"start":{"row":0,"column":0},"end":{"row":0,"column":1},"action":"remove","lines":["c"]},{"start":{"row":3,"column":2},"end":{"row":3,"column":4},"action":"insert","lines":["  "]}],[{"start":{"row":3,"column":0},"end":{"row":3,"column":4},"action":"remove","lines":["    "],"id":6}],[{"start":{"row":18,"column":0},"end":{"row":25,"column":62},"action":"remove","lines":["m = Movie.new(:title => '', :rating => 'RG', :release_date => '1929-01-01')","# force validation checks to be performed:","m.valid?  # => false","m.errors[:title] # => [\"can't be blank\"]","m.errors[:rating] # => [] - validation skipped for grandfathered movies","m.errors[:release_date] # => [\"must be 1930 or later\"]","m.errors.full_messages # => [\"Title can't be blank\", \"Rating is not","  included in the list\", \"Release date must be 1930 or later\"]"],"id":7},{"start":{"row":17,"column":17},"end":{"row":18,"column":0},"action":"remove","lines":["",""]},{"start":{"row":17,"column":16},"end":{"row":17,"column":17},"action":"remove","lines":[":"]},{"start":{"row":17,"column":15},"end":{"row":17,"column":16},"action":"remove","lines":["e"]}],[{"start":{"row":17,"column":14},"end":{"row":17,"column":15},"action":"remove","lines":["l"],"id":8},{"start":{"row":17,"column":13},"end":{"row":17,"column":14},"action":"remove","lines":["o"]},{"start":{"row":17,"column":12},"end":{"row":17,"column":13},"action":"remove","lines":["s"]},{"start":{"row":17,"column":11},"end":{"row":17,"column":12},"action":"remove","lines":["n"]},{"start":{"row":17,"column":10},"end":{"row":17,"column":11},"action":"remove","lines":["o"]},{"start":{"row":17,"column":9},"end":{"row":17,"column":10},"action":"remove","lines":["c"]},{"start":{"row":17,"column":8},"end":{"row":17,"column":9},"action":"remove","lines":[" "]},{"start":{"row":17,"column":7},"end":{"row":17,"column":8},"action":"remove","lines":["n"]},{"start":{"row":17,"column":6},"end":{"row":17,"column":7},"action":"remove","lines":["i"]},{"start":{"row":17,"column":5},"end":{"row":17,"column":6},"action":"remove","lines":[" "]},{"start":{"row":17,"column":4},"end":{"row":17,"column":5},"action":"remove","lines":["y"]},{"start":{"row":17,"column":3},"end":{"row":17,"column":4},"action":"remove","lines":["r"]},{"start":{"row":17,"column":2},"end":{"row":17,"column":3},"action":"remove","lines":["t"]},{"start":{"row":17,"column":1},"end":{"row":17,"column":2},"action":"remove","lines":[" "]},{"start":{"row":17,"column":0},"end":{"row":17,"column":1},"action":"remove","lines":["#"]}],[{"start":{"row":16,"column":0},"end":{"row":17,"column":0},"action":"insert","lines":["",""],"id":9}],[{"start":{"row":16,"column":0},"end":{"row":16,"column":2},"action":"insert","lines":["  "],"id":10}],[{"start":{"row":16,"column":2},"end":{"row":20,"column":5},"action":"insert","lines":["before_save :capitalize_title","  def capitalize_title","    self.title = self.title.split(/\\s+/).map(&:downcase).","      map(&:capitalize).join(' ')","  end"],"id":11}],[{"start":{"row":16,"column":2},"end":{"row":20,"column":5},"action":"remove","lines":["before_save :capitalize_title","  def capitalize_title","    self.title = self.title.split(/\\s+/).map(&:downcase).","      map(&:capitalize).join(' ')","  end"],"id":12},{"start":{"row":16,"column":0},"end":{"row":16,"column":2},"action":"remove","lines":["  "]},{"start":{"row":15,"column":5},"end":{"row":16,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":3,"column":0},"end":{"row":3,"column":2},"action":"insert","lines":["  "],"id":13}],[{"start":{"row":11,"column":5},"end":{"row":12,"column":0},"action":"insert","lines":["",""],"id":14},{"start":{"row":12,"column":0},"end":{"row":12,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":12,"column":2},"end":{"row":16,"column":5},"action":"insert","lines":["before_save :capitalize_title","  def capitalize_title","    self.title = self.title.split(/\\s+/).map(&:downcase).","    map(&:capitalize).join(' ')","  end"],"id":15}],[{"start":{"row":16,"column":5},"end":{"row":17,"column":0},"action":"insert","lines":["",""],"id":16},{"start":{"row":17,"column":0},"end":{"row":17,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":17,"column":0},"end":{"row":17,"column":2},"action":"remove","lines":["  "],"id":17},{"start":{"row":16,"column":5},"end":{"row":17,"column":0},"action":"remove","lines":["",""]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":23,"column":0},"end":{"row":23,"column":0},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1541091406494,"hash":"98212ebf9dc990b71157b882ced0c8f50077d1d6"}