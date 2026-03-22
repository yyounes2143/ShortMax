package io.ktor.client.plugins;

import java.io.IOException;
import kotlin.Metadata;
/* compiled from: HttpTimeout.kt */
@Metadata
/* loaded from: classes8.dex */
public final class HttpRequestTimeoutException extends IOException {
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public HttpRequestTimeoutException(@org.jetbrains.annotations.NotNull java.lang.String r3, @org.jetbrains.annotations.Nullable java.lang.Long r4) {
        /*
            r2 = this;
            java.lang.String r0 = "url"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Request timeout has expired [url="
            r0.append(r1)
            r0.append(r3)
            java.lang.String r3 = ", request_timeout="
            r0.append(r3)
            if (r4 != 0) goto L1b
            java.lang.String r4 = "unknown"
        L1b:
            r0.append(r4)
            java.lang.String r3 = " ms]"
            r0.append(r3)
            java.lang.String r3 = r0.toString()
            r2.<init>(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.plugins.HttpRequestTimeoutException.<init>(java.lang.String, java.lang.Long):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public HttpRequestTimeoutException(@org.jetbrains.annotations.NotNull io.ktor.client.request.HttpRequestBuilder r3) {
        /*
            r2 = this;
            java.lang.String r0 = "request"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            io.ktor.http.h r0 = r3.i()
            java.lang.String r0 = r0.c()
            io.ktor.client.plugins.HttpTimeout$Plugin r1 = io.ktor.client.plugins.HttpTimeout.f59087d
            java.lang.Object r3 = r3.f(r1)
            io.ktor.client.plugins.HttpTimeout$a r3 = (io.ktor.client.plugins.HttpTimeout.a) r3
            if (r3 == 0) goto L1c
            java.lang.Long r3 = r3.d()
            goto L1d
        L1c:
            r3 = 0
        L1d:
            r2.<init>(r0, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.plugins.HttpRequestTimeoutException.<init>(io.ktor.client.request.HttpRequestBuilder):void");
    }
}
