package com.facebook.ads.redexgen.X;

import android.content.SharedPreferences;
import android.os.SystemClock;
import android.text.TextUtils;
import android.webkit.WebSettings;
import com.facebook.ads.internal.util.process.ProcessUtils;
import java.util.Arrays;
import java.util.Locale;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.facebook.ads.redexgen.X.Tb  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC1728Tb {
    public static String A00;
    public static byte[] A01;
    public static String[] A02 = {"qZcb6NmBns1n3v1", "rTLETUx3xNnjwSb02Sx6jVZM5Fuzg7Of", "ujF8Yx1ooHYTWOANWsLoHgp9GHsWq5OG", "emoc9RIZRY17k1iV3jHEmbNdIKvpuqWe", "9dj0hHqqeHaqkXambHAPXjsskYxWzSoy", "H6Wp9lsP8ocDK9Bk7hE2Cfl7XjXVKK5i", "baRwZ59Bd0PN8tFBdjuxnLHZSOlJTNRT", "2xLvEFwTfIQTf34sGOrn6donSx3FaGAc"};
    public static final AtomicBoolean A03;
    public static final AtomicReference<String> A04;

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 118);
        }
        return new String(copyOfRange);
    }

    public static void A08() {
        A01 = new byte[]{-56, 3, -18, -22, -23, -10, -41, -23, 29, 12, 17, 13, 22, 11, 13, -10, 13, 28, 31, 23, 26, 19, -18, 23, 26, -23, 22, 12, 26, 23, 17, 12, -29, -18, -22, -5, -10, -41, 6, -18, -7, -11, -12, 9, -30, -18, -7, -11, -11, 9, -30, -71, -60, -64, -54, -63, -83, -53, -42, -46, -29, -26, -65, -63, -67, -68, -67, -86, -55, -59, -39, -42, -78, 64, 57, 79, 62, 69, 60, 60, 54, 79, 76, 79, 80, 88, 79, -9, 57, 69, 67, 4, 60, 55, 57, 59, 56, 69, 69, 65, 4, 55, 58, 73, 4, 63, 68, 74, 59, 72, 68, 55, 66, 4, 75, 55, 52, 50, 59, 50, 63, 54, 48, 25, 37, 37, 33, -33, 18, 24, 22, 31, 37, 31, 29, 15, 28, 9, 11, 17, 15, 24, 30, -20, -22, -36, -23, -42, -40, -34, -36, -27, -21, -42, -29, -40, -22, -21, -42, -23, -36, -35, -23, -36, -22, -33, 59, 41, 38, 35, 58, 45, 41, 59};
    }

    static {
        A08();
        A00 = A00(80, 7, 107);
        A03 = new AtomicBoolean();
        A04 = new AtomicReference<>();
    }

    public static String A01(SQ sq2) {
        return WebSettings.getDefaultUserAgent(sq2);
    }

    public static String A02(SQ sq2) {
        FutureTask futureTask = new FutureTask(new CallableC1727Ta(sq2));
        for (int i10 = 0; i10 < 3; i10++) {
            XJ.A00(futureTask);
            try {
                return (String) futureTask.get();
            } catch (Throwable th2) {
                A09(sq2, th2);
                SystemClock.sleep(500L);
            }
        }
        return null;
    }

    public static String A03(SQ sq2, T6 t62) {
        String A07 = t62.A07();
        if (TextUtils.isEmpty(A07) && !A03.getAndSet(true)) {
            InterfaceC1721Su A08 = sq2.A08();
            int i10 = AbstractC1722Sv.A1Z;
            String bundle = A00(73, 7, 122);
            C1723Sw c1723Sw = new C1723Sw(bundle);
            String bundle2 = A00(116, 7, 87);
            A08.AAy(bundle2, i10, c1723Sw);
        }
        return A07;
    }

    public static String A04(SQ sq2, boolean z10) {
        if (sq2 == null) {
            return A00;
        }
        if (z10) {
            return System.getProperty(A00(123, 10, 59));
        }
        String str = A04.get();
        if (str != null) {
            return str;
        }
        long spUserAgentRefresh = U6.A01(sq2);
        String A002 = A00(143, 23, 1);
        String A003 = A00(133, 10, 52);
        String A004 = A00(88, 28, 96);
        if (spUserAgentRefresh > 0) {
            SharedPreferences sharedPreferences = sq2.getSharedPreferences(ProcessUtils.getProcessSpecificName(A004, sq2), 0);
            String string = sharedPreferences.getString(A003, null);
            long j10 = sharedPreferences.getLong(A002, 0L);
            if (!TextUtils.isEmpty(string) && System.currentTimeMillis() - j10 < spUserAgentRefresh) {
                A04.set(string);
                String[] strArr = A02;
                String str2 = strArr[6];
                String browserUserAgent = strArr[3];
                if (str2.charAt(17) != browserUserAgent.charAt(17)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A02;
                strArr2[6] = "raDju45r7vWAWvtCMjs7ezmbeHuUzRMZ";
                strArr2[3] = "IEXEfOXuBGyf1jRfSjx88B0PyUJh9Pa6";
                return string;
            }
        }
        String str3 = null;
        try {
            str3 = A01(sq2);
            A04.set(str3);
        } catch (Throwable t10) {
            A09(sq2, t10);
        }
        if (str3 == null) {
            str3 = A02(sq2);
        }
        if (str3 == null) {
            return A00;
        }
        if (spUserAgentRefresh > 0) {
            SharedPreferences sharedPreferences2 = sq2.getSharedPreferences(ProcessUtils.getProcessSpecificName(A004, sq2), 0);
            sharedPreferences2.edit().putString(A003, A04.get()).apply();
            sharedPreferences2.edit().putLong(A002, System.currentTimeMillis()).apply();
        }
        return str3;
    }

    public static String A05(T6 t62, SQ sq2) {
        if (U6.A04(sq2)) {
            return A00(63, 5, 5) + A03(sq2, t62) + A00(39, 6, 61) + t62.A06() + A00(45, 6, 61) + t62.A04() + A00(38, 1, 85);
        }
        return A00(0, 0, 76);
    }

    public static String A06(T6 t62, SQ sq2, boolean z10) {
        return A04(sq2, z10) + A00(0, 38, 50) + sq2.A05().A9K() + A00(57, 6, 26) + T6.A04 + A00(38, 1, 85) + A05(t62, sq2) + A00(68, 5, 13) + sq2.A05().A9L() + A00(51, 6, 8) + Locale.getDefault().toString() + A00(87, 1, 36);
    }

    public static void A09(SQ sq2, Throwable th2) {
        sq2.A08().AAy(A00(166, 8, 78), AbstractC1722Sv.A2i, new C1723Sw(th2));
    }
}
