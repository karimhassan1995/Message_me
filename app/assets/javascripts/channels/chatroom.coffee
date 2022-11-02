# console.log('Coffee executed')
App.chatroom = App.cable.subscriptions.create "ChatroomChannel",
  connected: ->
    # console.log('Connected to channel')
    # Called when the subscription is ready for use on the server

  disconnected: ->
  # console.log('hassan')
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $('#message-container').append(
      "<div class='event'>
        <div class='content'>
            <div class='summary'>
                    <em>#{data.username}</em>: #{data.msg}
            </div>
        </div>
      </div>"
    )
    scroll_bottom()




#  App.cable.subscriptions.create(
#    'ChatroomChannel',
#     {
#       'connected': function() {
#         alert('sajed')
#       },
#       'disconnected': function() {

#       },
#       'received': function(data) {
#         alert(data.foo)
#       }
#     }
#  )

# haga(
#   'karim',
#   {
#     'connect': callback1,
#     'disconnect': callback2
#   }
# )
