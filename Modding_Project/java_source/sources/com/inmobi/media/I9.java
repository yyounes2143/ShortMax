package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class I9 {

    /* renamed from: a  reason: collision with root package name */
    public final EnumC3093o4 f23737a;

    /* renamed from: b  reason: collision with root package name */
    public final String f23738b;

    public I9(EnumC3093o4 errorCode, String str) {
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        this.f23737a = errorCode;
        this.f23738b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof I9)) {
            return false;
        }
        I9 i92 = (I9) obj;
        if (this.f23737a == i92.f23737a && Intrinsics.areEqual(this.f23738b, i92.f23738b)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2 = this.f23737a.hashCode() * 31;
        String str = this.f23738b;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        return hashCode2 + hashCode;
    }

    public final String toString() {
        return "NetworkError(errorCode=" + this.f23737a + ", errorMessage=" + this.f23738b + ')';
    }
}
