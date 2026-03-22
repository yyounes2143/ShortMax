package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.util.Log;
import java.util.Arrays;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: assets/audience_network.dex */
public final class VG implements US {
    public static US A03;
    public static byte[] A04;
    public static final String A05;
    public static volatile boolean A06;
    public final C2085cu A00;
    public final InterfaceC1735Tj A01;
    public final UR A02;

    public static String A02(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A04, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 64);
        }
        return new String(copyOfRange);
    }

    public static void A03() {
        A04 = new byte[]{50, 119, 100, 119, 124, 102, 60, 54, 3, 3, 18, 26, 7, 3, 30, 25, 16, 87, 3, 24, 87, 27, 24, 16, 87, 22, 25, 87, 30, 25, 1, 22, 27, 30, 19, 87, 66, 100, 119, 117, 115, 87, 85, 94, 85, 66, 89, 83, 29, 16, 25, 12};
    }

    static {
        A03();
        A05 = VG.class.getSimpleName();
        A06 = false;
    }

    public VG(C2085cu c2085cu) {
        UQ dispatchCallback;
        this.A00 = c2085cu;
        if (U9.A0T(c2085cu)) {
            this.A01 = AbstractC1734Th.A00(c2085cu);
            dispatchCallback = UX.A00(c2085cu, this.A01);
        } else {
            C6J A01 = AbstractC1734Th.A01(c2085cu);
            dispatchCallback = UX.A01(c2085cu, A01);
            this.A01 = A01;
        }
        this.A02 = new VJ(c2085cu, dispatchCallback);
        XU.A08.execute(new VI(this));
        A04(c2085cu);
    }

    public static synchronized US A01(C2085cu c2085cu) {
        US us2;
        synchronized (VG.class) {
            if (A03 == null) {
                A03 = new VG(c2085cu);
            }
            us2 = A03;
        }
        return us2;
    }

    public static synchronized void A04(C2085cu c2085cu) {
        synchronized (VG.class) {
            if (A06) {
                return;
            }
            c2085cu.A04().ACE();
            A06 = true;
        }
    }

    private void A05(UP up2) {
        if (!up2.A0A()) {
            Log.e(A05, A02(7, 29, 55) + up2.A06() + A02(0, 7, 82));
            return;
        }
        A06(up2);
        this.A01.AKL(up2, new VH(this, up2));
    }

    private void A06(UP up2) {
        switch (up2.A06()) {
            case A0Q:
            case A0K:
            case A07:
            case A0J:
            case A0R:
            case A0T:
            case A0U:
                C1723Sw c1723Sw = new C1723Sw(new Exception(A02(36, 5, 86)));
                c1723Sw.A05(1);
                try {
                    c1723Sw.A07(new JSONObject().put(A02(48, 4, 41), up2.A06().toString()));
                } catch (JSONException unused) {
                }
                this.A00.A08().AAz(A02(41, 7, 112), AbstractC1722Sv.A1H, c1723Sw);
                return;
            default:
                return;
        }
    }

    @Override // com.facebook.ads.redexgen.X.US
    public final void AAp(String str, Map<String, String> data) {
        A05(new UO().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(UU.A04).A02(UV.A04).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.US
    public final void AAr(String str, Map<String, String> data) {
        A05(new UO().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(UU.A04).A02(UV.A06).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.US
    public final void AAs(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new UO().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(UU.A04).A02(UV.A07).A06(AbstractC1754Uc.A0A(str, UZ.A0I)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.US
    public final void AAt(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new UO().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(UU.A04).A02(UV.A08).A06(AbstractC1754Uc.A0A(str, UZ.A06)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.US
    public final void AAx(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new UO().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(UU.A04).A02(UV.A0B).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.US
    public final void AB1(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new UO().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(UU.A04).A02(UV.A0C).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.US
    public final void AB5(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new UO().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(UU.A05).A02(UV.A0D).A06(AbstractC1754Uc.A0A(str, UZ.A0T)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.US
    public final void AB6(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new UO().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(UU.A05).A02(UV.A0E).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.US
    public final void AB7(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new UO().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(UU.A05).A02(UV.A0F).A06(AbstractC1754Uc.A0A(str, UZ.A0V)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.US
    public final void AB8(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new UO().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(UU.A05).A02(UV.A0K).A06(AbstractC1754Uc.A0A(str, UZ.A0W)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.US
    public final void ABH(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new UO().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(UU.A05).A02(UV.A0H).A06(AbstractC1754Uc.A0A(str, UZ.A0X)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.US
    public final void ABJ(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new UO().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(UU.A04).A02(UV.A0J).A06(AbstractC1754Uc.A0A(str, UZ.A0a)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.US
    public final void ABK(String str, Map<String, String> data, String str2, UU uu2) {
        A05(new UO().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(uu2).A02(UV.A00(str2)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.US
    public final void ABL(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        UP adEvent = new UO().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(UU.A04).A02(UV.A0L).A07(this.A00);
        A05(adEvent);
    }

    @Override // com.facebook.ads.redexgen.X.US
    public final void ABP(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new UO().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(UU.A05).A02(UV.A0N).A06(AbstractC1754Uc.A0A(str, UZ.A0i)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.US
    public final void ABQ(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new UO().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(UU.A05).A02(UV.A0O).A06(AbstractC1754Uc.A0A(str, UZ.A0j)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.US
    public final void ABS(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new UO().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A01(UU.A04).A02(UV.A0P).A06(AbstractC1754Uc.A0A(str, UZ.A0k)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.US
    public final void ABT(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new UO().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(UU.A04).A02(UV.A0G).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.US
    public final void ABX(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new UO().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(UU.A05).A02(UV.A0Q).A06(AbstractC1754Uc.A0A(str, UZ.A0o)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.US
    public final void ABY(String str, Map<String, String> data) {
        A05(new UO().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(UU.A05).A02(UV.A0V).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.US
    public final void ABa(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new UO().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(UU.A05).A02(UV.A0W).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.US
    public final void AGF(String str) {
        new AsyncTaskC2210ex(this.A00).execute(str);
    }
}
