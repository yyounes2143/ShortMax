package com.inmobi.media;

import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.d2  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2914d2 {

    /* renamed from: a  reason: collision with root package name */
    public final int f24572a;

    /* renamed from: b  reason: collision with root package name */
    public final String f24573b;

    /* renamed from: c  reason: collision with root package name */
    public final Map f24574c;

    public C2914d2(int i10, int i11, String str) {
        str = (i11 & 2) != 0 ? null : str;
        this.f24572a = i10;
        this.f24573b = str;
        this.f24574c = null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2914d2)) {
            return false;
        }
        C2914d2 c2914d2 = (C2914d2) obj;
        if (this.f24572a == c2914d2.f24572a && Intrinsics.areEqual(this.f24573b, c2914d2.f24573b) && Intrinsics.areEqual(this.f24574c, c2914d2.f24574c)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2 = Integer.hashCode(this.f24572a) * 31;
        String str = this.f24573b;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i11 = (hashCode2 + hashCode) * 31;
        Map map = this.f24574c;
        if (map != null) {
            i10 = map.hashCode();
        }
        return i11 + i10;
    }

    public final String toString() {
        return "BusEvent(eventId=" + this.f24572a + ", eventMessage=" + this.f24573b + ", eventData=" + this.f24574c + ')';
    }

    public C2914d2(int i10, String str, Map map) {
        this.f24572a = i10;
        this.f24573b = str;
        this.f24574c = map;
    }
}
