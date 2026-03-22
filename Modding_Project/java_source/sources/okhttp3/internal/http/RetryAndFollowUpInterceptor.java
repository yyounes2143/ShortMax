package okhttp3.internal.http;

import androidx.browser.trusted.sharing.ShareTarget;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.Route;
import okhttp3.internal.Util;
import okhttp3.internal.connection.Exchange;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.connection.RealConnection;
import org.jetbrains.annotations.NotNull;
/* compiled from: RetryAndFollowUpInterceptor.kt */
@Metadata
/* loaded from: classes8.dex */
public final class RetryAndFollowUpInterceptor implements Interceptor {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final Companion f63881b = new Companion(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final OkHttpClient f63882a;

    /* compiled from: RetryAndFollowUpInterceptor.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public RetryAndFollowUpInterceptor(@NotNull OkHttpClient client) {
        Intrinsics.checkNotNullParameter(client, "client");
        this.f63882a = client;
    }

    private final Request a(Response response, String str) {
        String t10;
        HttpUrl s10;
        boolean z10;
        RequestBody requestBody = null;
        if (!this.f63882a.s() || (t10 = Response.t(response, "Location", null, 2, null)) == null || (s10 = response.W().l().s(t10)) == null) {
            return null;
        }
        if (!Intrinsics.areEqual(s10.t(), response.W().l().t()) && !this.f63882a.t()) {
            return null;
        }
        Request.Builder i10 = response.W().i();
        if (HttpMethod.b(str)) {
            int o10 = response.o();
            HttpMethod httpMethod = HttpMethod.f63867a;
            if (!httpMethod.d(str) && o10 != 308 && o10 != 307) {
                z10 = false;
            } else {
                z10 = true;
            }
            if (httpMethod.c(str) && o10 != 308 && o10 != 307) {
                i10.g(ShareTarget.METHOD_GET, null);
            } else {
                if (z10) {
                    requestBody = response.W().a();
                }
                i10.g(str, requestBody);
            }
            if (!z10) {
                i10.i("Transfer-Encoding");
                i10.i("Content-Length");
                i10.i(CommonGatewayClient.HEADER_CONTENT_TYPE);
            }
        }
        if (!Util.j(response.W().l(), s10)) {
            i10.i("Authorization");
        }
        return i10.l(s10).b();
    }

    private final Request b(Response response, Exchange exchange) throws IOException {
        Route route;
        RealConnection h10;
        if (exchange != null && (h10 = exchange.h()) != null) {
            route = h10.A();
        } else {
            route = null;
        }
        int o10 = response.o();
        String h11 = response.W().h();
        if (o10 != 307 && o10 != 308) {
            if (o10 != 401) {
                if (o10 != 421) {
                    if (o10 != 503) {
                        if (o10 != 407) {
                            if (o10 != 408) {
                                switch (o10) {
                                    case 300:
                                    case 301:
                                    case 302:
                                    case 303:
                                        break;
                                    default:
                                        return null;
                                }
                            } else if (!this.f63882a.G()) {
                                return null;
                            } else {
                                RequestBody a10 = response.W().a();
                                if (a10 != null && a10.isOneShot()) {
                                    return null;
                                }
                                Response P = response.P();
                                if ((P != null && P.o() == 408) || f(response, 0) > 0) {
                                    return null;
                                }
                                return response.W();
                            }
                        } else {
                            Intrinsics.checkNotNull(route);
                            if (route.b().type() == Proxy.Type.HTTP) {
                                return this.f63882a.D().a(route, response);
                            }
                            throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
                        }
                    } else {
                        Response P2 = response.P();
                        if ((P2 != null && P2.o() == 503) || f(response, Integer.MAX_VALUE) != 0) {
                            return null;
                        }
                        return response.W();
                    }
                } else {
                    RequestBody a11 = response.W().a();
                    if ((a11 != null && a11.isOneShot()) || exchange == null || !exchange.l()) {
                        return null;
                    }
                    exchange.h().y();
                    return response.W();
                }
            } else {
                return this.f63882a.f().a(route, response);
            }
        }
        return a(response, h11);
    }

    private final boolean c(IOException iOException, boolean z10) {
        if (iOException instanceof ProtocolException) {
            return false;
        }
        if (iOException instanceof InterruptedIOException) {
            if (!(iOException instanceof SocketTimeoutException) || z10) {
                return false;
            }
            return true;
        } else if (((iOException instanceof SSLHandshakeException) && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) {
            return false;
        } else {
            return true;
        }
    }

    private final boolean d(IOException iOException, RealCall realCall, Request request, boolean z10) {
        if (!this.f63882a.G()) {
            return false;
        }
        if ((z10 && e(iOException, request)) || !c(iOException, z10) || !realCall.w()) {
            return false;
        }
        return true;
    }

    private final boolean e(IOException iOException, Request request) {
        RequestBody a10 = request.a();
        if ((a10 != null && a10.isOneShot()) || (iOException instanceof FileNotFoundException)) {
            return true;
        }
        return false;
    }

    private final int f(Response response, int i10) {
        String t10 = Response.t(response, CommonGatewayClient.HEADER_RETRY_AFTER, null, 2, null);
        if (t10 == null) {
            return i10;
        }
        if (new Regex("\\d+").k(t10)) {
            Integer valueOf = Integer.valueOf(t10);
            Intrinsics.checkNotNullExpressionValue(valueOf, "valueOf(header)");
            return valueOf.intValue();
        }
        return Integer.MAX_VALUE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0040, code lost:
        r7 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0045, code lost:
        r0 = r1.o();
        r6 = b(r7, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x004d, code lost:
        if (r6 != null) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x004f, code lost:
        if (r0 == null) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0055, code lost:
        if (r0.m() == false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0057, code lost:
        r1.y();
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x005a, code lost:
        r1.j(false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x005d, code lost:
        return r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x005e, code lost:
        r0 = r6.a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0062, code lost:
        if (r0 == null) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0068, code lost:
        if (r0.isOneShot() == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x006a, code lost:
        r1.j(false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x006d, code lost:
        return r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x006e, code lost:
        r0 = r7.d();
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0072, code lost:
        if (r0 == null) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0074, code lost:
        okhttp3.internal.Util.m(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0077, code lost:
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x007b, code lost:
        if (r8 > 20) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0098, code lost:
        throw new java.net.ProtocolException("Too many follow-up requests: " + r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0026, code lost:
        if (r7 == null) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0028, code lost:
        r0 = r0.F().o(r7.F().b(null).c()).c();
     */
    @Override // okhttp3.Interceptor
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public okhttp3.Response intercept(@org.jetbrains.annotations.NotNull okhttp3.Interceptor.Chain r11) throws java.io.IOException {
        /*
            r10 = this;
            java.lang.String r0 = "chain"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r11, r0)
            okhttp3.internal.http.RealInterceptorChain r11 = (okhttp3.internal.http.RealInterceptorChain) r11
            okhttp3.Request r0 = r11.h()
            okhttp3.internal.connection.RealCall r1 = r11.d()
            java.util.List r2 = kotlin.collections.CollectionsKt.n()
            r3 = 0
            r4 = 0
            r5 = 1
            r8 = r3
            r7 = r4
        L18:
            r6 = r5
        L19:
            r1.i(r0, r6)
            boolean r6 = r1.isCanceled()     // Catch: java.lang.Throwable -> L42
            if (r6 != 0) goto Ld3
            okhttp3.Response r0 = r11.a(r0)     // Catch: java.lang.Throwable -> L42 java.io.IOException -> L99 okhttp3.internal.connection.RouteException -> Lb4
            if (r7 == 0) goto L40
            okhttp3.Response$Builder r0 = r0.F()     // Catch: java.lang.Throwable -> L42
            okhttp3.Response$Builder r6 = r7.F()     // Catch: java.lang.Throwable -> L42
            okhttp3.Response$Builder r6 = r6.b(r4)     // Catch: java.lang.Throwable -> L42
            okhttp3.Response r6 = r6.c()     // Catch: java.lang.Throwable -> L42
            okhttp3.Response$Builder r0 = r0.o(r6)     // Catch: java.lang.Throwable -> L42
            okhttp3.Response r0 = r0.c()     // Catch: java.lang.Throwable -> L42
        L40:
            r7 = r0
            goto L45
        L42:
            r11 = move-exception
            goto Ldb
        L45:
            okhttp3.internal.connection.Exchange r0 = r1.o()     // Catch: java.lang.Throwable -> L42
            okhttp3.Request r6 = r10.b(r7, r0)     // Catch: java.lang.Throwable -> L42
            if (r6 != 0) goto L5e
            if (r0 == 0) goto L5a
            boolean r11 = r0.m()     // Catch: java.lang.Throwable -> L42
            if (r11 == 0) goto L5a
            r1.y()     // Catch: java.lang.Throwable -> L42
        L5a:
            r1.j(r3)
            return r7
        L5e:
            okhttp3.RequestBody r0 = r6.a()     // Catch: java.lang.Throwable -> L42
            if (r0 == 0) goto L6e
            boolean r0 = r0.isOneShot()     // Catch: java.lang.Throwable -> L42
            if (r0 == 0) goto L6e
            r1.j(r3)
            return r7
        L6e:
            okhttp3.ResponseBody r0 = r7.d()     // Catch: java.lang.Throwable -> L42
            if (r0 == 0) goto L77
            okhttp3.internal.Util.m(r0)     // Catch: java.lang.Throwable -> L42
        L77:
            int r8 = r8 + 1
            r0 = 20
            if (r8 > r0) goto L82
            r1.j(r5)
            r0 = r6
            goto L18
        L82:
            java.net.ProtocolException r11 = new java.net.ProtocolException     // Catch: java.lang.Throwable -> L42
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L42
            r0.<init>()     // Catch: java.lang.Throwable -> L42
            java.lang.String r2 = "Too many follow-up requests: "
            r0.append(r2)     // Catch: java.lang.Throwable -> L42
            r0.append(r8)     // Catch: java.lang.Throwable -> L42
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L42
            r11.<init>(r0)     // Catch: java.lang.Throwable -> L42
            throw r11     // Catch: java.lang.Throwable -> L42
        L99:
            r6 = move-exception
            boolean r9 = r6 instanceof okhttp3.internal.http2.ConnectionShutdownException     // Catch: java.lang.Throwable -> L42
            r9 = r9 ^ r5
            boolean r9 = r10.d(r6, r1, r0, r9)     // Catch: java.lang.Throwable -> L42
            if (r9 == 0) goto Laf
            java.util.Collection r2 = (java.util.Collection) r2     // Catch: java.lang.Throwable -> L42
            java.util.List r2 = kotlin.collections.CollectionsKt.L0(r2, r6)     // Catch: java.lang.Throwable -> L42
        La9:
            r1.j(r5)
            r6 = r3
            goto L19
        Laf:
            java.lang.Throwable r11 = okhttp3.internal.Util.b0(r6, r2)     // Catch: java.lang.Throwable -> L42
            throw r11     // Catch: java.lang.Throwable -> L42
        Lb4:
            r6 = move-exception
            java.io.IOException r9 = r6.e()     // Catch: java.lang.Throwable -> L42
            boolean r9 = r10.d(r9, r1, r0, r3)     // Catch: java.lang.Throwable -> L42
            if (r9 == 0) goto Lca
            java.util.Collection r2 = (java.util.Collection) r2     // Catch: java.lang.Throwable -> L42
            java.io.IOException r6 = r6.d()     // Catch: java.lang.Throwable -> L42
            java.util.List r2 = kotlin.collections.CollectionsKt.L0(r2, r6)     // Catch: java.lang.Throwable -> L42
            goto La9
        Lca:
            java.io.IOException r11 = r6.d()     // Catch: java.lang.Throwable -> L42
            java.lang.Throwable r11 = okhttp3.internal.Util.b0(r11, r2)     // Catch: java.lang.Throwable -> L42
            throw r11     // Catch: java.lang.Throwable -> L42
        Ld3:
            java.io.IOException r11 = new java.io.IOException     // Catch: java.lang.Throwable -> L42
            java.lang.String r0 = "Canceled"
            r11.<init>(r0)     // Catch: java.lang.Throwable -> L42
            throw r11     // Catch: java.lang.Throwable -> L42
        Ldb:
            r1.j(r5)
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http.RetryAndFollowUpInterceptor.intercept(okhttp3.Interceptor$Chain):okhttp3.Response");
    }
}
