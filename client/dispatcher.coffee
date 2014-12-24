{Flux} = require 'delorean'


#
# 直接 Dispatcher クラスを返さないのは、createDispatcher がクロージャとして
# todoListStore を参照する必要があるため、副作用を内包するようになってしまうから。
#
# 後で、this.todoListStore で渡そうとしてみたが、createDispatcher 時に
# getStores が実行されて中の store 群が走査されるので無理だった。
#
exports.create = ({todoListStore}) ->

  Flux.createDispatcher

    addTodo: (todo) ->
      @dispatch 'add-todo', todo

    getStores: ->
      todoList: todoListStore
