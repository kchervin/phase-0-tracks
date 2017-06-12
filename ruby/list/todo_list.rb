class TodoList

  def initialize(array)
    @list_items = array
  end

  def get_items
    @list_items
  end

  def add_item(item)
     @list_items << item
  end

  def delete_item(item)
    @list_items.delete(item)
  end

  def get_item(index)
    @list_items[index]
  end

end

list = TodoList.new(["do the dishes", "mow the lawn"])

p list.get_items
p list.add_item("mop")
p list.delete_item("do the dishes")
p list.get_item(0)

