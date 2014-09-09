class Users

  constructor: (@request) ->

  getById: (id, params = {}) ->
    params.id = id
    @request.get('users/show', params)

  getByName: (username, params = {}) ->
    params.username = username
    @request.get('users/show', params)

  getByEmail: (email, params = {}) ->
    params.email = email
    @request.get('users/show', params)

  getFriendsById: (id, params = {}) ->
    @request.get("users/#{id}/friends", params)

module.exports = Users