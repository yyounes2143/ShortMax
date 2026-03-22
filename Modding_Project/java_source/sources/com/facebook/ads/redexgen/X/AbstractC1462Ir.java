package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import kotlin.jvm.internal.ByteCompanionObject;
/* renamed from: com.facebook.ads.redexgen.X.Ir  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC1462Ir extends AbstractC1945ae {
    public static byte[] A00;

    static {
        A0B();
    }

    public static String A0A(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 22);
        }
        return new String(copyOfRange);
    }

    public static void A0B() {
        A00 = new byte[]{106, 111, 111, 110, ByteCompanionObject.MAX_VALUE, 106, 98, 103, 120};
    }

    public abstract void A1P();

    public abstract void A1Q();

    public abstract void A1R();

    public abstract boolean A1S();

    public abstract boolean A1T();

    public AbstractC1462Ir(C1949ai c1949ai, boolean z10) {
        super(c1949ai, z10);
        if (U7.A17(c1949ai.A06())) {
            if (c1949ai.A0C() != null) {
                c1949ai.A0C().setCTAClickListener(getCtaButton());
            }
            getTitleDescContainer().setCTAClickListener(getCtaButton());
        }
    }

    public final void A1O() {
        if (U7.A17(this.A06.A06()) && this.A06.A0C() != null) {
            this.A06.A0C().setCTAClickListener(getCtaButton());
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1945ae
    public KE getCtaButton() {
        return super.getCtaButton();
    }

    public void setAdDetailsClickListener(AbstractC1900Zv abstractC1900Zv) {
        if (U7.A17(this.A06.A06()) && abstractC1900Zv != null) {
            abstractC1900Zv.setOnClickListener(AbstractC1936aV.A03(getCtaButton(), A0A(0, 9, 29)));
        }
    }

    public void setupNativeCtaExtension(C2078cn c2078cn) {
    }
}
