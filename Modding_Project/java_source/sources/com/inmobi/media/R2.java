package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class R2 {

    /* renamed from: a  reason: collision with root package name */
    public final byte f24056a;

    /* renamed from: b  reason: collision with root package name */
    public final String f24057b;

    public R2(byte b10, String str) {
        this.f24056a = b10;
        this.f24057b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof R2)) {
            return false;
        }
        R2 r22 = (R2) obj;
        if (this.f24056a == r22.f24056a && Intrinsics.areEqual(this.f24057b, r22.f24057b)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2 = Byte.hashCode(this.f24056a) * 31;
        String str = this.f24057b;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        return hashCode2 + hashCode;
    }

    public final String toString() {
        return "ConfigError(errorCode=" + ((int) this.f24056a) + ", errorMessage=" + this.f24057b + ')';
    }
}
