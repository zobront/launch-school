def timer
  time_before = Time.now
  yield
  time_after= Time.now

  time = time_before - time_after
end
