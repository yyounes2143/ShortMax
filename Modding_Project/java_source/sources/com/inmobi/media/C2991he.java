package com.inmobi.media;
/* renamed from: com.inmobi.media.he  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2991he {

    /* renamed from: a  reason: collision with root package name */
    public final long f24827a;

    /* renamed from: b  reason: collision with root package name */
    public final long f24828b;

    /* renamed from: c  reason: collision with root package name */
    public final long f24829c;

    public C2991he(long j10, long j11, long j12) {
        this.f24827a = j10;
        this.f24828b = j11;
        this.f24829c = j12;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2991he)) {
            return false;
        }
        C2991he c2991he = (C2991he) obj;
        if (this.f24827a == c2991he.f24827a && this.f24828b == c2991he.f24828b && this.f24829c == c2991he.f24829c) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = Long.hashCode(this.f24828b);
        return Long.hashCode(this.f24829c) + ((hashCode + (Long.hashCode(this.f24827a) * 31)) * 31);
    }

    public final String toString() {
        return "TimeoutConfig(connectTimeoutInSec=" + this.f24827a + ", readTimeoutInSec=" + this.f24828b + ", callTimeoutInSec=" + this.f24829c + ')';
    }
}
