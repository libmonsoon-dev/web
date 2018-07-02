def app(env, start_response):
    start_response('200 OK', [('Content-Type', 'text/plain')])
    return (
        bytes(str + '\n', 'utf-8') for str in env['QUERY_STRING'].split('&')
    )
