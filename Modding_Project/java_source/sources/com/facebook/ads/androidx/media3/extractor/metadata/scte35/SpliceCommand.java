package com.facebook.ads.androidx.media3.extractor.metadata.scte35;

import com.facebook.ads.androidx.media3.common.Metadata;
import com.facebook.ads.redexgen.X.AbstractC10492c;
import com.facebook.ads.redexgen.X.C2796or;
import java.util.Arrays;
/* loaded from: assets/audience_network.dex */
public abstract class SpliceCommand implements Metadata.Entry {
    public static byte[] A00;

    static {
        A03();
    }

    public static String A02(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 88);
        }
        return new String(copyOfRange);
    }

    public static void A03() {
        A00 = new byte[]{54, 38, 49, 32, 72, 86, 80, 69, 22, 21, 9, 12, 6, 0, 69, 6, 10, 8, 8, 4, 11, 1, 95, 69, 17, 28, 21, 0, 88};
    }

    @Override // com.facebook.ads.androidx.media3.common.Metadata.Entry
    public final /* synthetic */ byte[] A9S() {
        return AbstractC10492c.A01(this);
    }

    @Override // com.facebook.ads.androidx.media3.common.Metadata.Entry
    public final /* synthetic */ C2796or A9T() {
        return AbstractC10492c.A00(this);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        return A02(0, 29, 61) + getClass().getSimpleName();
    }
}
