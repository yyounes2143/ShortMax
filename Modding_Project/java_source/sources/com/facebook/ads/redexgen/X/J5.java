package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import android.os.Parcel;
import java.util.ArrayList;
import java.util.Arrays;
/* loaded from: assets/audience_network.dex */
public final class J5 {
    public static byte[] A00;

    static {
        A01();
    }

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 109);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{33};
    }

    public final AbstractC1252Am<C2747o2> A02(byte[] bArr) {
        Parcel obtain = Parcel.obtain();
        obtain.unmarshall(bArr, 0, bArr.length);
        obtain.setDataPosition(0);
        Bundle readBundle = obtain.readBundle(Bundle.class.getClassLoader());
        obtain.recycle();
        return C3S.A01(C2747o2.A0I, (ArrayList) C3M.A01(readBundle.getParcelableArrayList(A00(0, 1, 47))));
    }
}
