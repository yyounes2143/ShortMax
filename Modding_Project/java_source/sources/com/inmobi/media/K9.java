package com.inmobi.media;

import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class K9 {

    /* renamed from: a  reason: collision with root package name */
    public final long f23781a;

    /* renamed from: b  reason: collision with root package name */
    public final Map f23782b;

    /* renamed from: c  reason: collision with root package name */
    public final int f23783c;

    /* renamed from: d  reason: collision with root package name */
    public final String f23784d;

    public K9(long j10, Map headers, int i10, String str) {
        Intrinsics.checkNotNullParameter(headers, "headers");
        this.f23781a = j10;
        this.f23782b = headers;
        this.f23783c = i10;
        this.f23784d = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof K9)) {
            return false;
        }
        K9 k92 = (K9) obj;
        if (this.f23781a == k92.f23781a && Intrinsics.areEqual(this.f23782b, k92.f23782b) && this.f23783c == k92.f23783c && Intrinsics.areEqual(this.f23784d, k92.f23784d)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2 = this.f23782b.hashCode();
        int hashCode3 = (Integer.hashCode(this.f23783c) + ((hashCode2 + (Long.hashCode(this.f23781a) * 31)) * 31)) * 31;
        String str = this.f23784d;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        return hashCode3 + hashCode;
    }

    public final String toString() {
        return "NetworkMetaData(timeTaken=" + this.f23781a + ", headers=" + this.f23782b + ", contentLength=" + this.f23783c + ", contentType=" + this.f23784d + ')';
    }
}
