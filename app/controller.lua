json = require('json')

function get(req)
    local id = req:stash('id')
    local resp = req:render({json = {method = 'GET', id = id}})
    resp.status = 200
    return resp
end

function post(req)
    local resp = req:render({json = {method = 'POST'}})
    resp.status = 200
    return resp
end

function put(req)
    local id = req:stash('id')
    local resp = req:render({json = {method = 'PUT', id = id}})
    resp.status = 200
    return resp
end

function delete(req)
    local id = req:stash('id')
    local resp = req:render({json = {method = 'DELETE', id = id}})
    resp.status = 200
    return resp
end

return {
    get = get,
    post = post,
    put = put,
    delete = delete
}