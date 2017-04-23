class TodoList
  attr_accessor :title

  def initialize(title)
    @title = title
    @todos = []
  end

  def add(todo)
    raise TypeError, 'can only add Todo objects' unless todo.instance_of? Todo
    @todos << todo
  end
  alias_method :<<, :add

  def each
    counter = 0
    while counter < @todos.size
      yield(@todos[counter])
      counter += 1
    end
    self
  end

  def select
    results = TodoList.new(title)
    @todos.each do |todo|
      results.add(todo) if yield(todo)
    end
    results
  end

  def size
    @todos.size
  end

  def done?
    done
  end

  def first
    @todos[0]
  end

  def last
    @todos[-1]
  end

  def item_at(location)
    @todos[location]
  end

  def mark_done_at(location)
    @todos[location].done!
  end

  def mark_undone_at(location)
    @todos[location].undone!
  end

  def shift
    @todos.shift
  end

  def pop
    @todos.pop
  end

  def remove_at(location)
    @todos.delete(item_at(location))
  end

  def to_s
    text = "---- #{title} ----\n"
    text << @todos.map(&:to_s).join("\n")
    text
  end

  def find_by_title(query)
    @todos.select { |todo| todo.title == query }.first
  end

  def all_done
    @todos.select do {|todo| todo.done? }
  end

  def all_not_done
    @todos.select do {|todo| !todo.done? }
  end

  def mark_done(query)
    find_by_title(query) && find_by_title(title).done!
  end

  def mark_all_done
    @todos.each do |todo|
      todo.done!
    end
  end

  def mark_all_undone
    @todos.each do |todo|
      todo.undone!
    end
  end
end

class Todo
  DONE_MARKER = 'X'
  UNDONE_MARKER = ' '

  attr_accessor :title, :description, :done

  def initialize(title, description='')
    @title = title
    @description = description
    @done = false
  end

  def done!
    self.done = true
  end

  def undone!
    self.done = false
  end

  def done?
    done
  end

  def to_s
    "[#{done? ? DONE_MARKER : UNDONE_MARKER}] #{title}"
  end
end
