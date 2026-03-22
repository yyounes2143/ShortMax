package com.moloco.sdk.xenoss.sdkdevkit.android.core;

import io.ktor.client.plugins.HttpTimeout;
import io.ktor.client.request.HttpRequestBuilder;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes6.dex */
public final class c {
    public static final Unit a(long j10, HttpTimeout.a timeout) {
        Intrinsics.checkNotNullParameter(timeout, "$this$timeout");
        timeout.g(Long.valueOf(j10));
        return Unit.f60915a;
    }

    public static final void b(@NotNull HttpRequestBuilder httpRequestBuilder, final long j10) {
        Intrinsics.checkNotNullParameter(httpRequestBuilder, "<this>");
        io.ktor.client.plugins.d.e(httpRequestBuilder, new Function1() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.core.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return c.a(j10, (HttpTimeout.a) obj);
            }
        });
    }
}
