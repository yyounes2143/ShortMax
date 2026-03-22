package okhttp3.internal.http;

import com.mbridge.msdk.foundation.download.Command;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.io.IOException;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import okhttp3.Cookie;
import okhttp3.CookieJar;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.Util;
import okio.GzipSource;
import okio.Okio;
import org.jetbrains.annotations.NotNull;
/* compiled from: BridgeInterceptor.kt */
@Metadata
@SourceDebugExtension({"SMAP\nBridgeInterceptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BridgeInterceptor.kt\nokhttp3/internal/http/BridgeInterceptor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,117:1\n1864#2,3:118\n*S KotlinDebug\n*F\n+ 1 BridgeInterceptor.kt\nokhttp3/internal/http/BridgeInterceptor\n*L\n111#1:118,3\n*E\n"})
/* loaded from: classes8.dex */
public final class BridgeInterceptor implements Interceptor {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final CookieJar f63859a;

    public BridgeInterceptor(@NotNull CookieJar cookieJar) {
        Intrinsics.checkNotNullParameter(cookieJar, "cookieJar");
        this.f63859a = cookieJar;
    }

    private final String a(List<Cookie> list) {
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
            sb2.append(cookie.e());
            sb2.append('=');
            sb2.append(cookie.g());
            i10 = i11;
        }
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "StringBuilder().apply(builderAction).toString()");
        return sb3;
    }

    @Override // okhttp3.Interceptor
    @NotNull
    public Response intercept(@NotNull Interceptor.Chain chain) throws IOException {
        ResponseBody d10;
        Intrinsics.checkNotNullParameter(chain, "chain");
        Request request = chain.request();
        Request.Builder i10 = request.i();
        RequestBody a10 = request.a();
        if (a10 != null) {
            MediaType contentType = a10.contentType();
            if (contentType != null) {
                i10.e(CommonGatewayClient.HEADER_CONTENT_TYPE, contentType.toString());
            }
            long contentLength = a10.contentLength();
            if (contentLength != -1) {
                i10.e("Content-Length", String.valueOf(contentLength));
                i10.i("Transfer-Encoding");
            } else {
                i10.e("Transfer-Encoding", "chunked");
                i10.i("Content-Length");
            }
        }
        boolean z10 = false;
        if (request.d("Host") == null) {
            i10.e("Host", Util.U(request.l(), false, 1, null));
        }
        if (request.d("Connection") == null) {
            i10.e("Connection", "Keep-Alive");
        }
        if (request.d("Accept-Encoding") == null && request.d(Command.HTTP_HEADER_RANGE) == null) {
            i10.e("Accept-Encoding", "gzip");
            z10 = true;
        }
        List<Cookie> a11 = this.f63859a.a(request.l());
        if (!a11.isEmpty()) {
            i10.e("Cookie", a(a11));
        }
        if (request.d(Command.HTTP_HEADER_USER_AGENT) == null) {
            i10.e(Command.HTTP_HEADER_USER_AGENT, com.applovin.shadow.okhttp3.internal.Util.userAgent);
        }
        Response a12 = chain.a(i10.b());
        HttpHeaders.f(this.f63859a, request.l(), a12.u());
        Response.Builder r10 = a12.F().r(request);
        if (z10 && StringsKt.G("gzip", Response.t(a12, "Content-Encoding", null, 2, null), true) && HttpHeaders.b(a12) && (d10 = a12.d()) != null) {
            GzipSource gzipSource = new GzipSource(d10.source());
            r10.k(a12.u().e().i("Content-Encoding").i("Content-Length").f());
            r10.b(new RealResponseBody(Response.t(a12, CommonGatewayClient.HEADER_CONTENT_TYPE, null, 2, null), -1L, Okio.buffer(gzipSource)));
        }
        return r10.c();
    }
}
