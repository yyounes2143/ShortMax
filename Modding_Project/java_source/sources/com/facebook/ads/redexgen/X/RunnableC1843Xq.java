package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import kotlin.jvm.internal.ByteCompanionObject;
/* renamed from: com.facebook.ads.redexgen.X.Xq  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class RunnableC1843Xq implements Runnable {
    public static byte[] A01;
    public final /* synthetic */ C6H A00;

    static {
        A01();
    }

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 13);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-106, -108, -122, -109, ByteCompanionObject.MIN_VALUE, -125, -106, -121, -121, -122, -109, -122, -123, ByteCompanionObject.MIN_VALUE, -124, -115, -118, -124, -116, ByteCompanionObject.MIN_VALUE, -126, -121, -107, -122, -109, ByteCompanionObject.MIN_VALUE, -123, -122, -115, -126, -102};
    }

    public RunnableC1843Xq(C6H c6h) {
        this.A00 = c6h;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A0H(A00(0, 31, 20));
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
