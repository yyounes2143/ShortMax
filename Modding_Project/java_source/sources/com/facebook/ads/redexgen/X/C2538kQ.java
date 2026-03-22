package com.facebook.ads.redexgen.X;

import com.facebook.ads.androidx.media3.common.Metadata;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.util.Arrays;
import java.util.List;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
/* renamed from: com.facebook.ads.redexgen.X.kQ  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2538kQ extends AbstractC1470Iz {
    public static byte[] A01;
    public static String[] A02 = {"llfHvvp5w7AsdcfCf5e", "amqCmPcUyTwYr5NdTloeCtiw", "0NAIhycYLxj75", "dj34azdkZPKXRKaV6TbpL4Sg", "ijcAEj6S85lKiCQyoflHjypUMqTEGqRn", "eY0hdp8", "jqGnWXF3Z8AkxtecEpgwxV1mUEmkJWKs", "4zwbE0EN4gXO5y3Vp0p"};
    public static final byte[] A03;
    public static final byte[] A04;
    public boolean A00;

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 125);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-1, 19, 2, 7, 13, -51, 13, 14, 19, 17};
    }

    static {
        A01();
        A04 = new byte[]{79, 112, 117, 115, 72, 101, 97, 100};
        A03 = new byte[]{79, 112, 117, 115, 84, 97, 103, 115};
    }

    public static boolean A02(C4J c4j) {
        return A03(c4j, A04);
    }

    public static boolean A03(C4J c4j, byte[] bArr) {
        if (c4j.A07() < bArr.length) {
            return false;
        }
        int A09 = c4j.A09();
        int startPosition = bArr.length;
        byte[] header = new byte[startPosition];
        int startPosition2 = bArr.length;
        c4j.A0k(header, 0, startPosition2);
        c4j.A0f(A09);
        return Arrays.equals(header, bArr);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1470Iz
    public final long A09(C4J c4j) {
        return A06(AbstractC1411Gr.A05(c4j.A0l()));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1470Iz
    public final void A0B(boolean z10) {
        super.A0B(z10);
        if (z10) {
            this.A00 = false;
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1470Iz
    @EnsuresNonNullIf(expression = {"#3.format"}, result = false)
    @MetaExoPlayerCustomization("Replaces ImmutableList.of with MetaExoPlayerCustomizedCollections")
    public final boolean A0C(C4J c4j, long j10, C1469Iy c1469Iy) throws C10532i {
        if (A03(c4j, A04)) {
            byte[] headerBytes = Arrays.copyOf(c4j.A0l(), c4j.A0A());
            int A012 = AbstractC1411Gr.A01(headerBytes);
            List<byte[]> A06 = AbstractC1411Gr.A06(headerBytes);
            if (c1469Iy.A00 != null) {
                return true;
            }
            c1469Iy.A00 = new C2D().A11(A00(0, 10, 33)).A0b(A012).A0m(48000).A12(A06).A14();
            return true;
        } else if (A03(c4j, A03)) {
            C3M.A02(c1469Iy.A00);
            if (this.A00) {
                return true;
            }
            this.A00 = true;
            c4j.A0g(A03.length);
            H5 commentHeader = H8.A05(c4j, false, false);
            Metadata A022 = H8.A02(C2393i1.A02(commentHeader.A02));
            if (A022 == null) {
                return true;
            }
            C2D A07 = c1469Iy.A00.A07();
            String[] strArr = A02;
            if (strArr[3].length() != strArr[1].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A02;
            strArr2[3] = "80vtnZ0VGuLh5BtNytGnkcmL";
            strArr2[1] = "kfnMkjsOg47yHVBMKsSTRfGb";
            c1469Iy.A00 = A07.A0v(A022.A04(c1469Iy.A00.A0P)).A14();
            return true;
        } else {
            C3M.A02(c1469Iy.A00);
            return false;
        }
    }
}
