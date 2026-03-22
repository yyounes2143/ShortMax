package com.inmobi.media;

import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class L9 {

    /* renamed from: a  reason: collision with root package name */
    public final String f23813a;

    /* renamed from: b  reason: collision with root package name */
    public final Map f23814b;

    /* renamed from: c  reason: collision with root package name */
    public final Map f23815c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f23816d;

    public L9(String url, HashMap hashMap, boolean z10) {
        Intrinsics.checkNotNullParameter(url, "url");
        this.f23813a = url;
        this.f23814b = hashMap;
        this.f23815c = null;
        this.f23816d = z10;
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(url, "<set-?>");
        this.f23813a = url;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof L9)) {
            return false;
        }
        L9 l92 = (L9) obj;
        if (Intrinsics.areEqual(this.f23813a, l92.f23813a) && Intrinsics.areEqual(this.f23814b, l92.f23814b) && Intrinsics.areEqual(this.f23815c, l92.f23815c) && Intrinsics.areEqual((Object) null, (Object) null) && this.f23816d == l92.f23816d) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int hashCode;
        int hashCode2 = this.f23813a.hashCode() * 31;
        Map map = this.f23814b;
        int i10 = 0;
        if (map == null) {
            hashCode = 0;
        } else {
            hashCode = map.hashCode();
        }
        int i11 = (hashCode2 + hashCode) * 31;
        Map map2 = this.f23815c;
        if (map2 != null) {
            i10 = map2.hashCode();
        }
        int i12 = (i11 + i10) * 961;
        boolean z10 = this.f23816d;
        int i13 = z10;
        if (z10 != 0) {
            i13 = 1;
        }
        return i12 + i13;
    }

    public final String toString() {
        return "GetRequest(url=" + this.f23813a + ", headers=" + this.f23814b + ", queryParams=" + this.f23815c + ", retryPolicy=null, followRedirects=" + this.f23816d + ')';
    }
}
