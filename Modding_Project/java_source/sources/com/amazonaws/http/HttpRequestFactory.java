package com.amazonaws.http;

import com.amazonaws.ClientConfiguration;
import com.amazonaws.Request;
import com.amazonaws.util.HttpUtils;
import com.amazonaws.util.StringUtils;
import com.mbridge.msdk.foundation.download.Command;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.net.URI;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class HttpRequestFactory {
    private void a(Map<String, String> map, Request<?> request, ExecutionContext executionContext, ClientConfiguration clientConfiguration) {
        URI endpoint = request.getEndpoint();
        String host = endpoint.getHost();
        if (HttpUtils.e(endpoint)) {
            host = host + ":" + endpoint.getPort();
        }
        map.put("Host", host);
        for (Map.Entry<String, String> entry : request.a().entrySet()) {
            map.put(entry.getKey(), entry.getValue());
        }
        if (map.get(CommonGatewayClient.HEADER_CONTENT_TYPE) == null || map.get(CommonGatewayClient.HEADER_CONTENT_TYPE).isEmpty()) {
            map.put(CommonGatewayClient.HEADER_CONTENT_TYPE, "application/x-www-form-urlencoded; charset=" + StringUtils.b("UTF-8"));
        }
        if (executionContext != null && executionContext.b() != null) {
            map.put(Command.HTTP_HEADER_USER_AGENT, c(clientConfiguration, executionContext.b()));
        }
    }

    private String c(ClientConfiguration clientConfiguration, String str) {
        if (clientConfiguration.h().contains(str)) {
            return clientConfiguration.h();
        }
        return clientConfiguration.h() + " " + str;
    }

    public HttpRequest b(Request<?> request, ClientConfiguration clientConfiguration, ExecutionContext executionContext) {
        String b10;
        boolean z10;
        URI endpoint = request.getEndpoint();
        boolean z11 = true;
        if (request.m() != null) {
            b10 = HttpUtils.c(endpoint.toString(), request.m());
        } else {
            b10 = HttpUtils.b(endpoint.toString(), request.l(), true);
        }
        String d10 = HttpUtils.d(request);
        HttpMethodName j10 = request.j();
        if (request.getContent() != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        HttpMethodName httpMethodName = HttpMethodName.POST;
        if (j10 == httpMethodName && !z10) {
            z11 = false;
        }
        if (d10 != null && z11) {
            b10 = b10 + "?" + d10;
        }
        HashMap hashMap = new HashMap();
        a(hashMap, request, executionContext, clientConfiguration);
        InputStream content = request.getContent();
        HttpMethodName httpMethodName2 = HttpMethodName.PATCH;
        if (j10 == httpMethodName2) {
            hashMap.put("X-HTTP-Method-Override", httpMethodName2.toString());
            j10 = httpMethodName;
        }
        if (j10 == httpMethodName && request.getContent() == null && d10 != null) {
            byte[] bytes = d10.getBytes(StringUtils.f6417a);
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bytes);
            hashMap.put("Content-Length", String.valueOf(bytes.length));
            content = byteArrayInputStream;
        }
        if (clientConfiguration.k() && hashMap.get("Accept-Encoding") == null) {
            hashMap.put("Accept-Encoding", "gzip");
        } else {
            hashMap.put("Accept-Encoding", "identity");
        }
        HttpRequest httpRequest = new HttpRequest(j10.toString(), URI.create(b10), hashMap, content);
        httpRequest.g(request.i());
        return httpRequest;
    }
}
