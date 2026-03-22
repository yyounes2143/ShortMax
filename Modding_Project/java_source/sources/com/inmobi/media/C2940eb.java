package com.inmobi.media;
/* renamed from: com.inmobi.media.eb  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2940eb {

    /* renamed from: a  reason: collision with root package name */
    public int f24661a = 0;

    /* renamed from: b  reason: collision with root package name */
    public int f24662b = 0;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2940eb)) {
            return false;
        }
        C2940eb c2940eb = (C2940eb) obj;
        if (this.f24661a == c2940eb.f24661a && this.f24662b == c2940eb.f24662b) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f24662b) + (Integer.hashCode(this.f24661a) * 31);
    }

    public final String toString() {
        return "PurchaseData(noOfInAppPurchases=" + this.f24661a + ", noOfSubscriptions=" + this.f24662b + ')';
    }
}
