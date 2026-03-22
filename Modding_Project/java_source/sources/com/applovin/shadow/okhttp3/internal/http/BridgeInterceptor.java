package com.applovin.shadow.okhttp3.internal.http;

import com.applovin.shadow.okhttp3.Cookie;
import com.applovin.shadow.okhttp3.CookieJar;
import com.applovin.shadow.okhttp3.Interceptor;
import com.applovin.shadow.okhttp3.MediaType;
import com.applovin.shadow.okhttp3.Request;
import com.applovin.shadow.okhttp3.RequestBody;
import com.applovin.shadow.okhttp3.Response;
import com.applovin.shadow.okhttp3.ResponseBody;
import com.applovin.shadow.okhttp3.internal.Util;
import com.applovin.shadow.okio.GzipSource;
import com.applovin.shadow.okio.Okio;
import com.mbridge.msdk.foundation.download.Command;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.io.IOException;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: BridgeInterceptor.kt */
@Metadata
@SourceDebugExtension({"SMAP\nBridgeInterceptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BridgeInterceptor.kt\nokhttp3/internal/http/BridgeInterceptor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,117:1\n1864#2,3:118\n*S KotlinDebug\n*F\n+ 1 BridgeInterceptor.kt\nokhttp3/internal/http/BridgeInterceptor\n*L\n111#1:118,3\n*E\n"})
/* loaded from: classes2.dex */
public final class BridgeInterceptor implements Interceptor {
    @NotNull
    private final CookieJar cookieJar;

    public BridgeInterceptor(@NotNull CookieJar cookieJar) {
        Intrinsics.checkNotNullParameter(cookieJar, "cookieJar");
        this.cookieJar = cookieJar;
    }

    private final String cookieHeader(List<Cookie> list) {
        StringBuilder sb2 = new StringBuilder();
        int i10 = 0;
        for (Object obj : list) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt.y();
            }
            Cookie cookie = (Cookie) obj;
            if (i10 > 0) {
                sb2.append("; ");
            }
            sb2.append(cookie.name());
            sb2.append('=');
            sb2.append(cookie.value());
            i10 = i11;
        }
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "StringBuilder().apply(builderAction).toString()");
        return sb3;
    }

    @Override // com.applovin.shadow.okhttp3.Interceptor
    @NotNull
    public Response intercept(@NotNull Interceptor.Chain chain) throws IOException {
        ResponseBody body;
        Intrinsics.checkNotNullParameter(chain, "chain");
        Request request = chain.request();
        Request.Builder newBuilder = request.newBuilder();
        RequestBody body2 = request.body();
        if (body2 != null) {
            MediaType contentType = body2.contentType();
            if (contentType != null) {
                newBuilder.header(CommonGatewayClient.HEADER_CONTENT_TYPE, contentType.toString());
            }
            long contentLength = body2.contentLength();
            if (contentLength != -1) {
                newBuilder.header("Content-Length", String.valueOf(contentLength));
                newBuilder.removeHeader("Transfer-Encoding");
            } else {
                newBuilder.header("Transfer-Encoding", "chunked");
                newBuilder.removeHeader("Content-Length");
            }
        }
        boolean z10 = false;
        if (request.header("Host") == null) {
            newBuilder.header("Host", Util.toHostHeader$default(request.url(), false, 1, null));
        }
        if (request.header("Connection") == null) {
            newBuilder.header("Connection", "Keep-Alive");
        }
        if (request.header("Accept-Encoding") == null && request.header(Command.HTTP_HEADER_RANGE) == null) {
            newBuilder.header("Accept-Encoding", "gzip");
            z10 = true;
        }
        List<Cookie> loadForRequest = this.cookieJar.loadForRequest(request.url());
        if (!loadForRequest.isEmpty()) {
            newBuilder.header("Cookie", cookieHeader(loadForRequest));
        }
        if (request.header(Command.HTTP_HEADER_USER_AGENT) == null) {
            newBuilder.header(Command.HTTP_HEADER_USER_AGENT, Util.userAgent);
        }
        Response proceed = chain.proceed(newBuilder.build());
        HttpHeaders.receiveHeaders(this.cookieJar, request.url(), proceed.headers());
        Response.Builder request2 = proceed.newBuilder().request(request);
        if (z10 && StringsKt.G("gzip", Response.header$default(proceed, "Content-Encoding", null, 2, null), true) && HttpHeaders.promisesBody(proceed) && (body = proceed.body()) != null) {
            GzipSource gzipSource = new GzipSource(body.source());
            request2.headers(proceed.headers().newBuilder().removeAll("Content-Encoding").removeAll("Content-Length").build());
            request2.body(new RealResponseBody(Response.header$default(proceed, CommonGatewayClient.HEADER_CONTENT_TYPE, null, 2, null), -1L, Okio.buffer(gzipSource)));
        }
        return request2.build();
    }
}
