package com.inmobi.media;

import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes5.dex */
public final class W5 {
    private final boolean GPID;

    public W5() {
        this(false, 1, null);
    }

    public final boolean a() {
        return this.GPID;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof W5) && this.GPID == ((W5) obj).GPID) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        boolean z10 = this.GPID;
        if (z10) {
            return 1;
        }
        return z10 ? 1 : 0;
    }

    public final String toString() {
        return "IncludeIdParams(GPID=" + this.GPID + ')';
    }

    public W5(boolean z10) {
        this.GPID = z10;
    }

    public /* synthetic */ W5(boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? true : z10);
    }
}
