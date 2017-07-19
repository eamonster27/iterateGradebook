require 'minitest/autorun'
require_relative "gradebook"

class GradebookTest < Minitest::Test
  def test_output1
    assert_output OUTPUT1 do
      print_gradebook(File.absolute_path(File.join(File.dirname(__FILE__), "input1.csv")))
    end
  end

  def test_output2
    assert_output OUTPUT2 do
      print_gradebook(File.absolute_path(File.join(File.dirname(__FILE__), "input2.csv")))
    end
  end
end

OUTPUT1 = <<EOF
Average by student:
  Evelyn: 90 (A)
  Marley: 85 (B)
  Hayden: 80 (B)

Average by assignment:
  Project 1: 81 (B)
  Project 2: 88 (B)
  Quiz: 85 (B)

Class average: 85
EOF

OUTPUT2 = <<EOF
Average by student:
  Casey: 90 (A)
  Rhys: 90 (A)
  Mirna: 87 (B)
  Jordon: 84 (B)
  Berkly: 83 (B)
  Hube: 83 (B)
  Cecil: 82 (B)
  Loree: 80 (B)
  Jeannette: 80 (B)
  Zolly: 78 (C)
  Frannie: 78 (C)
  Dollie: 77 (C)
  Elli: 75 (C)
  Eldredge: 72 (C)
  Godfry: 72 (C)
  Jefferson: 71 (C)
  Jackson: 67 (D)
  Corney: 67 (D)
  Rik: 66 (D)
  Karoline: 65 (D)

Average by assignment:
  Project 1: 72 (C)
  Project 2: 82 (B)
  Quiz 1: 84 (B)
  Final Project: 71 (C)

Class average: 77
EOF
