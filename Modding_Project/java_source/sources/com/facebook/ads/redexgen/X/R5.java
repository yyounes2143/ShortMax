package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.os.Build;
import android.widget.RelativeLayout;
import androidx.core.view.ViewCompat;
import java.util.Arrays;
import java.util.HashMap;
import kotlin.jvm.internal.ByteCompanionObject;
/* loaded from: assets/audience_network.dex */
public final class R5 {
    public static byte[] A04;
    public static String[] A05 = {"MJXAzUwyiLvMzZCrP1QJf8uMs9b", "sHuNTXgsBnW3HGqskl7KH5QkikNWpABj", "q8u9vKEVkpk3dMxroB1EFzM5kwDKfJOq", "eyGwnlQBA4bCraIcft5FxvFgN7f8TC5N", "FmmRYKiwjJl3dX1FB2pV6kIWJpsNLC6h", "flBitaWG3wpDSjkerYNuTkR3r5UhRox3", "xkUQOvOGGj42jMnQjSDdoLzQvdQiYUba", "XqZ9VL6XKZ5Y"};
    public final Intent A00;
    public final R0 A01;
    public final C2111dL A02;
    public final US A03;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private C1525Lc A06() {
        AnonymousClass77 A02 = A02();
        if (A02 == null) {
            return null;
        }
        LY ly = new LY();
        return new C1525Lc(this.A02, this.A03, new C2270fw(this.A01), A02, null, ly, A0K(ly, A02));
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private C1525Lc A07() {
        AnonymousClass73 A03 = A03();
        if (A03 == null) {
            return null;
        }
        LX lx = new LX();
        return new C1525Lc(this.A02, this.A03, new C6P(this.A01), A03, A03.A1A(), lx, A0K(lx, A03));
    }

    public static String A0L(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A04, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 59);
        }
        return new String(copyOfRange);
    }

    public static void A0M() {
        A04 = new byte[]{99, ByteCompanionObject.MAX_VALUE, 4, 1, 58, 1, 4, 17, 4, 58, 7, 16, 11, 1, 9, 0, 43, 41, 36, 36, 45, 58, 28, 49, 56, 45, 119, 124, 117, 125, 122, 113, 112, 85, 112, 80, 117, 96, 117, 86, 97, 122, 112, 120, 113, 35, 44, 41, 49, 32, 55, 32, 33, 26, 38, 41, 44, 38, 46, 26, 33, 32, 41, 36, 60, 26, 40, 54, 124, 115, 102, 123, 100, 119, 83, 118, 86, 115, 102, 115, 80, 103, 124, 118, 126, 119, 106, 118, 123, 121, ByteCompanionObject.MAX_VALUE, 119, ByteCompanionObject.MAX_VALUE, 116, 110, 32, 55, 37, 51, 32, 54, 55, 54, 4, 59, 54, 55, 61, 19, 54, 22, 51, 38, 51, 16, 39, 60, 54, 62, 55, 22, 9, 4, 5, 15, 63, 20, 9, 13, 5, 63, 16, 15, 12, 12, 9, 14, 7, 63, 9, 14, 20, 5, 18, 22, 1, 12};
    }

    static {
        A0M();
    }

    public R5(R0 r02, Intent intent, US us2, C2111dL c2111dL) {
        this.A01 = r02;
        this.A00 = intent;
        this.A03 = us2;
        this.A02 = c2111dL;
    }

    private AbstractC2392hy A00() {
        int i10 = Build.VERSION.SDK_INT;
        String A0L = A0L(68, 18, 41);
        if (i10 >= 33) {
            return (AbstractC2392hy) this.A00.getSerializableExtra(A0L, AbstractC2392hy.class);
        }
        Intent intent = this.A00;
        String[] strArr = A05;
        if (strArr[6].charAt(13) != strArr[2].charAt(13)) {
            throw new RuntimeException();
        }
        A05[1] = "LmjecX6z1NXmevkMdudhCsYVgseeBlBL";
        return (AbstractC2392hy) intent.getSerializableExtra(A0L);
    }

    private C2390hw A01() {
        int i10 = Build.VERSION.SDK_INT;
        String A0L = A0L(26, 19, 47);
        if (i10 >= 33) {
            return (C2390hw) this.A00.getSerializableExtra(A0L, C2390hw.class);
        }
        return (C2390hw) this.A00.getSerializableExtra(A0L);
    }

    private AnonymousClass77 A02() {
        int i10 = Build.VERSION.SDK_INT;
        String A0L = A0L(2, 14, 94);
        if (i10 >= 33) {
            return (AnonymousClass77) this.A00.getSerializableExtra(A0L, AnonymousClass77.class);
        }
        return (AnonymousClass77) this.A00.getSerializableExtra(A0L);
    }

    private AnonymousClass73 A03() {
        int i10 = Build.VERSION.SDK_INT;
        String A0L = A0L(95, 25, 105);
        if (i10 >= 33) {
            return (AnonymousClass73) this.A00.getSerializableExtra(A0L, AnonymousClass73.class);
        }
        return (AnonymousClass73) this.A00.getSerializableExtra(A0L);
    }

    private InterfaceC1841Xo A05() {
        if (U7.A2o(this.A02)) {
            String stringExtra = this.A00.getStringExtra(A0L(45, 23, 126));
            R0 r02 = this.A01;
            C2111dL c2111dL = this.A02;
            US us2 = this.A03;
            C2270fw c2270fw = new C2270fw(this.A01);
            Intent intent = this.A00;
            String clickDelayMs = A0L(16, 10, 115);
            String stringExtra2 = intent.getStringExtra(clickDelayMs);
            if (stringExtra == null) {
                stringExtra = A0L(0, 2, 117);
            }
            int parseInt = Integer.parseInt(stringExtra);
            if (A05[5].charAt(3) != 'i') {
                throw new RuntimeException();
            }
            A05[4] = "YY09SF1W0j6b6KfCSgRusx8TJPca7HgC";
            return new C6H(r02, c2111dL, us2, c2270fw, stringExtra2, parseInt);
        }
        return new OD(this.A01, this.A02, this.A03, new C2270fw(this.A01));
    }

    private final C1524Lb A08() {
        return new C1524Lb(this.A02, this.A01);
    }

    private LZ A09(RelativeLayout relativeLayout) {
        LZ lz = new LZ(this.A02, new C2269fv(this), this.A03, new C2270fw(this.A01));
        lz.A05(relativeLayout);
        lz.A04(this.A00.getIntExtra(A0L(120, 27, 91), 200));
        XP.A0K(relativeLayout, ViewCompat.MEASURED_STATE_MASK);
        return lz;
    }

    private C5K A0A() {
        AnonymousClass77 A02 = A02();
        if (A02 == null) {
            return null;
        }
        return new C5K(this.A02, this.A03, new C2270fw(this.A01), A02, new LY(), 1);
    }

    private C5K A0B() {
        AnonymousClass73 A03 = A03();
        if (A03 == null) {
            return null;
        }
        return new C5K(this.A02, this.A03, new C2270fw(this.A01), A03, new LX(), 0);
    }

    private IG A0C() {
        C2022bt A02;
        AbstractC2392hy A00 = A00();
        if (A00 == null || (A02 = AbstractC2023bu.A02(A00.A17())) == null) {
            return null;
        }
        return new IG(this.A02, new C2270fw(this.A01), A02, A00.A25());
    }

    private C1392Fy A0D(EnumC1779Vb enumC1779Vb) {
        YY lx;
        InterfaceC1840Xn c6p;
        C2390hw A01 = A01();
        if (A01 == null) {
            return null;
        }
        if (enumC1779Vb == EnumC1779Vb.A04) {
            lx = new LY();
            c6p = new C2270fw(this.A01);
        } else {
            lx = new LX();
            c6p = new C6P(this.A01);
        }
        return new C1392Fy(this.A02, lx, this.A03, A01, new SF(this.A02), c6p);
    }

    private C4H A0E() {
        AnonymousClass77 A02 = A02();
        if (A02 == null) {
            if (A05[1].charAt(5) != 'X') {
                throw new RuntimeException();
            }
            A05[3] = "TvLwsmu9uaa0faVP4fF8b7PGg31O8U7I";
            return null;
        }
        return new C4H(this.A02, new LY(), this.A03, A02, new SF(this.A02), new C2270fw(this.A01));
    }

    private C10883r A0F() {
        AnonymousClass77 A02 = A02();
        if (A02 == null) {
            return null;
        }
        return new C10883r(this.A02, new LY(), this.A03, A02, new SF(this.A02), new C2270fw(this.A01));
    }

    private C10883r A0G() {
        AnonymousClass73 A03 = A03();
        if (A03 == null) {
            return null;
        }
        return new C10883r(this.A02, new LX(), this.A03, A03, new SF(this.A02), new C6P(this.A01));
    }

    private FL A0H() {
        AnonymousClass73 A03;
        AnonymousClass73 A032 = A03();
        if (A032 == null || (A03 = A03()) == null) {
            return null;
        }
        return new FL(this.A02, this.A03, A032, A03, new C6P(this.A01), this.A01);
    }

    private C10873q A0I() {
        AnonymousClass77 dataBundle = A02();
        if (dataBundle == null) {
            return null;
        }
        dataBundle.A1G(this.A01.A08());
        return new C10873q(this.A02, this.A03, new SF(this.A02), new C2270fw(this.A01), dataBundle);
    }

    private C10873q A0J() {
        AnonymousClass73 dataBundle = A03();
        if (dataBundle == null) {
            return null;
        }
        dataBundle.A1G(this.A01.A08());
        return new C10873q(this.A02, this.A03, new SF(this.A02), new C2270fw(this.A01), dataBundle);
    }

    private C2090cz A0K(YY yy, AbstractC2392hy abstractC2392hy) {
        NB A07 = abstractC2392hy.A20().A0H().A07();
        if (A07 == null || !A07.A0M()) {
            return null;
        }
        HashMap hashMap = new HashMap();
        hashMap.put(A0L(86, 9, 33), yy.A8d());
        return new C2090cz(this.A02, abstractC2392hy, A07, this.A03, null, hashMap);
    }

    public final InterfaceC1841Xo A0N(EnumC1779Vb enumC1779Vb, RelativeLayout relativeLayout) {
        if (enumC1779Vb == null) {
            return null;
        }
        switch (R4.A00[enumC1779Vb.ordinal()]) {
            case 1:
                if (relativeLayout != null) {
                    return A09(relativeLayout);
                }
                return null;
            case 2:
                return A0J();
            case 3:
                return A0G();
            case 4:
                return A07();
            case 5:
                return A05();
            case 6:
                C10883r A0F = A0F();
                if (A05[4].charAt(13) != '3') {
                    A05[1] = "IIJ0HXviRARge0yizoGTY0JUA2Nzjczv";
                    return A0F;
                }
                String[] strArr = A05;
                strArr[6] = "UHMFNKnwuKHYyMbevaCPtufG1H9dhH1t";
                strArr[2] = "s6UgSHR7PtydXMVItCKPjBxPhDp7nABU";
                return A0F;
            case 7:
                return A0E();
            case 8:
                return A0I();
            case 9:
                return A06();
            case 10:
                return A0C();
            case 11:
                C5K A0A = A0A();
                if (A05[5].charAt(3) != 'i') {
                    throw new RuntimeException();
                }
                A05[3] = "7AQwH6OZkLua7JLoKEhUfmskdEmJStMK";
                return A0A;
            case 12:
                return A0B();
            case 13:
            case 14:
                return A0D(enumC1779Vb);
            case 15:
                return A08();
            case 16:
                return A0H();
            default:
                return null;
        }
    }
}
