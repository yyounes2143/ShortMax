package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import java.util.Arrays;
import java.util.HashMap;
/* renamed from: com.facebook.ads.redexgen.X.af  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC1946af {
    public static byte[] A00;
    public static String[] A01 = {"e7juOHCMVCS96MucXvvyM5upzpE0CxcL", "6Axk6XM18YFtFlcC0tEdKqjogVlmemrm", "CHYE97fUe", "94l1C", "pvrd7E3JtMrEOvPAC3lcGaqqDdvc2Rnk", "mswd2ljSuB4EOxjza27Iz7krcpdQKmDN", "x2gmwPWroRNX0socjzMaFBH0Y3mBhUE3", "1dJrelJWCcDuEHtNsp3IaM8Oqex3ZZ7a"};

    public static String A01(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 41);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A00 = new byte[]{-73, -32, 10, -73, -32, 5, 10, 11, -8, 5, 11, -73, -2, -8, 4, -4, 10, -73, -8, 3, 3, 6, 14, -4, -5, -47, -73, -121, -80, -38, -121, -80, -43, -38, -37, -56, -43, -37, -121, -50, -56, -44, -52, -38, -95, -121, -57, 14, 22, 22, 14, 19, 12, -57, 13, 8, 19, 19, 9, 8, 10, 18, -57, 28, 25, 19, -57, 8, 29, 8, 16, 19, 8, 9, 19, 12, -31, -57, 79, -104, -94, -126, -93, -98, -95, -108, 105, 79, 90, -95, -9, -22, -27, -26, -16, -95, -10, -13, -19, -95, -22, -12, -95, -17, -10, -19, -19, -69, -95, 4, 16, 14, -49, 7, 2, 4, 6, 3, 16, 16, 12, -49, 12, 2, 21, 2, 15, 2, -42, -41, -46, -43, -56, -35, -34, -39, -36, -49, -55, -33, -36, -42, -55, -31, -49, -52, -55, -48, -53, -42, -42, -52, -53, -51, -43, -30, -43, -48, -47, -37, -53, -31, -34, -40};
        String[] strArr = A01;
        if (strArr[5].charAt(19) != strArr[7].charAt(19)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A01;
        strArr2[3] = "ump74";
        strArr2[2] = "QJx5Vwz5z";
    }

    static {
        A02();
    }

    public static AbstractC1945ae A00(C1949ai c1949ai, Bundle bundle, boolean z10) {
        AbstractC1945ae c1486Jp;
        c1949ai.A06().A0H().A00(false);
        C1563Mp A20 = c1949ai.A05().A20();
        double A002 = AbstractC1936aV.A00(A20);
        boolean isWatchAndBrowse = c1949ai.A05().A20().A0T();
        boolean A06 = AbstractC1936aV.A06(c1949ai.A00(), c1949ai.A01(), A002);
        MH A003 = MI.A00(c1949ai.A06(), c1949ai.A07(), A01(0, 0, 8), WQ.A00(c1949ai.A05().A20().A0J().A05()), new HashMap(), c1949ai.A05().A21());
        boolean z11 = !TextUtils.isEmpty(A20.A0H().A09());
        if (U7.A1u(c1949ai.A06())) {
            C2111dL A062 = c1949ai.A06();
            String[] strArr = A01;
            if (strArr[4].charAt(27) == strArr[6].charAt(27)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[5] = "oHCvC4ERmXYMU8sW9KKIPv7pnY2wXb01";
            strArr2[7] = "G3HUaMks2xBdg2z9mSbIts1gYwx1OgmU";
            A062.A0B().AK2(c1949ai.A02(), c1949ai.A05().A25(), z11);
        }
        boolean A04 = A04(c1949ai, z11);
        if ((isWatchAndBrowse && (A003 instanceof C7O)) || A04) {
            c1486Jp = A03(c1949ai) ? new C1463Is(c1949ai) : new JU(c1949ai, A04);
        } else if (z11) {
            c1486Jp = new C11265d(c1949ai);
        } else if (c1949ai.A05().A1U()) {
            return new C1494Jx(c1949ai);
        } else {
            if (c1949ai.A05().A1b()) {
                c1486Jp = new C11285f(c1949ai);
            } else if (U7.A2a(c1949ai.A06())) {
                c1486Jp = new C11275e(c1949ai, A06);
            } else if (A06) {
                c1486Jp = new C1491Ju(c1949ai, c1949ai.A00() == 2);
            } else {
                c1486Jp = new C1486Jp(c1949ai, AbstractC1936aV.A04(A002));
            }
        }
        if (z10) {
            c1486Jp.A1G(A20, c1949ai.A05().A25(), A002, bundle);
        }
        return c1486Jp;
    }

    public static boolean A03(C1949ai c1949ai) {
        if (!c1949ai.A05().A1o()) {
            boolean A1U = c1949ai.A05().A1U();
            String[] strArr = A01;
            if (strArr[4].charAt(27) == strArr[6].charAt(27)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[5] = "BfXu055milBajq8QiXDIPY7ZZDWb7rZy";
            strArr2[7] = "zfsTxDhfKJjHYbZVz1DIv6IoDbSXcVhK";
            if (!A1U) {
                return false;
            }
        }
        return true;
    }

    public static boolean A04(C1949ai c1949ai, boolean z10) {
        boolean z11 = false;
        if (c1949ai.A05().A1r() && z10) {
            Uri A002 = WQ.A00(c1949ai.A05().A20().A0J().A05());
            String authority = A002.getAuthority();
            if (TextUtils.isEmpty(authority)) {
                c1949ai.A06().A0F().ABk();
                return false;
            }
            boolean isInstantGamesEnabled = authority.equals(A01(128, 5, 58));
            boolean isInstantGames = A002.getQueryParameter(A01(155, 9, 67)) == null;
            String queryParameter = A002.getQueryParameter(A01(133, 22, 65));
            boolean isGoogleFallBackUrlAvailable = !TextUtils.isEmpty(queryParameter) && queryParameter.contains(c1949ai.A05().A0w());
            boolean equals = c1949ai.A06().getPackageName().equals(A01(109, 19, 120));
            boolean A1s = c1949ai.A05().A1s();
            if (isInstantGamesEnabled && isInstantGames && isGoogleFallBackUrlAvailable && (!equals || A1s)) {
                z11 = true;
            }
            if (!z11 && Build.VERSION.SDK_INT >= 24) {
                c1949ai.A06().A0F().ABj(A01(78, 11, 6) + isInstantGamesEnabled + A01(89, 20, 88) + isInstantGames + A01(46, 32, 126) + isGoogleFallBackUrlAvailable + A01(27, 19, 62) + equals + A01(0, 27, 110) + A1s);
            }
            return z11;
        }
        return false;
    }
}
