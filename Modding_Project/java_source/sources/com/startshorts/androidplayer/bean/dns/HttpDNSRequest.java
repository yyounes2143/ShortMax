package com.startshorts.androidplayer.bean.dns;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: HttpDNSRequest.kt */
@Metadata
/* loaded from: classes6.dex */
public final class HttpDNSRequest {
    @NotNull
    private final String signature;
    @NotNull
    private final String url;

    public HttpDNSRequest(@NotNull String url, @NotNull String signature) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(signature, "signature");
        this.url = url;
        this.signature = signature;
    }

    public static /* synthetic */ HttpDNSRequest copy$default(HttpDNSRequest httpDNSRequest, String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = httpDNSRequest.url;
        }
        if ((i10 & 2) != 0) {
            str2 = httpDNSRequest.signature;
        }
        return httpDNSRequest.copy(str, str2);
    }

    @NotNull
    public final String component1() {
        return this.url;
    }

    @NotNull
    public final String component2() {
        return this.signature;
    }

    @NotNull
    public final HttpDNSRequest copy(@NotNull String url, @NotNull String signature) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(signature, "signature");
        return new HttpDNSRequest(url, signature);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HttpDNSRequest)) {
            return false;
        }
        HttpDNSRequest httpDNSRequest = (HttpDNSRequest) obj;
        if (Intrinsics.areEqual(this.url, httpDNSRequest.url) && Intrinsics.areEqual(this.signature, httpDNSRequest.signature)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getSignature() {
        return this.signature;
    }

    @NotNull
    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        return (this.url.hashCode() * 31) + this.signature.hashCode();
    }

    @NotNull
    public String toString() {
        return "HttpDNSRequest(url=" + this.url + ", signature=" + this.signature + ')';
    }
}
