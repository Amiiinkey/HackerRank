def group_by_marks(marks, pass_marks)
    # your code here
      grouped_marks = marks.group_by { |student, marks| marks >= pass_marks ? "Passed" : "Failed" }
    grouped_marks.delete_if { |key, value| value.empty? }
  end

  marks = { "sumeya" => 50, "eva" => 80, "kifah" => 70, "amin" => 100 }
  pass_marks = 60

  puts group_by_marks(marks, pass_marks)