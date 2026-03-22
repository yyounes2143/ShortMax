package com.moloco.sdk.acm.http;

import io.ktor.client.HttpClient;
import io.ktor.client.HttpClientConfig;
import io.ktor.client.plugins.HttpTimeout;
import io.ktor.client.plugins.UserAgent;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes6.dex */
public final class h {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final ms.i f31964a = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.acm.http.e
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return h.a();
        }
    });

    public static final HttpClient a() {
        return mr.b.a(new Function1() { // from class: com.moloco.sdk.acm.http.g
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return h.b((HttpClientConfig) obj);
            }
        });
    }

    public static final Unit b(HttpClientConfig HttpClient) {
        Intrinsics.checkNotNullParameter(HttpClient, "$this$HttpClient");
        HttpClientConfig.j(HttpClient, UserAgent.f59110b, null, 2, null);
        HttpClientConfig.j(HttpClient, HttpTimeout.f59087d, null, 2, null);
        return Unit.f60915a;
    }

    public static final HttpClient c() {
        return (HttpClient) f31964a.getValue();
    }

    @NotNull
    public static final HttpClient d() {
        return c();
    }
}
