package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import kotlin.jvm.internal.ByteCompanionObject;
/* loaded from: assets/audience_network.dex */
public class TA extends MQ {
    public static byte[] A01;
    public final /* synthetic */ C1652Qc A00;

    static {
        A01();
    }

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 30);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{95, 112, 101, 120, 103, 116, 49, 112, 117, 98, 49, 124, 112, ByteCompanionObject.MAX_VALUE, 112, 118, 116, 99, 49, 101, 121, 116, 120, 99, 49, 126, 102, ByteCompanionObject.MAX_VALUE, 49, 120, 124, 97, 99, 116, 98, 98, 120, 126, ByteCompanionObject.MAX_VALUE, 98, 63};
    }

    public TA(C1652Qc c1652Qc) {
        this.A00 = c1652Qc;
    }

    @Override // com.facebook.ads.redexgen.X.MQ
    public final void A0B(C2415iN c2415iN) {
        this.A00.A1W(c2415iN);
    }

    @Override // com.facebook.ads.redexgen.X.MQ
    public final void A0C() {
        QQ qq2;
        QQ qq3;
        qq2 = this.A00.A0G;
        if (qq2 != null) {
            qq3 = this.A00.A0G;
            qq3.ACD();
        }
    }

    @Override // com.facebook.ads.redexgen.X.MQ
    public final void A0D() {
        throw new IllegalStateException(A00(0, 41, 15));
    }

    @Override // com.facebook.ads.redexgen.X.MQ
    public final void A0F(MP mp2) {
        C11716w c11716w;
        C11716w c11716w2;
        c11716w = this.A00.A0A;
        if (c11716w != null) {
            c11716w2 = this.A00.A0A;
            c11716w2.A0M();
        }
    }

    @Override // com.facebook.ads.redexgen.X.MQ
    public final void A0G(V1 v12) {
        long j10;
        QQ qq2;
        QQ qq3;
        LH A0F = this.A00.A12().A0F();
        j10 = this.A00.A00;
        A0F.A3F(XG.A01(j10), v12.A03().getErrorCode(), v12.A04());
        qq2 = this.A00.A0G;
        if (qq2 != null) {
            qq3 = this.A00.A0G;
            qq3.ADB(v12);
        }
    }
}
