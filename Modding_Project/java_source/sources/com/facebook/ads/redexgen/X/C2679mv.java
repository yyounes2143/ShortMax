package com.facebook.ads.redexgen.X;

import com.ss.ttvideoengine.DataLoaderHelper;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.math.RoundingMode;
/* renamed from: com.facebook.ads.redexgen.X.mv  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2679mv implements InterfaceC12018d {
    public final int A00;
    public final int A01;
    public final int A02;
    public final int A03;
    public final int A04;
    public final int A05;

    public C2679mv(C12098o c12098o) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        i10 = c12098o.A02;
        this.A02 = i10;
        i11 = c12098o.A01;
        this.A01 = i11;
        i12 = c12098o.A05;
        this.A05 = i12;
        i13 = c12098o.A04;
        this.A04 = i13;
        i14 = c12098o.A03;
        this.A03 = i14;
        i15 = c12098o.A00;
        this.A00 = i15;
    }

    public static int A00(int i10) {
        switch (i10) {
            case 5:
                return DataLoaderHelper.DATALOADER_KEY_MDL_OPTION_START;
            case 6:
            case 18:
                return 768000;
            case 7:
                return 192000;
            case 8:
                return 2250000;
            case 9:
                return TTVideoEngineInterface.GLOBAL_PLAYER_OPTION_MIN;
            case 10:
                return 100000;
            case 11:
                return 16000;
            case 12:
                return 7000;
            case 13:
            case 19:
            default:
                throw new IllegalArgumentException();
            case 14:
                return 3062500;
            case 15:
                return 8000;
            case 16:
                return 256000;
            case 17:
                return 336000;
            case 20:
                return 63750;
        }
    }

    private final int A01(int i10) {
        int A00 = A00(i10);
        int maxByteRate = this.A03;
        return AD.A03((maxByteRate * A00) / 1000000);
    }

    private final int A02(int i10, int i11) {
        int bufferSizeUs;
        int i12 = this.A04;
        if (i10 == 5) {
            int bufferSizeUs2 = this.A00;
            i12 *= bufferSizeUs2;
        }
        if (i11 != -1) {
            bufferSizeUs = C9D.A00(i11, 8, RoundingMode.CEILING);
        } else {
            bufferSizeUs = A00(i10);
        }
        return AD.A03((i12 * bufferSizeUs) / 1000000);
    }

    public static int A03(int i10, int i11, int i12) {
        return AD.A03(((i10 * i11) * i12) / 1000000);
    }

    private final int A04(int i10, int i11, int i12) {
        int maxAppBufferSize = this.A05 * i10;
        int targetBufferSize = this.A02;
        int minAppBufferSize = A03(targetBufferSize, i11, i12);
        int targetBufferSize2 = this.A01;
        return AbstractC10974a.A07(maxAppBufferSize, minAppBufferSize, A03(targetBufferSize2, i11, i12));
    }

    private final int A05(int i10, int i11, int i12, int i13, int i14, int i15) {
        switch (i12) {
            case 0:
                return A04(i10, i14, i13);
            case 1:
                return A01(i11);
            case 2:
                return A02(i11, i15);
            default:
                throw new IllegalArgumentException();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC12018d
    public final int A6x(int i10, int i11, int i12, int i13, int i14, int i15, double d10) {
        int bufferSize = A05(i10, i11, i12, i13, i14, i15);
        return (((Math.max(i10, (int) (bufferSize * d10)) + i13) - 1) / i13) * i13;
    }
}
