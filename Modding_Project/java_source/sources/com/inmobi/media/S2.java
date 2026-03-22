package com.inmobi.media;

import com.inmobi.commons.core.configs.Config;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class S2 {

    /* renamed from: a  reason: collision with root package name */
    public final Config f24102a;

    /* renamed from: b  reason: collision with root package name */
    public final N2 f24103b;

    public S2(Config config, N2 n22) {
        Intrinsics.checkNotNullParameter(config, "config");
        this.f24102a = config;
        this.f24103b = n22;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof S2)) {
            return false;
        }
        S2 s22 = (S2) obj;
        if (Intrinsics.areEqual(this.f24102a, s22.f24102a) && Intrinsics.areEqual(this.f24103b, s22.f24103b)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2 = this.f24102a.hashCode() * 31;
        N2 n22 = this.f24103b;
        if (n22 == null) {
            hashCode = 0;
        } else {
            hashCode = n22.hashCode();
        }
        return hashCode2 + hashCode;
    }

    public final String toString() {
        return "ConfigFetchInputs(config=" + this.f24102a + ", listener=" + this.f24103b + ')';
    }
}
