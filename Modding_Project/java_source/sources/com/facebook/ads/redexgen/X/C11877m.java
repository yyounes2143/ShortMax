package com.facebook.ads.redexgen.X;

import android.media.metrics.LogSessionId;
import java.util.Objects;
/* renamed from: com.facebook.ads.redexgen.X.7m  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C11877m {
    public static final C11877m A03;
    public final String A00;
    public final C11867l A01;
    public final Object A02;

    static {
        C11877m c11877m;
        if (AbstractC10974a.A02 < 31) {
            c11877m = new C11877m("");
        } else {
            c11877m = new C11877m(C11867l.A01, "");
        }
        A03 = c11877m;
    }

    public C11877m(C11867l c11867l, String str) {
        this.A01 = c11867l;
        this.A00 = str;
        this.A02 = new Object();
    }

    public C11877m(String str) {
        C3M.A08(AbstractC10974a.A02 < 31);
        this.A00 = str;
        this.A01 = null;
        this.A02 = new Object();
    }

    public final LogSessionId A00() {
        return ((C11867l) C3M.A01(this.A01)).A00;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C11877m) {
            C11877m c11877m = (C11877m) obj;
            if (Objects.equals(this.A00, c11877m.A00) && Objects.equals(this.A01, c11877m.A01) && Objects.equals(this.A02, c11877m.A02)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.A00, this.A01, this.A02);
    }
}
