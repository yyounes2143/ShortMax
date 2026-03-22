package com.inmobi.media;

import java.net.MalformedURLException;
import java.net.URL;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Interceptor;
import okhttp3.Response;
/* renamed from: com.inmobi.media.p7  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3112p7 implements Interceptor {
    @Override // okhttp3.Interceptor
    public final Response intercept(Interceptor.Chain chain) {
        String str;
        Intrinsics.checkNotNullParameter(chain, "chain");
        Response a10 = chain.a(chain.request());
        if (a10.v()) {
            Intrinsics.checkNotNull(a10);
            Intrinsics.checkNotNullParameter(a10, "<this>");
            if (a10.v()) {
                str = a10.r("Location");
            } else {
                str = null;
            }
            if (str != null) {
                Intrinsics.checkNotNullParameter(str, "<this>");
                try {
                    new URL(str);
                } catch (MalformedURLException unused) {
                }
            }
            chain.call().cancel();
            throw new MalformedURLException(AbstractC2977h0.a("Invalid URL in Location header: ", str));
        }
        Intrinsics.checkNotNull(a10);
        return a10;
    }
}
