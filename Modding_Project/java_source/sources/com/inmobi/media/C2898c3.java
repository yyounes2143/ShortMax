package com.inmobi.media;

import java.util.concurrent.TimeUnit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Dispatcher;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
/* renamed from: com.inmobi.media.c3  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2898c3 {

    /* renamed from: a  reason: collision with root package name */
    public final OkHttpClient f24540a;

    /* renamed from: b  reason: collision with root package name */
    public final long f24541b;

    public C2898c3(Interceptor[] interceptorArr, Dispatcher dispatcher, C2991he timeoutConfig) {
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        Intrinsics.checkNotNullParameter(timeoutConfig, "timeoutConfig");
        this.f24541b = timeoutConfig.f24829c;
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        if (interceptorArr != null) {
            for (Interceptor interceptor : interceptorArr) {
                builder.a(interceptor);
            }
        }
        builder.a(new C3276zc());
        builder.b(new C3112p7());
        builder.T(CollectionsKt.t(Protocol.HTTP_2, Protocol.HTTP_1_1));
        builder.W(false);
        builder.i(dispatcher);
        long j10 = timeoutConfig.f24827a;
        TimeUnit timeUnit = TimeUnit.SECONDS;
        builder.f(j10, timeUnit);
        builder.V(timeoutConfig.f24828b, timeUnit);
        builder.e(timeoutConfig.f24829c, timeUnit);
        OkHttpClient c10 = builder.c();
        Intrinsics.checkNotNullExpressionValue(c10, "build(...)");
        this.f24540a = c10;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0059 A[Catch: all -> 0x003f, CancellationException -> 0x0043, Exception -> 0x00ab, IOException -> 0x00ad, SocketTimeoutException -> 0x00af, MalformedURLException -> 0x00b1, TryCatch #5 {MalformedURLException -> 0x00b1, SocketTimeoutException -> 0x00af, IOException -> 0x00ad, CancellationException -> 0x0043, Exception -> 0x00ab, all -> 0x003f, blocks: (B:6:0x0025, B:8:0x002f, B:16:0x0049, B:18:0x0059, B:20:0x005f, B:22:0x0065, B:24:0x006b, B:25:0x006f, B:29:0x0081, B:31:0x0090, B:32:0x0099, B:15:0x0047), top: B:79:0x0025 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0090 A[Catch: all -> 0x003f, CancellationException -> 0x0043, Exception -> 0x00ab, IOException -> 0x00ad, SocketTimeoutException -> 0x00af, MalformedURLException -> 0x00b1, TryCatch #5 {MalformedURLException -> 0x00b1, SocketTimeoutException -> 0x00af, IOException -> 0x00ad, CancellationException -> 0x0043, Exception -> 0x00ab, all -> 0x003f, blocks: (B:6:0x0025, B:8:0x002f, B:16:0x0049, B:18:0x0059, B:20:0x005f, B:22:0x0065, B:24:0x006b, B:25:0x006f, B:29:0x0081, B:31:0x0090, B:32:0x0099, B:15:0x0047), top: B:79:0x0025 }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0099 A[Catch: all -> 0x003f, CancellationException -> 0x0043, Exception -> 0x00ab, IOException -> 0x00ad, SocketTimeoutException -> 0x00af, MalformedURLException -> 0x00b1, TRY_LEAVE, TryCatch #5 {MalformedURLException -> 0x00b1, SocketTimeoutException -> 0x00af, IOException -> 0x00ad, CancellationException -> 0x0043, Exception -> 0x00ab, all -> 0x003f, blocks: (B:6:0x0025, B:8:0x002f, B:16:0x0049, B:18:0x0059, B:20:0x005f, B:22:0x0065, B:24:0x006b, B:25:0x006f, B:29:0x0081, B:31:0x0090, B:32:0x0099, B:15:0x0047), top: B:79:0x0025 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.inmobi.media.O9 a(final okhttp3.OkHttpClient r18, final okhttp3.Request r19, java.lang.String r20) {
        /*
            Method dump skipped, instructions count: 262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C2898c3.a(okhttp3.OkHttpClient, okhttp3.Request, java.lang.String):com.inmobi.media.O9");
    }

    public static final Response a(OkHttpClient client, Request okHttpRequest) {
        Intrinsics.checkNotNullParameter(client, "$client");
        Intrinsics.checkNotNullParameter(okHttpRequest, "$okHttpRequest");
        return client.a(okHttpRequest).execute();
    }
}
