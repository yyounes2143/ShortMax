package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class Da {

    /* renamed from: a  reason: collision with root package name */
    public final C3274za f23593a;

    /* renamed from: b  reason: collision with root package name */
    public final int f23594b;

    /* renamed from: c  reason: collision with root package name */
    public final String f23595c;

    /* renamed from: d  reason: collision with root package name */
    public final long f23596d;

    public Da(C3274za ping, int i10, String str) {
        long currentTimeMillis = System.currentTimeMillis();
        Intrinsics.checkNotNullParameter(ping, "ping");
        this.f23593a = ping;
        this.f23594b = i10;
        this.f23595c = str;
        this.f23596d = currentTimeMillis;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Da)) {
            return false;
        }
        Da da2 = (Da) obj;
        if (Intrinsics.areEqual(this.f23593a, da2.f23593a) && this.f23594b == da2.f23594b && Intrinsics.areEqual(this.f23595c, da2.f23595c) && this.f23596d == da2.f23596d) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2 = (Integer.hashCode(this.f23594b) + (this.f23593a.hashCode() * 31)) * 31;
        String str = this.f23595c;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        return Long.hashCode(this.f23596d) + ((hashCode2 + hashCode) * 31);
    }

    public final String toString() {
        return "PingResult(ping=" + this.f23593a + ", statusCode=" + this.f23594b + ", error=" + this.f23595c + ", timestamp=" + this.f23596d + ')';
    }
}
