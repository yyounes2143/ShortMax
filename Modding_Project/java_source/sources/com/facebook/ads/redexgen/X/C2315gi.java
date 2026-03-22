package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.gi  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2315gi {
    public static byte[] A03;
    public final O1 A00;
    public final InterfaceC2125dZ A01;
    public final List<C2314gh> A02;

    static {
        A01();
    }

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 36);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{-11, -10, -29, -10, -21, -11, -10, -21, -27, -11, -60, -75, -61, -60, -61};
    }

    public C2315gi(List<AbstractC1598Nz> list, Bundle bundle, InterfaceC2125dZ interfaceC2125dZ) {
        this.A02 = new ArrayList(list.size());
        this.A01 = interfaceC2125dZ;
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(A00(10, 5, 76));
        for (int i10 = 0; i10 < list.size(); i10++) {
            this.A02.add(new C2314gh(list.get(i10), (Bundle) parcelableArrayList.get(i10)));
        }
        this.A00 = (O1) X2.A00(bundle.getByteArray(A00(0, 10, 126)));
    }

    public C2315gi(List<AbstractC1598Nz> list, InterfaceC2125dZ interfaceC2125dZ) {
        this.A02 = new ArrayList(list.size());
        this.A01 = interfaceC2125dZ;
        for (AbstractC1598Nz abstractC1598Nz : list) {
            this.A02.add(new C2314gh(abstractC1598Nz));
        }
        this.A00 = new O1();
    }

    public final Bundle A02() {
        Bundle bundle = new Bundle();
        bundle.putByteArray(A00(0, 10, 126), X2.A01(this.A00));
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>(this.A02.size());
        for (C2314gh c2314gh : this.A02) {
            Bundle bundle2 = c2314gh.A05();
            arrayList.add(bundle2);
        }
        bundle.putParcelableArrayList(A00(10, 5, 76), arrayList);
        return bundle;
    }

    public final O1 A03() {
        return this.A00;
    }

    public final void A04() {
        this.A00.A03();
        for (C2314gh c2314gh : this.A02) {
            c2314gh.A06();
        }
    }

    public final void A05() {
        this.A00.A02();
    }

    public final void A06(double d10, double d11) {
        if (d11 >= 0.0d) {
            this.A00.A05(d10, d11);
        }
        double A9N = this.A01.A9N();
        this.A00.A04(d10, A9N);
        for (C2314gh c2314gh : this.A02) {
            c2314gh.A07(d10, A9N);
        }
    }
}
