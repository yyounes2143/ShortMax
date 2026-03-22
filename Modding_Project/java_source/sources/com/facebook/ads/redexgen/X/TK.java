package com.facebook.ads.redexgen.X;

import android.content.SharedPreferences;
import android.util.Log;
import com.facebook.ads.AudienceNetworkActivity;
import com.facebook.ads.AudienceNetworkAds;
import com.facebook.ads.internal.api.BuildConfigApi;
import com.facebook.ads.internal.dynamicloading.FlashPreferences;
import com.facebook.ads.internal.settings.AdInternalSettings;
import com.facebook.ads.internal.settings.MultithreadedBundleWrapper;
import com.facebook.ads.internal.util.activity.ActivityUtils;
import com.facebook.ads.internal.util.process.ProcessUtils;
import com.ss.ttvideoengine.model.VideoRef;
import java.lang.Thread;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: assets/audience_network.dex */
public final class TK {
    public static boolean A00;
    public static boolean A01;
    public static byte[] A02;
    public static String[] A03 = {"i0FOsf0o9fpBvAlaEaGgnCYFRbNnwBKJ", "ZsBa2nEfyhltTo", "ZG6g5nWnUhxh", "6zjosiDwJWE47kuMvKAUCDrCWUeR8P3q", "Gh89HIHHDqfPtiuASbXLVil627eRz", "Lsbp3nhJR34oAmuvtJAouWbaxC4Ny9OM", "s0Y", "C"};
    public static final AtomicBoolean A04;
    public static final AtomicBoolean A05;
    public static final AtomicBoolean A06;

    public static String A02(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 33);
        }
        return new String(copyOfRange);
    }

    public static void A03() {
        A02 = new byte[]{-86, -93, -92, -39, -85, -43, -92, -85, -54, -58, -59, -7, -24, -19, -23, -14, -25, -23, -46, -23, -8, -5, -13, -10, -17, -88, -103, -96, 117, -66, -61, -66, -55, -66, -74, -63, -66, -49, -74, -55, -66, -60, -61, 117, -56, -55, -74, -57, -55, -70, -71, -84, -67, -60, 121, -48, -70, -52, 121, -70, -59, -53, -66, -70, -67, -46, 121, -62, -57, -62, -51, -62, -70, -59, -62, -45, -66, -67, 122, 121, -84, -60, -62, -55, -55, -62, -57, -64, -121, -90, -68, -62, 109, -79, -68, -69, 116, -63, 109, -80, -82, -71, -71, 109, -114, -62, -79, -74, -78, -69, -80, -78, -101, -78, -63, -60, -68, -65, -72, -114, -79, -64, 123, -74, -69, -74, -63, -74, -82, -71, -74, -57, -78, 117, 118, 123, 109, -96, -68, -70, -78, 109, -77, -62, -69, -80, -63, -74, -68, -69, -82, -71, -74, -63, -58, 109, -70, -82, -58, 109, -69, -68, -63, 109, -60, -68, -65, -72, 109, -67, -65, -68, -67, -78, -65, -71, -58, 123, -120, -105, -112, -58, -52, -63, -45, -56, 0, 6, -5, 13, 2, -7, -3, 9, 8, 0, 3, 1, -42, -44, -35, -44, -31, -40, -46, -3, 2, -3, 8, -3, -11, 0, -3, 14, -7, -51, -46, -51, -40, -51, -59, -48, -51, -34, -55, -116, -115, -124, -46, -45, -40, -124, -57, -59, -48, -48, -55, -56, -110, 1, -10, 8, 9, -12, 7, -6, 8, 10, 1, 9};
    }

    static {
        A03();
        A06 = new AtomicBoolean();
        A04 = new AtomicBoolean();
        A05 = new AtomicBoolean();
    }

    public static YU A00() {
        return new YU();
    }

    public static YP A01(C2085cu c2085cu) {
        return new YP(c2085cu);
    }

    public static void A04(AudienceNetworkAds.InitListener initListener, AudienceNetworkAds.InitResult initResult) {
        XJ.A01.execute(new YV(initListener, initResult));
    }

    public static void A06(C2085cu c2085cu) {
        if (U9.A0P(c2085cu) && !A05.getAndSet(true)) {
            try {
                Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = new C1712Sl(Thread.getDefaultUncaughtExceptionHandler(), c2085cu, new YL());
                Thread.setDefaultUncaughtExceptionHandler(defaultUncaughtExceptionHandler);
            } catch (Exception e10) {
                c2085cu.A08().AAy(A02(198, 7, 78), AbstractC1722Sv.A1X, new C1723Sw(e10));
            }
        }
    }

    public static void A07(C2085cu c2085cu) {
        A0H(c2085cu, null, null, 3);
    }

    public static void A08(C2085cu c2085cu) {
        A0H(c2085cu, null, null, 3);
    }

    public static void A09(C2085cu c2085cu) {
        if (U7.A2H(c2085cu)) {
            A0F(c2085cu, 0);
        }
        if (U7.A2Q(c2085cu)) {
            A0B(c2085cu);
        }
    }

    public static void A0A(C2085cu c2085cu) {
        if (U7.A2I(c2085cu)) {
            String[] strArr = A03;
            if (strArr[1].length() == strArr[6].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A03;
            strArr2[1] = "XjvPwbQrSqkAxC";
            strArr2[6] = "skO";
            A0G(c2085cu, null, 3);
        }
    }

    public static void A0B(C2085cu c2085cu) {
        XU.A06.execute(new C1859Yg(c2085cu));
    }

    public static void A0C(C2085cu c2085cu) {
        AbstractC1585Nl.A02(c2085cu);
        C1716Sp.A0C(c2085cu, new YK(c2085cu), new C1929aO(), BuildConfigApi.isDebug());
        c2085cu.A0A();
        A0D(c2085cu);
    }

    public static void A0D(C2085cu c2085cu) {
        if (ProcessUtils.isRemoteRenderingProcess()) {
            return;
        }
        SharedPreferences sharedPreferences = FlashPreferences.getSharedPreferences(c2085cu);
        String string = sharedPreferences.getString(A02(186, 12, 121), null);
        String string2 = sharedPreferences.getString(A02(VideoRef.VALUE_VIDEO_REF_SUBTITLE_POSITION_X, 11, 116), null);
        if (string != null && string2 != null) {
            InterfaceC1721Su A08 = c2085cu.A08();
            C1723Sw c1723Sw = new C1723Sw(string2);
            String flashConfig = A02(181, 5, 63);
            A08.ABR(flashConfig, 3701, c1723Sw);
        }
    }

    public static void A0F(C2085cu c2085cu, int i10) {
        SP.A01(c2085cu);
        if (A04.getAndSet(true)) {
            return;
        }
        if (AdInternalSettings.isDebugBuild() || AdInternalSettings.isDebuggerOn()) {
            VF.A02();
        }
        A06(c2085cu);
        AbstractC1799Vw.A00(U7.A0q(c2085cu), BuildConfigApi.isDebug(), A00(), A01(c2085cu));
        S0.A03(U7.A04(c2085cu));
        if (!ProcessUtils.isRemoteRenderingProcess()) {
            C2208ev.A09(new YN(c2085cu));
        }
        if (i10 == 3) {
            Log.e(A02(8, 17, 99), A02(89, 89, 44));
            c2085cu.A08().ABR(A02(178, 3, 6), AbstractC1722Sv.A0R, new C1723Sw(A02(215, 24, 67)));
        }
        ActivityUtils.A04(c2085cu, AudienceNetworkActivity.class);
        XU.A05(c2085cu);
        C1755Ud.A05(c2085cu);
        MW.A01(c2085cu);
        if (U7.A16(c2085cu)) {
            AbstractC1669Qt.A00(c2085cu);
        }
        if (U7.A1u(c2085cu)) {
            C1820Wt.A02().A8s(c2085cu);
        }
    }

    public static void A0G(C2085cu c2085cu, AudienceNetworkAds.InitListener initListener, int i10) {
        SP.A01(c2085cu);
        boolean z10 = false;
        synchronized (TK.class) {
            boolean execute = A00;
            if (!execute) {
                if (i10 != 1 && i10 != 2) {
                    if (i10 == 3) {
                        boolean execute2 = A01;
                        if (!execute2) {
                            A01 = true;
                            z10 = true;
                        }
                    }
                }
                A00 = true;
                z10 = true;
            }
        }
        if (z10) {
            A0F(c2085cu, i10);
            XU.A08.execute(new ZW(c2085cu, initListener));
        } else if (i10 != 1) {
        } else {
            String A022 = A02(51, 38, 56);
            if (initListener != null) {
                A04(initListener, new TJ(true, A022));
            } else {
                Log.w(A02(8, 17, 99), A022);
            }
        }
    }

    public static void A0H(C2085cu c2085cu, MultithreadedBundleWrapper multithreadedBundleWrapper, AudienceNetworkAds.InitListener initListener, int i10) {
        VF.A05(A02(205, 10, 115), A02(25, 26, 52), A02(0, 8, 82));
        C2208ev.A06();
        A0G(c2085cu, initListener, i10);
    }

    public static synchronized boolean A0I() {
        boolean z10;
        synchronized (TK.class) {
            z10 = A00;
        }
        return z10;
    }
}
