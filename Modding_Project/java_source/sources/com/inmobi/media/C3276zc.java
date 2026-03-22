package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
/* renamed from: com.inmobi.media.zc  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3276zc implements Interceptor {
    @Override // okhttp3.Interceptor
    public final Response intercept(Interceptor.Chain chain) {
        Intrinsics.checkNotNullParameter(chain, "chain");
        Request request = chain.request();
        request.j();
        Response a10 = chain.a(request);
        Intrinsics.checkNotNullExpressionValue(a10, "proceed(...)");
        return a10;
    }
}
