package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class J2 {

    /* renamed from: a  reason: collision with root package name */
    public final String f23748a;

    /* renamed from: b  reason: collision with root package name */
    public final String f23749b;

    public J2(String url, String accountId) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        this.f23748a = url;
        this.f23749b = accountId;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof J2)) {
            return false;
        }
        J2 j22 = (J2) obj;
        if (Intrinsics.areEqual(this.f23748a, j22.f23748a) && Intrinsics.areEqual(this.f23749b, j22.f23749b)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.f23749b.hashCode() + (this.f23748a.hashCode() * 31);
    }

    public final String toString() {
        return "ConfigIdentifier(url=" + this.f23748a + ", accountId=" + this.f23749b + ')';
    }
}
