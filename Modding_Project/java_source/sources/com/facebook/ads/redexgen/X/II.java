package com.facebook.ads.redexgen.X;

import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.util.Arrays;
@MetaExoPlayerCustomization(type = {"INCREASE_VISIBILITY"}, value = "To support OculusMp4Extractor")
/* loaded from: assets/audience_network.dex */
public abstract class II {
    public static byte[] A01;
    @MetaExoPlayerCustomization("Adding TYPE_xml")
    public static final int A02;
    public final int A00;

    public static String A03(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 107);
        }
        return new String(copyOfRange);
    }

    public static void A04() {
        A01 = new byte[]{-26, -37, -38, -114};
    }

    static {
        A04();
        A02 = AbstractC10974a.A0D(A03(0, 4, 3));
    }

    public II(int i10) {
        this.A00 = i10;
    }

    public static int A00(int i10) {
        return 16777215 & i10;
    }

    public static int A01(int i10) {
        return (i10 >> 24) & 255;
    }

    public static String A02(int i10) {
        return A03(0, 0, 9) + ((char) ((i10 >> 24) & 255)) + ((char) ((i10 >> 16) & 255)) + ((char) ((i10 >> 8) & 255)) + ((char) (i10 & 255));
    }

    public String toString() {
        return A02(this.A00);
    }
}
