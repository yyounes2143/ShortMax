package com.facebook.ads.redexgen.X;

import android.net.Uri;
import com.facebook.ads.androidx.media3.common.Timeline;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.97  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public final class AnonymousClass97 extends Timeline {
    public static byte[] A0D;
    public static final C2787oi A0E;
    public static final Object A0F;
    public final long A00;
    public final long A01;
    public final long A02;
    public final long A03;
    public final long A04;
    public final long A05;
    public final long A06;
    public final C2789ok A07;
    public final C2787oi A08;
    public final Object A09;
    public final boolean A0A;
    public final boolean A0B;
    public final boolean A0C;

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A0D, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 50);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A0D = new byte[]{-79, -57, -52, -59, -54, -61, -82, -61, -48, -57, -51, -62, -78, -57, -53, -61, -54, -57, -52, -61};
    }

    static {
        A01();
        A0F = new Object();
        A0E = new C2I().A03(A00(0, 20, 44)).A00(Uri.EMPTY).A05();
    }

    public AnonymousClass97(long j10, long j11, long j12, long j13, long j14, long j15, long j16, boolean z10, boolean z11, boolean z12, Object obj, C2787oi c2787oi, C2789ok c2789ok) {
        this.A02 = j10;
        this.A06 = j11;
        this.A00 = j12;
        this.A01 = j13;
        this.A04 = j14;
        this.A05 = j15;
        this.A03 = j16;
        this.A0B = z10;
        this.A0A = z11;
        this.A0C = z12;
        this.A09 = obj;
        this.A08 = (C2787oi) C3M.A01(c2787oi);
        this.A07 = c2789ok;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AnonymousClass97(long r24, long r26, long r28, long r30, boolean r32, boolean r33, boolean r34, java.lang.Object r35, com.facebook.ads.redexgen.X.C2787oi r36) {
        /*
            r23 = this;
            r1 = r36
            if (r34 == 0) goto L2f
            com.facebook.ads.redexgen.X.ok r0 = r1.A02
        L6:
            r3 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r5 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r7 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r19 = 0
            r2 = r23
            r18 = r33
            r17 = r32
            r13 = r28
            r11 = r26
            r15 = r30
            r20 = r35
            r9 = r24
            r21 = r1
            r22 = r0
            r2.<init>(r3, r5, r7, r9, r11, r13, r15, r17, r18, r19, r20, r21, r22)
            return
        L2f:
            r0 = 0
            goto L6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AnonymousClass97.<init>(long, long, long, long, boolean, boolean, boolean, java.lang.Object, com.facebook.ads.redexgen.X.oi):void");
    }

    public AnonymousClass97(long j10, boolean z10, boolean z11, boolean z12, Object obj, C2787oi c2787oi) {
        this(j10, j10, 0L, 0L, z10, z11, z12, obj, c2787oi);
    }

    @Override // com.facebook.ads.androidx.media3.common.Timeline
    public final int A06() {
        return 1;
    }

    @Override // com.facebook.ads.androidx.media3.common.Timeline
    public final int A07() {
        return 1;
    }

    @Override // com.facebook.ads.androidx.media3.common.Timeline
    public final int A0A(Object obj) {
        return A0F.equals(obj) ? 0 : -1;
    }

    @Override // com.facebook.ads.androidx.media3.common.Timeline
    public final C2767oN A0I(int i10, C2767oN c2767oN, boolean z10) {
        C3M.A00(i10, 0, 1);
        return c2767oN.A0F(null, z10 ? A0F : null, 0, this.A01, -this.A05);
    }

    @Override // com.facebook.ads.androidx.media3.common.Timeline
    public final C2765oL A0L(int i10, C2765oL c2765oL, long j10) {
        C3M.A00(i10, 0, 1);
        long j11 = this.A03;
        if (this.A0A && !this.A0C && j10 != 0) {
            if (this.A04 == -9223372036854775807L) {
                j11 = -9223372036854775807L;
            } else {
                j11 += j10;
                if (j11 > this.A04) {
                    j11 = -9223372036854775807L;
                }
            }
        }
        return c2765oL.A07(C2765oL.A0K, this.A08, this.A09, this.A02, this.A06, -9223372036854775807L, this.A0B, this.A0A, null, j11, this.A04, 0, 0, this.A05);
    }

    @Override // com.facebook.ads.androidx.media3.common.Timeline
    public final Object A0M(int i10) {
        C3M.A00(i10, 0, 1);
        return A0F;
    }
}
