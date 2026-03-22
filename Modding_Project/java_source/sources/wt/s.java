package wt;

import com.mbridge.msdk.MBridgeConstans;
/* compiled from: R8$$SyntheticClass */
/* loaded from: classes8.dex */
public final /* synthetic */ class s {
    public static /* synthetic */ String a(long j10, int i10) {
        long a10;
        int i11 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
        if (i11 == 0) {
            return MBridgeConstans.ENDCARD_URL_TYPE_PL;
        }
        if (i11 > 0) {
            return Long.toString(j10, i10);
        }
        i10 = (i10 < 2 || i10 > 36) ? 10 : 10;
        int i12 = 64;
        char[] cArr = new char[64];
        int i13 = i10 - 1;
        if ((i10 & i13) == 0) {
            int numberOfTrailingZeros = Integer.numberOfTrailingZeros(i10);
            do {
                i12--;
                cArr[i12] = Character.forDigit(((int) j10) & i13, i10);
                j10 >>>= numberOfTrailingZeros;
            } while (j10 != 0);
        } else {
            if ((i10 & 1) == 0) {
                a10 = (j10 >>> 1) / (i10 >>> 1);
            } else {
                a10 = kotlin.text.b0.a(j10, i10);
            }
            long j11 = i10;
            cArr[63] = Character.forDigit((int) (j10 - (a10 * j11)), i10);
            i12 = 63;
            while (a10 > 0) {
                i12--;
                cArr[i12] = Character.forDigit((int) (a10 % j11), i10);
                a10 /= j11;
            }
        }
        return new String(cArr, i12, 64 - i12);
    }
}
