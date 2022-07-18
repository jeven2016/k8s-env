wrk.method = "POST"

wrk.body = 'grant_type=password&client_id=security-admin-console&username=admin&password=admin'

wrk.headers["Content-Type"] = "application/x-www-form-urlencoded"

--response = function(status, headers, body)
--    print(body) --调试用，正式测试时需要关闭，因为解析response非常消耗资源
--end

function request()
    return wrk.format('POST', nil, nil, body)
end
