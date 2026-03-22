package com.inmobi.media;
/* renamed from: com.inmobi.media.tc  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3180tc {

    /* renamed from: a  reason: collision with root package name */
    public final int f25309a;

    /* renamed from: b  reason: collision with root package name */
    public final int f25310b;

    public C3180tc(int i10, int i11) {
        this.f25309a = i10;
        this.f25310b = i11;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3180tc)) {
            return false;
        }
        C3180tc c3180tc = (C3180tc) obj;
        if (this.f25309a == c3180tc.f25309a && this.f25310b == c3180tc.f25310b && Double.compare(1.0d, 1.0d) == 0) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = Integer.hashCode(this.f25310b);
        return Double.hashCode(1.0d) + ((hashCode + (Integer.hashCode(this.f25309a) * 31)) * 31);
    }

    public final String toString() {
        return "RetryPolicy(maxNoOfRetries=" + this.f25309a + ", delayInMillis=" + this.f25310b + ", delayFactor=1.0)";
    }
}
