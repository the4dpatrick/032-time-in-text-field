032/033 Time In Text Field & Making a plugin
============================================

Created a the basic app shown in Railscast 032 Time in Text, then installed the StringifyTime gem I modeled after the StringifyTime plugin made in 033 Making a Plugin

[Blog Post](http://patrickperey.com/railscast-032-time-in-text-field) @ [PatrickPerey.com](http://patrickperey.com)

```erb
<div class="field">
  <%= f.label :due_at_string %><br>
  <%= f.text_field :due_at_string %>
</div>
```

```ruby
class Task < ActiveRecord::Base
  validates_presence_of :name
  stringify_time :due_at

  def validate
    errors.add :due_at, 'is invalid' if due_at_invalid?
  end
end
```
