package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class K6 {

    /* renamed from: a  reason: collision with root package name */
    public final int f23777a;

    /* renamed from: b  reason: collision with root package name */
    public final Integer f23778b;

    public K6(int i10) {
        this.f23777a = i10;
        this.f23778b = null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof K6)) {
            return false;
        }
        K6 k62 = (K6) obj;
        if (this.f23777a == k62.f23777a && Intrinsics.areEqual(this.f23778b, k62.f23778b)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2 = Integer.hashCode(this.f23777a) * 31;
        Integer num = this.f23778b;
        if (num == null) {
            hashCode = 0;
        } else {
            hashCode = num.hashCode();
        }
        return hashCode2 + hashCode;
    }

    public final String toString() {
        return "OpenRequestResultData(result=" + this.f23777a + ", errorCode=" + this.f23778b + ')';
    }

    public K6(int i10, Integer num) {
        this.f23777a = i10;
        this.f23778b = num;
    }
}
