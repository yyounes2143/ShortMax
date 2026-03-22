package com.facebook.ads.redexgen.X;

import android.net.Uri;
import java.io.IOException;
import java.util.Arrays;
import java.util.Map;
/* renamed from: com.facebook.ads.redexgen.X.9d  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C12179d implements InterfaceC2731nl {
    public static byte[] A00;
    public static final InterfaceC11194w A01;
    public static final C12179d A02;

    public static /* synthetic */ C12179d A00() {
        return new C12179d();
    }

    public static String A01(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 126);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A00 = new byte[]{23, 43, 38, 36, 34, 47, 40, 43, 35, 34, 53, 3, 38, 51, 38, 20, 40, 50, 53, 36, 34, 103, 36, 38, 41, 41, 40, 51, 103, 37, 34, 103, 40, 55, 34, 41, 34, 35};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2731nl
    public final /* synthetic */ Map A8l() {
        return AbstractC11184v.A00(this);
    }

    static {
        A02();
        A02 = new C12179d();
        A01 = new InterfaceC11194w() { // from class: com.facebook.ads.redexgen.X.nb
            @Override // com.facebook.ads.redexgen.X.InterfaceC11194w
            public final InterfaceC2731nl A5A() {
                return C12179d.A00();
            }
        };
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2731nl
    public final void A3v(C5H c5h) {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2731nl
    public final Uri A9H() {
        return null;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2731nl
    public final long AFy(AnonymousClass56 anonymousClass56) throws IOException {
        throw new IOException(A01(0, 38, 57));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2731nl
    public final void close() {
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass20
    public final int read(byte[] bArr, int i10, int i11) {
        throw new UnsupportedOperationException();
    }
}
