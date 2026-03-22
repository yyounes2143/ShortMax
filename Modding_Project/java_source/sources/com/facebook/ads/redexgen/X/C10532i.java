package com.facebook.ads.redexgen.X;

import java.io.IOException;
/* renamed from: com.facebook.ads.redexgen.X.2i  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C10532i extends IOException {
    public int A00;
    public boolean A01;

    @Deprecated
    public C10532i() {
    }

    @Deprecated
    public C10532i(String str) {
        super(str);
    }

    public C10532i(String str, Throwable th2, boolean z10, int i10) {
        super(str, th2);
        this.A01 = z10;
        this.A00 = i10;
    }

    public static C10532i A00(String str) {
        return new C10532i(str, null, false, 1);
    }

    public static C10532i A01(String str, Throwable th2) {
        return new C10532i(str, th2, true, 1);
    }

    public static C10532i A02(String str, Throwable th2) {
        return new C10532i(str, th2, true, 0);
    }
}
