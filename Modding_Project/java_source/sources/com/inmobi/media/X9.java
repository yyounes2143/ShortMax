package com.inmobi.media;

import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class X9 {

    /* renamed from: a  reason: collision with root package name */
    public final Map f24369a;

    public X9(Map requestParams) {
        Intrinsics.checkNotNullParameter(requestParams, "requestParams");
        this.f24369a = requestParams;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof X9) && Intrinsics.areEqual(this.f24369a, ((X9) obj).f24369a)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.f24369a.hashCode();
    }

    public final String toString() {
        return "NovatiqAdData(requestParams=" + this.f24369a + ')';
    }
}
