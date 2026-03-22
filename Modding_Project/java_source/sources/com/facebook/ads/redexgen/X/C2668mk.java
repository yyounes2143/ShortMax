package com.facebook.ads.redexgen.X;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.mk  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2668mk implements InterfaceC1262Aw {
    public static byte[] A00;

    static {
        A01();
    }

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 11);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{13, 27, 29, 11, 12, 27, 83, 14, 18, 31, 7, 28, 31, 29, 21, 10, 21, 24, 25, 19, 83, 29, 10, 31};
    }

    public C2668mk() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1262Aw
    public final int A7H() {
        return MediaCodecList.getCodecCount();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1262Aw
    public final MediaCodecInfo A7I(int i10) {
        return MediaCodecList.getCodecInfoAt(i10);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1262Aw
    public final boolean AAI(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1262Aw
    public final boolean AAJ(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return A00(0, 15, 117).equals(str) && A00(15, 9, 119).equals(str2);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1262Aw
    public final boolean AIK() {
        return false;
    }
}
