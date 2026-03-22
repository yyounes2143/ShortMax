package com.facebook.ads.redexgen.X;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.facebook.ads.internal.util.activity.ActivityUtils;
import com.facebook.ads.internal.util.activity.AdActivityIntent;
import com.facebook.ads.internal.util.process.ProcessUtils;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.ss.ttvideoengine.log.IVideoEventLogger;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import kotlin.jvm.internal.ByteCompanionObject;
/* loaded from: assets/audience_network.dex */
public final class WN {
    public static byte[] A00;
    public static String[] A01 = {"T4dPy6oALRnRtXie0LYtNa7PXoaz5xNV", "GuB", "", "N5ZcwGbFLOfjQt8i7LOYdNhhAY9bfZ8J", "XGEF2r9HzP4eyBZiq0puzcaX55o", "r68Pu4BAqG0jUrZ19Ek7iVXcY822rh1q", "w97ZnD7u", "Y1Vl"};

    public static String A07(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 79);
        }
        return new String(copyOfRange);
    }

    public static void A09() {
        A00 = new byte[]{77, 66, 83, 74, 78, 56, 77, 83, 95, 73, 79, 89, 94, 73, 83, 88, 67, 71, 73, 66, 84, 91, 74, 82, 69, 70, 74, 84, 81, 74, 86, 90, 91, 65, 80, 91, 65, 85, 87, 90, 90, 83, 68, 73, 82, 89, 91, 87, 95, 88, 88, 122, 117, 60, 111, 59, 104, 111, 122, 105, 111, 59, 90, 110, ByteCompanionObject.MAX_VALUE, 114, 126, 117, 120, 126, 85, 126, 111, 108, 116, 105, 112, 90, 120, 111, 114, 109, 114, 111, 98, 53, 59, 86, 122, 112, 126, 59, 104, 110, 105, 126, 59, 111, 115, 122, 111, 59, 114, 111, 60, 104, 59, 114, 117, 59, 98, 116, 110, 105, 59, 90, 117, ByteCompanionObject.MAX_VALUE, 105, 116, 114, ByteCompanionObject.MAX_VALUE, 86, 122, 117, 114, 125, 126, 104, 111, 53, 99, 118, 119, 59, 125, 114, 119, 126, 53, 28, 1, 13, 11, 24, 6, 12, 11, 21, 21, 17, 18, 38, 55, 58, 54, 61, 48, 54, 29, 54, 39, 36, 60, 33, 56, 26, 104, 64, 79, 126, 64, 66, 85, 72, 87, 72, 85, 88, 41, 38, 44, 58, 39, 33, 44, 36, 43, 33, 55, 42, 44, 33, 107, 44, 43, 49, 32, 43, 49, 107, 36, 38, 49, 44, 42, 43, 107, 19, 12, 0, 18, 58, 53, 63, 41, 52, 50, 63, 117, 50, 53, 47, 62, 53, 47, 117, 56, 58, 47, 62, 60, 52, 41, 34, 117, 25, 9, 20, 12, 8, 26, 25, 23, 30, 112, 125, 125, 126, 70, 86, 75, 83, 87, 65, 86, 113, 118, 104, 50, 48, 61, 61, 52, 35, 24, 53, 20, 22, 27, 27, 18, 5, 35, 14, 7, 18, 54, 57, 60, 48, 59, 33, 1, 58, 62, 48, 59, 113, 125, ByteCompanionObject.MAX_VALUE, 60, 115, 124, 118, 96, 125, 123, 118, 60, 112, 96, 125, 101, 97, 119, 96, 60, 115, 98, 98, 126, 123, 113, 115, 102, 123, 125, 124, 77, 123, 118, 15, 3, 1, 66, 13, 2, 8, 30, 3, 5, 8, 66, 26, 9, 2, 8, 5, 2, 11, 103, 107, 105, 42, 98, 101, 103, 97, 102, 107, 107, 111, 42, 99, 107, 107, 99, 104, 97, 116, 104, 101, 125, 119, 112, 107, 118, 97, 101, 106, 42, 67, 107, 107, 99, 104, 97, 84, 104, 101, 125, 87, 112, 107, 118, 97, 69, 74, 75, 114, 97, 118, 104, 101, 125, 65, 124, 112, 97, 118, 106, 101, 104, 69, 103, 112, 109, 114, 109, 112, 125, 109, 97, 99, 32, 104, 111, 109, 107, 108, 97, 97, 101, 32, 101, 111, 122, 111, 96, 111, 66, 78, 79, 71, 72, 70, 126, 82, 84, 81, 81, 78, 83, 85, 82, 108, 84, 77, 85, 72, 118, 72, 79, 69, 78, 86, 3, 15, 14, 6, 9, 7, 63, 19, 21, 16, 16, 15, 18, 20, 19, 51, 16, 12, 9, 20, 51, 3, 18, 5, 5, 14, 45, 21, 12, 20, 9, 55, 9, 14, 4, 15, 23, 5, 20, 3, 7, 18, 3, 57, 8, 3, 17, 57, 18, 7, 4, 75, 79, 4, 11, 14, 22, 7, 16, 7, 6, 61, 1, 14, 11, 1, 9, 61, 6, 7, 14, 3, 27, 61, 15, 17, 39, 46, 33, 43, 35, 42, 61, 27, 38, 34, 42, 23, 11, 11, 15, 36, 56, 56, 60, 118, 99, 99, 60, 32, 45, 53, 98, 43, 35, 35, 43, 32, 41, 98, 47, 35, 33, 99, 63, 56, 35, 62, 41, 99, 45, 60, 60, 63, 99, 38, 58, 58, 62, 61, 82, 78, 78, 74, 73, 0, 21, 21, 74, 86, 91, 67, 20, 93, 85, 85, 93, 86, 95, 20, 89, 85, 87, 21, 94, 5, 24, 21, 64, 71, 90, 93, 72, 71, 93, 118, 78, 72, 68, 76, 90, 61, 39, 11, 55, 53, 55, 11, 50, 61, 56, 32, 49, 38, 11, 55, 56, 61, 55, 63, 39, 11, 59, 58, 11, 55, 32, 53, 13, 23, 59, 7, 22, 1, 5, 16, 13, 18, 1, 59, 5, 23, 59, 7, 16, 5, 59, 18, 86, 106, 102, 117, 108, 98, 115, 85, 76, 95, 72, 86, 91, 67, 57, 37, 40, 48, 103, 46, 38, 38, 46, 37, 44, 103, 42, 38, 36, 53, 34, 52, 46, 61, 34, 10, 40, 35, 34, 35, 56, 63, 39, 35, 51, 31, 50, 65, 94, 82, 64, 99, 78, 71, 82};
    }

    static {
        A09();
    }

    private int A00(C2111dL c2111dL) {
        PackageInfo packageInfo;
        try {
            PackageManager packageManager = c2111dL.getPackageManager();
            if (packageManager != null && (packageInfo = packageManager.getPackageInfo(A07(412, 19, 65), 0)) != null && !TextUtils.isEmpty(packageInfo.versionName)) {
                return Integer.parseInt(packageInfo.versionName.split(A07(166, 2, 9), 2)[0]);
            }
            return -1;
        } catch (PackageManager.NameNotFoundException | NumberFormatException unused) {
            return -1;
        }
    }

    public static Intent A01(Uri uri) {
        Intent intent = new Intent(A07(186, 26, 10), uri);
        intent.setComponent(null);
        intent.setSelector(null);
        return intent;
    }

    public static Intent A02(C2111dL c2111dL, Uri uri) {
        Intent A012 = A01(uri);
        A012.addCategory(A07(212, 33, 20));
        A012.addFlags(268435456);
        A012.putExtra(A07(MediaPlayer.MEDIA_PLAYER_OPTION_UPDATE_TIMESTAMP_MODE, 34, 93), c2111dL.getPackageName());
        A012.putExtra(A07(TTVideoEngineInterface.PLAYER_OPTION_ENABLE_ABR, 14, 41), false);
        if (U7.A1y(c2111dL)) {
            if (A07(508, 2, 98).equals(uri.getScheme())) {
                A012.setPackage(A07(412, 19, 65));
            }
        }
        return A012;
    }

    public static Intent A03(C2111dL c2111dL, Uri uri) {
        Intent A012 = A01(uri);
        A012.setPackage(A07(322, 19, 35));
        A012.putExtra(A07(MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RANGE_TIME, 8, 30), c2111dL.getPackageName());
        A012.putExtra(A07(682, 7, 117), true);
        return A012;
    }

    public static Uri A04(C2111dL c2111dL, Uri uri) {
        boolean equals = A07(676, 6, 72).equals(uri.getScheme());
        String A07 = A07(587, 26, 117);
        if (equals) {
            return WQ.A00(A07 + uri.getEncodedQuery());
        }
        if (uri.toString().startsWith(A07)) {
            return uri;
        }
        c2111dL.A0F().AB3(5);
        return null;
    }

    private final ME A05(C2111dL c2111dL, Uri uri, String str, Map<String, String> map) throws W9 {
        boolean A05 = U8.A05(c2111dL);
        boolean isInAppBrowserEnabled = A0F(uri);
        if (isInAppBrowserEnabled && A05) {
            A0C(c2111dL, uri, str, map);
            ME me2 = ME.A08;
            if (A01[7].length() != 30) {
                String[] strArr = A01;
                strArr[2] = "";
                strArr[1] = "Q7p";
                return me2;
            }
            throw new RuntimeException();
        }
        c2111dL.A0F().A9p(A05);
        A0A(c2111dL, uri);
        return ME.A07;
    }

    public static ME A06(WN wn2, C2111dL c2111dL, Uri uri, String str, Map<String, String> extraData) throws W9 {
        boolean z10 = A0F(uri) && A07(689, 15, 6).equals(uri.getHost());
        boolean isGooglePlayWebLink = A07(676, 6, 72).equals(uri.getScheme());
        if (!isGooglePlayWebLink && !z10) {
            return wn2.A05(c2111dL, uri, str, extraData);
        }
        try {
            wn2.A0B(c2111dL, uri, str);
            return ME.A03;
        } catch (WL unused) {
            return wn2.A05(c2111dL, uri, str, extraData);
        }
    }

    private String A08(String str) {
        return Base64.encodeToString(str.getBytes(), 0);
    }

    private void A0A(C2111dL c2111dL, Uri uri) throws W9 {
        WB.A0D(c2111dL, A02(c2111dL, uri));
    }

    private final void A0B(C2111dL c2111dL, Uri uri, String str) throws WL, W9 {
        if (A0H(c2111dL)) {
            if (U7.A1H(c2111dL)) {
                String queryParameter = uri.getQueryParameter(A07(613, 2, 62));
                if (!TextUtils.isEmpty(queryParameter)) {
                    if (A01[3].charAt(29) != 'Z') {
                        throw new RuntimeException();
                    }
                    String[] strArr = A01;
                    strArr[4] = "AXwrjbGi2NqoDqohSkmHlyhQGK6";
                    strArr[6] = "xSKC0PNk";
                    String A07 = A07(615, 13, 102);
                    String packageName = uri.toString();
                    AbstractC1596Nw.A03(queryParameter, A07, packageName);
                }
            }
            boolean z10 = (c2111dL.A0H().A01() && U7.A1b(c2111dL)) || (U7.A1z(c2111dL) && A0I(c2111dL));
            if (!z10) {
                boolean shouldTryToOpenSplitScreen = U7.A2L(c2111dL);
                if (shouldTryToOpenSplitScreen) {
                    boolean shouldTryToOpenSplitScreen2 = WB.A0E(c2111dL, A03(c2111dL, uri));
                    if (shouldTryToOpenSplitScreen2) {
                        return;
                    }
                }
            }
            boolean A0M = A0M(c2111dL, uri, str);
            if (A01[3].charAt(29) != 'Z') {
                A01[7] = "w5Gj6271lmeoEbiTTMEsWTdaWp";
                if (A0M) {
                    return;
                }
            } else {
                A01[3] = "TMuIQjN9vpUXBqY7VYY4Z8DVMg5lcZnK";
                if (A0M) {
                    return;
                }
            }
            boolean shouldTryToOpenSplitScreen3 = A0K(c2111dL, uri);
            if (shouldTryToOpenSplitScreen3) {
                return;
            }
            Intent A02 = A02(c2111dL, uri);
            A02.setPackage(A07(322, 19, 35));
            if (Build.VERSION.SDK_INT >= 24 && z10) {
                A02.addFlags(268472320);
            }
            WB.A0D(c2111dL, A02);
            return;
        }
        throw new WL();
    }

    private void A0C(C2111dL c2111dL, Uri uri, String str, Map<String, String> extraData) {
        AdActivityIntent A05 = WB.A05(c2111dL);
        if (!ProcessUtils.isRemoteRenderingProcess()) {
            A05.addFlags(268435456);
        }
        A05.putExtra(A07(722, 8, 120), EnumC1779Vb.A03);
        A05.putExtra(A07(249, 10, 107), uri.toString());
        A05.putExtra(A07(MediaPlayer.MEDIA_PLAYER_OPTION_READ_MODE, 11, 26), str);
        A05.putExtra(A07(533, 11, 0), System.currentTimeMillis());
        if (extraData != null) {
            String A07 = A07(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_SAVED_HOST_TIME, 10, 56);
            A05.putExtra(A07, extraData.get(A07));
            String A072 = A07(655, 21, 43);
            A05.putExtra(A072, extraData.get(A072));
            String A073 = A07(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_REND_FIRST_FRAME_TIME, 27, 27);
            A05.putExtra(A073, extraData.get(A073));
            String A074 = A07(510, 23, 45);
            A05.putExtra(A074, extraData.get(A074));
            String A075 = A07(714, 8, 25);
            String str2 = extraData.get(A075);
            if (str2 != null) {
                A05.putExtra(A075, str2);
            }
        }
        try {
            WB.A0B(c2111dL, A05);
        } catch (W9 e10) {
            Throwable cause = e10.getCause();
            Throwable th2 = e10;
            if (cause != null) {
                th2 = e10.getCause();
            }
            c2111dL.A08().AAy(A07(IVideoEventLogger.LOGGER_OPTION_ENGINE_CODE_OPTIMIZATION, 11, 110), AbstractC1722Sv.A0D, new C1723Sw(th2));
            Log.e(A07(149, 17, 28), A07(50, 90, 84), th2);
        }
    }

    public static void A0D(WN wn2, C2111dL c2111dL, Uri uri, String str) {
        wn2.A0N(c2111dL, uri, str);
    }

    public static void A0E(WN wn2, C2111dL c2111dL, Uri uri, String str) throws W9 {
        A06(wn2, c2111dL, uri, str, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0033, code lost:
        if (r0 == false) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean A0F(android.net.Uri r5) {
        /*
            int r1 = android.os.Build.VERSION.SDK_INT
            r0 = 24
            r4 = 0
            if (r1 < r0) goto L1f
            android.security.NetworkSecurityPolicy r0 = android.security.NetworkSecurityPolicy.getInstance()
            boolean r0 = r0.isCleartextTrafficPermitted()
            if (r0 != 0) goto L1f
            android.security.NetworkSecurityPolicy r1 = android.security.NetworkSecurityPolicy.getInstance()
            java.lang.String r0 = r5.getHost()
            boolean r0 = r1.isCleartextTrafficPermitted(r0)
            if (r0 == 0) goto L45
        L1f:
            r0 = 1
        L20:
            java.lang.String r3 = r5.getScheme()
            if (r0 == 0) goto L35
            r2 = 544(0x220, float:7.62E-43)
            r1 = 4
            r0 = 48
            java.lang.String r0 = A07(r2, r1, r0)
            boolean r0 = r0.equalsIgnoreCase(r3)
            if (r0 != 0) goto L43
        L35:
            r2 = 582(0x246, float:8.16E-43)
            r1 = 5
            r0 = 1
            java.lang.String r0 = A07(r2, r1, r0)
            boolean r0 = r0.equalsIgnoreCase(r3)
            if (r0 == 0) goto L44
        L43:
            r4 = 1
        L44:
            return r4
        L45:
            r0 = 0
            goto L20
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.WN.A0F(android.net.Uri):boolean");
    }

    private boolean A0G(C2111dL c2111dL) {
        if (U7.A1E(c2111dL)) {
            int deviceFBVersion = U7.A0E(c2111dL);
            int A002 = A00(c2111dL);
            if (deviceFBVersion == -1 || A002 == -1 || deviceFBVersion > A002) {
                return false;
            }
            int i10 = Build.VERSION.SDK_INT;
            String[] strArr = A01;
            String str = strArr[4];
            String str2 = strArr[6];
            int length = str.length();
            int fbVersionWithGPOverlay = str2.length();
            if (length != fbVersionWithGPOverlay) {
                A01[7] = "9F";
                if (i10 < 28) {
                    return false;
                }
                String[] strArr2 = A01;
                String str3 = strArr2[2];
                String str4 = strArr2[1];
                int length2 = str3.length();
                int fbVersionWithGPOverlay2 = str4.length();
                if (length2 != fbVersionWithGPOverlay2) {
                    String[] strArr3 = A01;
                    strArr3[4] = "HTEWLbQNfCJbfH7LEcJTogLCYG9";
                    strArr3[6] = "jIuteURS";
                    return true;
                }
                return true;
            }
            throw new RuntimeException();
        }
        return false;
    }

    private boolean A0H(C2111dL c2111dL) {
        Intent playStoreIntent = new Intent(A07(186, 26, 10), WQ.A00(A07(548, 34, 3)));
        Iterator<ResolveInfo> it = c2111dL.getPackageManager().queryIntentActivities(playStoreIntent, 0).iterator();
        do {
            boolean hasNext = it.hasNext();
            String[] strArr = A01;
            if (strArr[5].charAt(7) != strArr[0].charAt(7)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[4] = "NqbTETCkL6wtg2G74gvKWlTJws9";
            strArr2[6] = "JszVyiBC";
            if (!hasNext) {
                return false;
            }
        } while (!it.next().activityInfo.applicationInfo.packageName.equals(A07(322, 19, 35)));
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0077, code lost:
        if (r0 != 0) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0079, code lost:
        r9 = android.content.res.Resources.getSystem().getBoolean(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0081, code lost:
        r1 = r4.getIdentifier(A07(com.ss.ttm.player.MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_MPD_DNS_TIME, 37, 47), r5, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x008f, code lost:
        if (r1 == 0) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0091, code lost:
        r10 = android.content.res.Resources.getSystem().getBoolean(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0099, code lost:
        r11 = com.facebook.ads.redexgen.X.WZ.A0C(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x009d, code lost:
        if (r9 == false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x009f, code lost:
        if (r10 == false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00a1, code lost:
        if (r11 == false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a3, code lost:
        r8 = r8 & r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00ac, code lost:
        r6 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00d7, code lost:
        if (r0 != 0) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean A0I(com.facebook.ads.redexgen.X.C2111dL r12) {
        /*
            Method dump skipped, instructions count: 221
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.WN.A0I(com.facebook.ads.redexgen.X.dL):boolean");
    }

    public static boolean A0J(C2111dL c2111dL) {
        Activity A0E;
        PackageManager packageManager;
        ActivityInfo activityInfo;
        try {
            A0E = c2111dL.A0E();
            packageManager = c2111dL.getPackageManager();
        } catch (PackageManager.NameNotFoundException | IllegalAccessException | NoSuchFieldException e10) {
            c2111dL.A0F().ABV(e10.getMessage());
        }
        if (A0E == null || packageManager == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT > 32) {
            activityInfo = packageManager.getActivityInfo(A0E.getComponentName(), PackageManager.ComponentInfoFlags.of(0L));
        } else {
            activityInfo = packageManager.getActivityInfo(A0E.getComponentName(), 128);
        }
        Field declaredField = ActivityInfo.class.getDeclaredField(A07(704, 10, 8));
        declaredField.setAccessible(true);
        Object obj = declaredField.get(activityInfo);
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue() != 0;
        }
        return false;
    }

    public static boolean A0K(C2111dL c2111dL, Uri uri) {
        String A07 = A07(322, 19, 35);
        if (U7.A1G(c2111dL)) {
            if (Build.VERSION.SDK_INT < 23) {
                c2111dL.A0F().AB3(1);
                return false;
            }
            PackageManager packageManager = c2111dL.getPackageManager();
            if (packageManager == null) {
                return false;
            }
            try {
                PackageInfo packageInfo = packageManager.getPackageInfo(A07, 0);
                if (packageInfo != null && !TextUtils.isEmpty(packageInfo.versionName)) {
                    String[] split = packageInfo.versionName.split(A07(166, 2, 9), 2);
                    if (split.length < 1) {
                        c2111dL.A0F().AB3(2);
                        return false;
                    } else if (Integer.parseInt(split[0]) < U7.A0G(c2111dL)) {
                        c2111dL.A0F().AB3(3);
                        return false;
                    }
                }
                Intent intent = new Intent(A07(186, 26, 10));
                String packageName = c2111dL.getPackageName();
                intent.setPackage(A07);
                Uri hsdpUri = A04(c2111dL, uri);
                if (hsdpUri == null) {
                    return false;
                }
                intent.setData(hsdpUri);
                intent.putExtra(A07(682, 7, 117), true);
                intent.putExtra(A07(MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RANGE_TIME, 8, 30), packageName);
                if (intent.resolveActivity(packageManager) != null) {
                    Activity A0E = c2111dL.A0E();
                    if (A0E == null) {
                        A0E = ActivityUtils.A00();
                    }
                    if (A0E != null) {
                        A0E.startActivityForResult(intent, 945321098);
                        c2111dL.A0F().AB3(0);
                        return true;
                    }
                    c2111dL.A0F().AB3(7);
                    return false;
                }
                LH A0F = c2111dL.A0F();
                String[] strArr = A01;
                if (strArr[2].length() != strArr[1].length()) {
                    String[] strArr2 = A01;
                    strArr2[2] = "";
                    strArr2[1] = "uL3";
                    A0F.AB3(6);
                    return false;
                }
                throw new RuntimeException();
            } catch (PackageManager.NameNotFoundException | NumberFormatException unused) {
                c2111dL.A0F().AB3(4);
                return false;
            }
        }
        return false;
    }

    private boolean A0L(C2111dL c2111dL, Uri uri, String str) throws W9 {
        try {
            Activity A0E = c2111dL.A0E();
            String uri2 = uri.toString();
            if (A0E != null && !TextUtils.isEmpty(uri2)) {
                Intent fbIntent = new Intent();
                if (U7.A1F(c2111dL)) {
                    String A06 = AbstractC2392hy.A06(str);
                    if (TextUtils.isEmpty(A06)) {
                        return false;
                    }
                    fbIntent.putExtra(A07(0, 20, 67), A08(A06));
                }
                fbIntent.setComponent(new ComponentName(A07(412, 19, 65), A07(341, 71, 75)));
                fbIntent.putExtra(A07(140, 9, 22), uri2);
                fbIntent.putExtra(A07(37, 13, 89), A08(A07(20, 17, 90)));
                if (!WB.A0E(c2111dL, fbIntent)) {
                    A0E.startActivityForResult(fbIntent, 2);
                    return true;
                }
                return true;
            }
            return false;
        } catch (ActivityNotFoundException | IllegalStateException e10) {
            c2111dL.A0F().AB2(e10.getMessage());
            return false;
        }
    }

    private boolean A0M(C2111dL c2111dL, Uri uri, String str) throws W9 {
        return A0G(c2111dL) && A0L(c2111dL, uri, str);
    }

    private final boolean A0N(C2111dL c2111dL, Uri uri, String str) {
        return WB.A0G(c2111dL, uri, str);
    }

    public static boolean A0O(WN wn2, C2111dL c2111dL, Uri uri, String str) {
        try {
            A0E(wn2, c2111dL, uri, str);
            return true;
        } catch (W9 e10) {
            Throwable cause = e10.getCause();
            Throwable exceptionToLog = e10;
            if (cause != null) {
                exceptionToLog = e10.getCause();
            }
            c2111dL.A08().AAy(A07(IVideoEventLogger.LOGGER_OPTION_ENGINE_CODE_OPTIMIZATION, 11, 110), AbstractC1722Sv.A05, new C1723Sw(exceptionToLog));
            return false;
        }
    }
}
