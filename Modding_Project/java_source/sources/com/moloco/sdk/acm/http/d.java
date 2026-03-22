package com.moloco.sdk.acm.http;

import io.ktor.client.HttpClient;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes6.dex */
public final class d {

    /* renamed from: b  reason: collision with root package name */
    public static HttpClient f31950b;

    /* renamed from: c  reason: collision with root package name */
    public static String f31951c;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final d f31949a = new d();
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final ms.i f31952d = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.acm.http.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return d.c();
        }
    });

    public static final f c() {
        HttpClient httpClient = f31950b;
        String str = null;
        if (httpClient == null) {
            Intrinsics.throwUninitializedPropertyAccessException("httpClient");
            httpClient = null;
        }
        String str2 = f31951c;
        if (str2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("apiUrl");
        } else {
            str = str2;
        }
        return new f(httpClient, str);
    }

    @NotNull
    public final j a() {
        return (j) f31952d.getValue();
    }

    public final void b(@NotNull HttpClient httpClient, @NotNull String apiUrl) {
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        Intrinsics.checkNotNullParameter(apiUrl, "apiUrl");
        if (f31950b == null) {
            f31950b = httpClient;
            f31951c = apiUrl;
        }
    }
}
