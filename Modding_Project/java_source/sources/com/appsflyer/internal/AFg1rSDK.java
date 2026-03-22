package com.appsflyer.internal;

import android.annotation.SuppressLint;
import android.app.UiModeManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.media.AudioTrack;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.os.SystemClock;
import android.provider.Settings;
import androidx.annotation.VisibleForTesting;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.adjust.sdk.Constants;
import com.applovin.sdk.AppLovinEventTypes;
import com.appsflyer.AFLogger;
import com.appsflyer.AdRevenueScheme;
import com.appsflyer.AppsFlyerProperties;
import com.facebook.ads.internal.util.common.FbValidationUtils;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import com.startshorts.androidplayer.bean.act.CallAppDataKey;
import com.unity3d.services.core.di.ServiceProvider;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Properties;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.p0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class AFg1rSDK implements AFg1nSDK {
    private static int $10 = 0;
    private static int $11 = 1;

    /* renamed from: e  reason: collision with root package name */
    private static int f10934e = 1;
    private static int unregisterClient;
    @NotNull
    private final String AFAdRevenueData;
    @NotNull
    private final ms.i AFKeystoreWrapper;
    @NotNull
    private final AFh1xSDK areAllFieldsValid;
    @NotNull
    private final AFc1qSDK component1;
    @NotNull
    private final AFg1vSDK component2;
    @NotNull
    private final AFi1pSDK component3;
    @NotNull
    private final AFc1oSDK component4;
    @NotNull
    private final AFc1hSDK copy;
    @NotNull
    private final AFg1zSDK copydefault;
    @NotNull
    private final ms.i equals;
    @NotNull
    private final Context getCurrencyIso4217Code;
    @NotNull
    private final AFi1kSDK getMediationNetwork;
    @NotNull
    private final AFg1uSDK getMonetizationNetwork;
    @NotNull
    private final AFj1lSDK getRevenue;
    @NotNull
    private final AFf1eSDK hashCode;
    @NotNull
    private final AFc1eSDK toString;
    private static char[] AFInAppEventParameterName = {35909, 35928, 35921, 35926, 35927, 35903, 35904, 35924, 35933, 35910, 35931, 35879, 35908, 35905, 35911};
    private static int registerClient = 1912311267;
    private static boolean AFLogger = true;
    private static boolean AFInAppEventType = true;

    public AFg1rSDK(@NotNull String str, @NotNull Context context, @NotNull AFi1kSDK aFi1kSDK, @NotNull AFg1uSDK aFg1uSDK, @NotNull AFj1lSDK aFj1lSDK, @NotNull AFg1vSDK aFg1vSDK, @NotNull AFh1xSDK aFh1xSDK, @NotNull AFc1qSDK aFc1qSDK, @NotNull AFc1oSDK aFc1oSDK, @NotNull AFi1pSDK aFi1pSDK, @NotNull AFf1eSDK aFf1eSDK, @NotNull AFc1hSDK aFc1hSDK, @NotNull AFg1zSDK aFg1zSDK, @NotNull AFc1eSDK aFc1eSDK) {
        Intrinsics.checkNotNullParameter(str, "");
        Intrinsics.checkNotNullParameter(context, "");
        Intrinsics.checkNotNullParameter(aFi1kSDK, "");
        Intrinsics.checkNotNullParameter(aFg1uSDK, "");
        Intrinsics.checkNotNullParameter(aFj1lSDK, "");
        Intrinsics.checkNotNullParameter(aFg1vSDK, "");
        Intrinsics.checkNotNullParameter(aFh1xSDK, "");
        Intrinsics.checkNotNullParameter(aFc1qSDK, "");
        Intrinsics.checkNotNullParameter(aFc1oSDK, "");
        Intrinsics.checkNotNullParameter(aFi1pSDK, "");
        Intrinsics.checkNotNullParameter(aFf1eSDK, "");
        Intrinsics.checkNotNullParameter(aFc1hSDK, "");
        Intrinsics.checkNotNullParameter(aFg1zSDK, "");
        Intrinsics.checkNotNullParameter(aFc1eSDK, "");
        this.AFAdRevenueData = str;
        this.getCurrencyIso4217Code = context;
        this.getMediationNetwork = aFi1kSDK;
        this.getMonetizationNetwork = aFg1uSDK;
        this.getRevenue = aFj1lSDK;
        this.component2 = aFg1vSDK;
        this.areAllFieldsValid = aFh1xSDK;
        this.component1 = aFc1qSDK;
        this.component4 = aFc1oSDK;
        this.component3 = aFi1pSDK;
        this.hashCode = aFf1eSDK;
        this.copy = aFc1hSDK;
        this.copydefault = aFg1zSDK;
        this.toString = aFc1eSDK;
        this.equals = kotlin.c.b(new Function0<AppsFlyerProperties>() { // from class: com.appsflyer.internal.AFg1rSDK.5
            @Override // kotlin.jvm.functions.Function0
            /* renamed from: getCurrencyIso4217Code */
            public final AppsFlyerProperties invoke() {
                return AppsFlyerProperties.getInstance();
            }
        });
        this.AFKeystoreWrapper = kotlin.c.b(new Function0<SimpleDateFormat>() { // from class: com.appsflyer.internal.AFg1rSDK.4
            @Override // kotlin.jvm.functions.Function0
            /* renamed from: AFAdRevenueData */
            public final SimpleDateFormat invoke() {
                return new SimpleDateFormat("yyyy-MM-dd_HHmmssZ", Locale.US);
            }
        });
    }

    @Nullable
    private String AFAdRevenueData() throws CertificateException, NoSuchAlgorithmException, PackageManager.NameNotFoundException {
        int i10 = unregisterClient + 69;
        f10934e = i10 % 128;
        if (i10 % 2 == 0) {
            AFj1kSDK.N_(this.getCurrencyIso4217Code.getApplicationContext().getPackageManager(), this.getCurrencyIso4217Code.getApplicationContext().getPackageName());
            throw null;
        }
        String N_ = AFj1kSDK.N_(this.getCurrencyIso4217Code.getApplicationContext().getPackageManager(), this.getCurrencyIso4217Code.getApplicationContext().getPackageName());
        unregisterClient = (f10934e + 55) % 128;
        return N_;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:15:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void AFInAppEventParameterName(@org.jetbrains.annotations.NotNull java.util.Map<java.lang.String, java.lang.Object> r6) {
        /*
            r5 = this;
            int r0 = com.appsflyer.internal.AFg1rSDK.unregisterClient
            int r0 = r0 + 113
            int r0 = r0 % 128
            com.appsflyer.internal.AFg1rSDK.f10934e = r0
            java.lang.String r0 = ""
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            java.lang.Object[] r0 = new java.lang.Object[]{r5}
            int r1 = java.lang.System.identityHashCode(r5)
            r2 = -854454525(0xffffffffcd120f03, float:-1.53153584E8)
            r3 = 854454532(0x32edf104, float:2.7700032E-8)
            java.lang.Object r0 = getRevenue(r0, r2, r3, r1)
            com.appsflyer.AppsFlyerProperties r0 = (com.appsflyer.AppsFlyerProperties) r0
            java.lang.String r1 = "sdkExtension"
            java.lang.String r0 = r0.getString(r1)
            r2 = 1
            r3 = 0
            if (r0 == 0) goto L3c
            int r4 = com.appsflyer.internal.AFg1rSDK.f10934e
            int r4 = r4 + 59
            int r4 = r4 % 128
            com.appsflyer.internal.AFg1rSDK.unregisterClient = r4
            int r4 = r0.length()
            if (r4 != 0) goto L3a
            goto L3c
        L3a:
            r4 = r3
            goto L3d
        L3c:
            r4 = r2
        L3d:
            if (r4 == r2) goto L42
            r6.put(r1, r0)
        L42:
            int r6 = com.appsflyer.internal.AFg1rSDK.f10934e
            int r6 = r6 + 19
            int r0 = r6 % 128
            com.appsflyer.internal.AFg1rSDK.unregisterClient = r0
            int r6 = r6 % 2
            if (r6 == 0) goto L51
            r6 = 35
            int r6 = r6 / r3
        L51:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFg1rSDK.AFInAppEventParameterName(java.util.Map):void");
    }

    private void AFInAppEventType(@NotNull Map<String, Object> map) {
        unregisterClient = (f10934e + 71) % 128;
        Intrinsics.checkNotNullParameter(map, "");
        map.putAll(this.copydefault.AFAdRevenueData());
        f10934e = (unregisterClient + 111) % 128;
    }

    private static void AFKeystoreWrapper(@NotNull Map<String, Object> map) {
        getRevenue(new Object[]{map}, -1950585912, 1950585914, (int) System.currentTimeMillis());
    }

    private static void AFLogger(@NotNull Map<String, Object> map) {
        getRevenue(new Object[]{map}, -1520031212, 1520031215, (int) System.currentTimeMillis());
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
        r12 = r12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void a(java.lang.String r10, int[] r11, java.lang.String r12, int r13, java.lang.Object[] r14) {
        /*
            Method dump skipped, instructions count: 270
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFg1rSDK.a(java.lang.String, int[], java.lang.String, int, java.lang.Object[]):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x002a, code lost:
        if (r0 == null) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x003f, code lost:
        if (r0 == null) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0041, code lost:
        r0 = getMonetizationNetwork("AF_STORE");
        com.appsflyer.internal.AFg1rSDK.f10934e = (com.appsflyer.internal.AFg1rSDK.unregisterClient + 31) % 128;
     */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String areAllFieldsValid() {
        /*
            r5 = this;
            int r0 = com.appsflyer.internal.AFg1rSDK.unregisterClient
            int r0 = r0 + 109
            int r1 = r0 % 128
            com.appsflyer.internal.AFg1rSDK.f10934e = r1
            int r0 = r0 % 2
            java.lang.String r1 = "api_store_value"
            r2 = 854454532(0x32edf104, float:2.7700032E-8)
            r3 = -854454525(0xffffffffcd120f03, float:-1.53153584E8)
            if (r0 != 0) goto L2d
            java.lang.Object[] r0 = new java.lang.Object[]{r5}
            int r4 = java.lang.System.identityHashCode(r5)
            java.lang.Object r0 = getRevenue(r0, r3, r2, r4)
            com.appsflyer.AppsFlyerProperties r0 = (com.appsflyer.AppsFlyerProperties) r0
            java.lang.String r0 = r0.getString(r1)
            r1 = 81
            int r1 = r1 / 0
            if (r0 != 0) goto L4f
            goto L41
        L2d:
            java.lang.Object[] r0 = new java.lang.Object[]{r5}
            int r4 = java.lang.System.identityHashCode(r5)
            java.lang.Object r0 = getRevenue(r0, r3, r2, r4)
            com.appsflyer.AppsFlyerProperties r0 = (com.appsflyer.AppsFlyerProperties) r0
            java.lang.String r0 = r0.getString(r1)
            if (r0 != 0) goto L4f
        L41:
            java.lang.String r0 = "AF_STORE"
            java.lang.String r0 = r5.getMonetizationNetwork(r0)
            int r1 = com.appsflyer.internal.AFg1rSDK.unregisterClient
            int r1 = r1 + 31
            int r1 = r1 % 128
            com.appsflyer.internal.AFg1rSDK.f10934e = r1
        L4f:
            int r1 = com.appsflyer.internal.AFg1rSDK.f10934e
            int r1 = r1 + 111
            int r1 = r1 % 128
            com.appsflyer.internal.AFg1rSDK.unregisterClient = r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFg1rSDK.areAllFieldsValid():java.lang.String");
    }

    private static /* synthetic */ Object component1(Object[] objArr) {
        int i10 = unregisterClient + 83;
        f10934e = i10 % 128;
        int i11 = i10 % 2;
        AppsFlyerProperties appsFlyerProperties = (AppsFlyerProperties) ((AFg1rSDK) objArr[0]).equals.getValue();
        if (i11 != 0) {
            return appsFlyerProperties;
        }
        throw null;
    }

    @NotNull
    private static String component2() {
        StatFs statFs;
        double pow;
        long blockSizeLong = new StatFs(Environment.getDataDirectory().getAbsolutePath()).getBlockSizeLong();
        String str = ((long) ((statFs.getAvailableBlocksLong() * blockSizeLong) / pow)) + DomExceptionUtils.SEPARATOR + ((long) ((statFs.getBlockCountLong() * blockSizeLong) / Math.pow(2.0d, 20.0d)));
        int i10 = f10934e + 113;
        unregisterClient = i10 % 128;
        if (i10 % 2 == 0) {
            return str;
        }
        throw null;
    }

    private void component3(@NotNull Map<String, Object> map) {
        int i10 = f10934e + 99;
        unregisterClient = i10 % 128;
        if (i10 % 2 == 0) {
            Intrinsics.checkNotNullParameter(map, "");
            String string = ((AppsFlyerProperties) getRevenue(new Object[]{this}, -854454525, 854454532, System.identityHashCode(this))).getString(AppsFlyerProperties.ONELINK_ID);
            String string2 = ((AppsFlyerProperties) getRevenue(new Object[]{this}, -854454525, 854454532, System.identityHashCode(this))).getString(AppsFlyerProperties.ONELINK_VERSION);
            if (string != null) {
                map.put("onelink_id", string);
            }
            if (string2 != null) {
                int i11 = f10934e + 75;
                unregisterClient = i11 % 128;
                if (i11 % 2 != 0) {
                    map.put("onelink_ver", string2);
                    int i12 = 0 / 0;
                    return;
                }
                map.put("onelink_ver", string2);
                return;
            }
            return;
        }
        Intrinsics.checkNotNullParameter(map, "");
        ((AppsFlyerProperties) getRevenue(new Object[]{this}, -854454525, 854454532, System.identityHashCode(this))).getString(AppsFlyerProperties.ONELINK_ID);
        ((AppsFlyerProperties) getRevenue(new Object[]{this}, -854454525, 854454532, System.identityHashCode(this))).getString(AppsFlyerProperties.ONELINK_VERSION);
        throw null;
    }

    private static /* synthetic */ Object component4(Object[] objArr) {
        AFg1rSDK aFg1rSDK = (AFg1rSDK) objArr[0];
        Map map = (Map) objArr[1];
        try {
            long longValue = ((Long) getRevenue(new Object[]{aFg1rSDK}, 1297709710, -1297709700, System.identityHashCode(aFg1rSDK))).longValue();
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd_HHmmssZ", Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            map.put("installDate", simpleDateFormat.format(new Date(longValue)));
            int i10 = unregisterClient + 109;
            f10934e = i10 % 128;
            if (i10 % 2 != 0) {
                return null;
            }
            throw null;
        } catch (Exception e10) {
            AFLogger.afErrorLog("Exception while collecting install date. ", e10);
            return null;
        }
    }

    private final void copy(Map<String, Object> map) {
        f10934e = (unregisterClient + 59) % 128;
        UiModeManager uiModeManager = (UiModeManager) this.getCurrencyIso4217Code.getSystemService(UiModeManager.class);
        if (uiModeManager != null) {
            int i10 = unregisterClient + 27;
            f10934e = i10 % 128;
            if (i10 % 2 == 0) {
                if (uiModeManager.getCurrentModeType() != 2) {
                    return;
                }
            } else if (uiModeManager.getCurrentModeType() != 4) {
                return;
            }
            int i11 = unregisterClient + 65;
            f10934e = i11 % 128;
            if (i11 % 2 != 0) {
                map.put("tv", Boolean.TRUE);
            } else {
                map.put("tv", Boolean.TRUE);
                throw null;
            }
        }
    }

    private static List<AFe1pSDK> copydefault() {
        unregisterClient = (f10934e + 47) % 128;
        List<AFe1pSDK> q10 = CollectionsKt.q(AFe1pSDK.CONVERSION, AFe1pSDK.LAUNCH, AFe1pSDK.INAPP, AFe1pSDK.MANUAL_PURCHASE_VALIDATION, AFe1pSDK.ARS_VALIDATE, AFe1pSDK.PURCHASE_VALIDATE, AFe1pSDK.ADREVENUE);
        int i10 = f10934e + 109;
        unregisterClient = i10 % 128;
        if (i10 % 2 != 0) {
            int i11 = 56 / 0;
        }
        return q10;
    }

    private void d(@NotNull Map<String, Object> map) {
        String str;
        int i10 = unregisterClient + 119;
        f10934e = i10 % 128;
        if (i10 % 2 == 0) {
            Intrinsics.checkNotNullParameter(map, "");
            if (!((AppsFlyerProperties) getRevenue(new Object[]{this}, -854454525, 854454532, System.identityHashCode(this))).getBoolean(AppsFlyerProperties.COLLECT_FACEBOOK_ATTR_ID, false)) {
                return;
            }
        } else {
            Intrinsics.checkNotNullParameter(map, "");
            if (!((AppsFlyerProperties) getRevenue(new Object[]{this}, -854454525, 854454532, System.identityHashCode(this))).getBoolean(AppsFlyerProperties.COLLECT_FACEBOOK_ATTR_ID, true)) {
                return;
            }
        }
        try {
            this.getCurrencyIso4217Code.getPackageManager().getApplicationInfo(FbValidationUtils.FB_PACKAGE, 0);
            str = this.component4.AFAdRevenueData(this.getCurrencyIso4217Code);
            unregisterClient = (f10934e + 23) % 128;
        } catch (Throwable unused) {
            str = null;
        }
        if (str != null) {
            unregisterClient = (f10934e + 123) % 128;
            map.put("fb", str);
        }
    }

    private void e(@NotNull Map<String, Object> map) {
        unregisterClient = (f10934e + 5) % 128;
        Intrinsics.checkNotNullParameter(map, "");
        boolean monetizationNetwork = AFg1sSDK.getMonetizationNetwork(this.getCurrencyIso4217Code);
        AFLogger.afDebugLog("didConfigureTokenRefreshService=" + monetizationNetwork);
        if (!monetizationNetwork) {
            map.put("tokenRefreshConfigured", Boolean.FALSE);
        }
        map.put("registeredUninstall", Boolean.valueOf(AFg1sSDK.AFAdRevenueData(this.component1)));
        unregisterClient = (f10934e + 45) % 128;
    }

    private void equals(@NotNull Map<String, Object> map) {
        int i10 = f10934e + 107;
        unregisterClient = i10 % 128;
        if (i10 % 2 != 0) {
            Intrinsics.checkNotNullParameter(map, "");
            map.put("is_pc", Boolean.valueOf(this.getCurrencyIso4217Code.getApplicationContext().getPackageManager().hasSystemFeature("com.google.android.play.feature.HPE_EXPERIENCE")));
            int i11 = 75 / 0;
        } else {
            Intrinsics.checkNotNullParameter(map, "");
            map.put("is_pc", Boolean.valueOf(this.getCurrencyIso4217Code.getApplicationContext().getPackageManager().hasSystemFeature("com.google.android.play.feature.HPE_EXPERIENCE")));
        }
        f10934e = (unregisterClient + 89) % 128;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0032, code lost:
        if (r9.component4.n_().versionCode > r9.component1.getRevenue("versionCode", 0)) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void getMediationNetwork(java.util.Map<java.lang.String, java.lang.Object> r10, int r11) {
        /*
            Method dump skipped, instructions count: 262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFg1rSDK.getMediationNetwork(java.util.Map, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0173  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:55:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ java.lang.Object getRevenue(java.lang.Object[] r6, int r7, int r8, int r9) {
        /*
            Method dump skipped, instructions count: 570
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFg1rSDK.getRevenue(java.lang.Object[], int, int, int):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0019, code lost:
        if (r0 != 1) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0027, code lost:
        if (r0 != 0) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0029, code lost:
        com.appsflyer.internal.AFg1rSDK.f10934e = (com.appsflyer.internal.AFg1rSDK.unregisterClient + 49) % 128;
        r5.put("prev_session_dur", java.lang.Long.valueOf(r0));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void hashCode(@org.jetbrains.annotations.NotNull java.util.Map<java.lang.String, java.lang.Object> r5) {
        /*
            r4 = this;
            int r0 = com.appsflyer.internal.AFg1rSDK.f10934e
            int r0 = r0 + 71
            int r1 = r0 % 128
            com.appsflyer.internal.AFg1rSDK.unregisterClient = r1
            int r0 = r0 % 2
            java.lang.String r1 = ""
            if (r0 == 0) goto L1c
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r1)
            com.appsflyer.internal.AFh1xSDK r0 = r4.areAllFieldsValid
            long r0 = r0.copydefault
            r2 = 1
            int r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r2 == 0) goto L3a
            goto L29
        L1c:
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r1)
            com.appsflyer.internal.AFh1xSDK r0 = r4.areAllFieldsValid
            long r0 = r0.copydefault
            r2 = 0
            int r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r2 == 0) goto L3a
        L29:
            int r2 = com.appsflyer.internal.AFg1rSDK.unregisterClient
            int r2 = r2 + 49
            int r2 = r2 % 128
            com.appsflyer.internal.AFg1rSDK.f10934e = r2
            java.lang.Long r0 = java.lang.Long.valueOf(r0)
            java.lang.String r1 = "prev_session_dur"
            r5.put(r1, r0)
        L3a:
            int r5 = com.appsflyer.internal.AFg1rSDK.unregisterClient
            int r5 = r5 + 101
            int r5 = r5 % 128
            com.appsflyer.internal.AFg1rSDK.f10934e = r5
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFg1rSDK.hashCode(java.util.Map):void");
    }

    private void i(@NotNull Map<String, Object> map) {
        Intrinsics.checkNotNullParameter(map, "");
        if (this.component1.getMonetizationNetwork("is_stop_tracking_used")) {
            map.put("istu", String.valueOf(this.component1.getMediationNetwork("is_stop_tracking_used", false)));
            f10934e = (unregisterClient + 33) % 128;
        }
        unregisterClient = (f10934e + 3) % 128;
    }

    private void registerClient(@NotNull Map<String, Object> map) {
        int i10 = f10934e + 91;
        unregisterClient = i10 % 128;
        if (i10 % 2 == 0) {
            Intrinsics.checkNotNullParameter(map, "");
            map.put("af_preinstalled", String.valueOf(this.component4.getMonetizationNetwork(this.getCurrencyIso4217Code)));
            unregisterClient = (f10934e + 37) % 128;
            return;
        }
        Intrinsics.checkNotNullParameter(map, "");
        map.put("af_preinstalled", String.valueOf(this.component4.getMonetizationNetwork(this.getCurrencyIso4217Code)));
        throw null;
    }

    private final void toString(Map<String, Object> map) {
        int i10 = unregisterClient + 89;
        f10934e = i10 % 128;
        if (i10 % 2 == 0) {
            int i11 = 38 / 0;
            if (!AFg1iSDK.getMonetizationNetwork(this.getCurrencyIso4217Code)) {
                return;
            }
        } else if (!AFg1iSDK.getMonetizationNetwork(this.getCurrencyIso4217Code)) {
            return;
        }
        int i12 = unregisterClient + 25;
        f10934e = i12 % 128;
        if (i12 % 2 != 0) {
            map.put("inst_app", Boolean.TRUE);
            f10934e = (unregisterClient + 91) % 128;
            return;
        }
        map.put("inst_app", Boolean.TRUE);
        throw null;
    }

    private void unregisterClient(@NotNull Map<String, Object> map) {
        int i10 = unregisterClient + 105;
        f10934e = i10 % 128;
        if (i10 % 2 != 0) {
            Intrinsics.checkNotNullParameter(map, "");
            AFb1jSDK l_ = AFb1lSDK.l_(this.getCurrencyIso4217Code.getContentResolver());
            if (l_ != null) {
                int i11 = unregisterClient + 49;
                f10934e = i11 % 128;
                if (i11 % 2 == 0) {
                    map.put("amazon_aid", l_.getRevenue);
                    map.put("amazon_aid_limit", String.valueOf(l_.getCurrencyIso4217Code));
                    int i12 = 37 / 0;
                    return;
                }
                map.put("amazon_aid", l_.getRevenue);
                map.put("amazon_aid_limit", String.valueOf(l_.getCurrencyIso4217Code));
                return;
            }
            unregisterClient = (f10934e + 121) % 128;
            return;
        }
        Intrinsics.checkNotNullParameter(map, "");
        AFb1lSDK.l_(this.getCurrencyIso4217Code.getContentResolver());
        throw null;
    }

    private void w(@NotNull Map<String, Object> map) {
        int i10 = unregisterClient + 113;
        f10934e = i10 % 128;
        if (i10 % 2 != 0) {
            Intrinsics.checkNotNullParameter(map, "");
            String mediationNetwork = this.hashCode.getMediationNetwork();
            if (mediationNetwork != null && mediationNetwork.length() != 0) {
                f10934e = (unregisterClient + 109) % 128;
                map.put("appsflyerKey", mediationNetwork);
                return;
            }
            return;
        }
        Intrinsics.checkNotNullParameter(map, "");
        this.hashCode.getMediationNetwork();
        throw null;
    }

    @Override // com.appsflyer.internal.AFg1nSDK
    public final void getCurrencyIso4217Code(@NotNull AFh1mSDK aFh1mSDK) {
        f10934e = (unregisterClient + 103) % 128;
        Intrinsics.checkNotNullParameter(aFh1mSDK, "");
        Map<String, Object> map = aFh1mSDK.AFAdRevenueData;
        Intrinsics.checkNotNullExpressionValue(map, "");
        AFAdRevenueData(map, aFh1mSDK.getRevenue());
        areAllFieldsValid(map);
        getRevenue(new Object[]{map}, -1950585912, 1950585914, (int) System.currentTimeMillis());
        getRevenue(map);
        getRevenue(new Object[]{this, map, this.toString.getCurrencyIso4217Code}, 274047423, -274047418, System.identityHashCode(this));
        unregisterClient(map);
        map.put("cell", p0.m(ms.k.a("mcc", Integer.valueOf(this.getCurrencyIso4217Code.getResources().getConfiguration().mcc)), ms.k.a("mnc", Integer.valueOf(this.getCurrencyIso4217Code.getResources().getConfiguration().mnc))));
        map.put("sig", AFAdRevenueData());
        map.put("last_boot_time", Long.valueOf(component1()));
        map.put("disk", component2());
        unregisterClient = (f10934e + 73) % 128;
    }

    @Override // com.appsflyer.internal.AFg1nSDK
    public final void getMonetizationNetwork(@NotNull Map<String, Object> map) {
        Object obj;
        unregisterClient = (f10934e + 13) % 128;
        Intrinsics.checkNotNullParameter(map, "");
        Object string = ((AppsFlyerProperties) getRevenue(new Object[]{this}, -854454525, 854454532, System.identityHashCode(this))).getString("appid");
        if (string != null) {
            int i10 = unregisterClient + 109;
            f10934e = i10 % 128;
            if (i10 % 2 == 0) {
                map.put("appid", string);
                int i11 = 21 / 0;
            } else {
                map.put("appid", string);
            }
        }
        String string2 = ((AppsFlyerProperties) getRevenue(new Object[]{this}, -854454525, 854454532, System.identityHashCode(this))).getString(AppsFlyerProperties.CURRENCY_CODE);
        if (string2 != null) {
            int i12 = f10934e + 93;
            unregisterClient = i12 % 128;
            if (i12 % 2 == 0 ? string2.length() != 3 : string2.length() != 2) {
                StringBuilder sb2 = new StringBuilder("WARNING: currency code should be 3 characters!!! '");
                sb2.append(string2);
                sb2.append("' is not a legal value.");
                String obj2 = sb2.toString();
                Intrinsics.checkNotNullExpressionValue(obj2, "");
                AFLogger.afWarnLog(obj2);
            }
            map.put("currency", string2);
        }
        Object string3 = ((AppsFlyerProperties) getRevenue(new Object[]{this}, -854454525, 854454532, System.identityHashCode(this))).getString(AppsFlyerProperties.IS_UPDATE);
        if (string3 != null) {
            f10934e = (unregisterClient + 113) % 128;
            map.put("isUpdate", string3);
            f10934e = (unregisterClient + 27) % 128;
        }
        Object string4 = ((AppsFlyerProperties) getRevenue(new Object[]{this}, -854454525, 854454532, System.identityHashCode(this))).getString(AppsFlyerProperties.ADDITIONAL_CUSTOM_DATA);
        if (string4 != null) {
            map.put("customData", string4);
        }
        Object string5 = ((AppsFlyerProperties) getRevenue(new Object[]{this}, -854454525, 854454532, System.identityHashCode(this))).getString(AppsFlyerProperties.APP_USER_ID);
        if (string5 != null) {
            int i13 = unregisterClient + 85;
            f10934e = i13 % 128;
            if (i13 % 2 == 0) {
                map.put("appUserId", string5);
                int i14 = 2 / 0;
            } else {
                map.put("appUserId", string5);
            }
        }
        Object string6 = ((AppsFlyerProperties) getRevenue(new Object[]{this}, -854454525, 854454532, System.identityHashCode(this))).getString(AppsFlyerProperties.USER_EMAILS);
        if (string6 != null) {
            int i15 = unregisterClient + 31;
            f10934e = i15 % 128;
            if (i15 % 2 != 0) {
                map.put("user_emails", string6);
            } else {
                map.put("user_emails", string6);
                throw null;
            }
        }
        AFb1tSDK aFb1tSDK = this.toString.getRevenue;
        if (aFb1tSDK == null || (obj = aFb1tSDK.AFAdRevenueData) == null) {
            return;
        }
        map.put("sharing_filter", obj);
    }

    private void AFAdRevenueData(@NotNull Map<String, Object> map, boolean z10) {
        Intrinsics.checkNotNullParameter(map, "");
        HashMap hashMap = new HashMap();
        hashMap.put("cpu_abi", getCurrencyIso4217Code("ro.product.cpu.abi"));
        hashMap.put("cpu_abi2", getCurrencyIso4217Code("ro.product.cpu.abi2"));
        hashMap.put("arch", getCurrencyIso4217Code("os.arch"));
        hashMap.put("build_display_id", getCurrencyIso4217Code("ro.build.display.id"));
        if (!(!z10)) {
            getRevenue(new Object[]{this, hashMap}, -753773633, 753773645, System.identityHashCode(this));
            if (this.component4.getMediationNetwork.getRevenue("appsFlyerCount", 0) <= 2) {
                int i10 = unregisterClient + 43;
                f10934e = i10 % 128;
                if (i10 % 2 != 0) {
                    hashMap.putAll(this.getRevenue.getMediationNetwork());
                } else {
                    hashMap.putAll(this.getRevenue.getMediationNetwork());
                    throw null;
                }
            }
        }
        hashMap.put("dim", this.component2.getMediationNetwork(this.getCurrencyIso4217Code));
        map.put("deviceData", hashMap);
        unregisterClient = (f10934e + 119) % 128;
    }

    private static long component1() {
        int i10 = f10934e + 101;
        unregisterClient = i10 % 128;
        long currentTimeMillis = i10 % 2 != 0 ? System.currentTimeMillis() & SystemClock.elapsedRealtime() : System.currentTimeMillis() - SystemClock.elapsedRealtime();
        int i11 = f10934e + 31;
        unregisterClient = i11 % 128;
        if (i11 % 2 == 0) {
            return currentTimeMillis;
        }
        throw null;
    }

    private void component1(@NotNull Map<String, ? extends Object> map) {
        getRevenue(new Object[]{this, map}, -841219204, 841219208, System.identityHashCode(this));
    }

    private static /* synthetic */ Object areAllFieldsValid(Object[] objArr) {
        String str;
        AFg1rSDK aFg1rSDK = (AFg1rSDK) objArr[0];
        int intValue = ((Number) objArr[1]).intValue();
        int i10 = unregisterClient + 123;
        f10934e = i10 % 128;
        if (i10 % 2 != 0) {
            String string = ((AppsFlyerProperties) getRevenue(new Object[]{aFg1rSDK}, -854454525, 854454532, System.identityHashCode(aFg1rSDK))).getString("preInstallName");
            if (string != null) {
                return string;
            }
            if (aFg1rSDK.component1.getMonetizationNetwork("preInstallName")) {
                int i11 = f10934e + 71;
                unregisterClient = i11 % 128;
                if (i11 % 2 != 0) {
                    str = aFg1rSDK.component1.getMonetizationNetwork("preInstallName", (String) null);
                    int i12 = 30 / 0;
                } else {
                    str = aFg1rSDK.component1.getMonetizationNetwork("preInstallName", (String) null);
                }
            } else {
                if (intValue <= 1) {
                    unregisterClient = (f10934e + 99) % 128;
                    String equals = aFg1rSDK.equals();
                    if (equals == null) {
                        int i13 = f10934e + 79;
                        unregisterClient = i13 % 128;
                        if (i13 % 2 == 0) {
                            equals = aFg1rSDK.getMonetizationNetwork("AF_PRE_INSTALL_NAME");
                        } else {
                            aFg1rSDK.getMonetizationNetwork("AF_PRE_INSTALL_NAME");
                            throw null;
                        }
                    }
                    string = equals;
                }
                if (string != null) {
                    aFg1rSDK.component1.getRevenue("preInstallName", string);
                }
                str = string;
            }
            if (str != null) {
                unregisterClient = (f10934e + 89) % 128;
                ((AppsFlyerProperties) getRevenue(new Object[]{aFg1rSDK}, -854454525, 854454532, System.identityHashCode(aFg1rSDK))).set("preInstallName", str);
            }
            return str;
        }
        ((AppsFlyerProperties) getRevenue(new Object[]{aFg1rSDK}, -854454525, 854454532, System.identityHashCode(aFg1rSDK))).getString("preInstallName");
        throw null;
    }

    private final void component2(Map<String, Object> map) {
        int i10 = f10934e + 107;
        unregisterClient = i10 % 128;
        if (i10 % 2 != 0) {
            ((AppsFlyerProperties) getRevenue(new Object[]{this}, -854454525, 854454532, System.identityHashCode(this))).isOtherSdkStringDisabled();
            throw null;
        } else if (((AppsFlyerProperties) getRevenue(new Object[]{this}, -854454525, 854454532, System.identityHashCode(this))).isOtherSdkStringDisabled()) {
        } else {
            map.put("batteryLevel", String.valueOf(this.getMonetizationNetwork.getCurrencyIso4217Code(this.getCurrencyIso4217Code).getMonetizationNetwork));
            f10934e = (unregisterClient + 95) % 128;
        }
    }

    private final boolean copy() {
        int i10 = unregisterClient + 15;
        f10934e = i10 % 128;
        if (i10 % 2 != 0 ? !((AppsFlyerProperties) getRevenue(new Object[]{this}, -854454525, 854454532, System.identityHashCode(this))).getBoolean(AppsFlyerProperties.COLLECT_ANDROID_ID_FORCE_BY_USER, false) : !((AppsFlyerProperties) getRevenue(new Object[]{this}, -854454525, 854454532, System.identityHashCode(this))).getBoolean(AppsFlyerProperties.COLLECT_ANDROID_ID_FORCE_BY_USER, true)) {
            if (!((AppsFlyerProperties) getRevenue(new Object[]{this}, -854454525, 854454532, System.identityHashCode(this))).getBoolean(AppsFlyerProperties.COLLECT_IMEI_FORCE_BY_USER, false)) {
                int i11 = (unregisterClient + 33) % 128;
                f10934e = i11;
                int i12 = i11 + 81;
                unregisterClient = i12 % 128;
                if (i12 % 2 == 0) {
                    AFa1ySDK.getRevenue();
                    if (AFa1ySDK.getRevenue(this.getCurrencyIso4217Code)) {
                        return false;
                    }
                } else {
                    AFa1ySDK.getRevenue();
                    AFa1ySDK.getRevenue(this.getCurrencyIso4217Code);
                    throw null;
                }
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SuppressLint({"HardwareIds"})
    private final String component4() {
        String str;
        int i10 = f10934e + 119;
        unregisterClient = i10 % 128;
        int i11 = i10 % 2;
        try {
        } catch (Exception e10) {
            AFLogger.afErrorLog(e10.getMessage(), e10);
            str = i11;
        }
        if (i11 == 0) {
            String monetizationNetwork = this.component1.getMonetizationNetwork("androidIdCached", (String) null);
            String string = Settings.Secure.getString(this.getCurrencyIso4217Code.getContentResolver(), "android_id");
            str = monetizationNetwork;
            if (string != null) {
                unregisterClient = (f10934e + 29) % 128;
                return string;
            }
            if (str != 0) {
                AFLogger.afDebugLog("use cached AndroidId: " + str);
                return str;
            }
            return null;
        }
        this.component1.getMonetizationNetwork("androidIdCached", (String) null);
        Settings.Secure.getString(this.getCurrencyIso4217Code.getContentResolver(), "android_id");
        throw null;
    }

    private void copydefault(@NotNull Map<String, Object> map) {
        getRevenue(new Object[]{this, map}, -1147564241, 1147564241, System.identityHashCode(this));
    }

    private final String equals() {
        int i10 = unregisterClient + 111;
        f10934e = i10 % 128;
        if (i10 % 2 != 0) {
            File mediationNetwork = getMediationNetwork(getCurrencyIso4217Code("ro.appsflyer.preinstall.path"));
            if (getCurrencyIso4217Code(mediationNetwork)) {
                mediationNetwork = getMediationNetwork(getMonetizationNetwork("AF_PRE_INSTALL_PATH"));
                unregisterClient = (f10934e + 125) % 128;
            }
            if (getCurrencyIso4217Code(mediationNetwork)) {
                mediationNetwork = getMediationNetwork("/data/local/tmp/pre_install.appsflyer");
            }
            if (getCurrencyIso4217Code(mediationNetwork)) {
                mediationNetwork = getMediationNetwork("/etc/pre_install.appsflyer");
            }
            if (getCurrencyIso4217Code(mediationNetwork)) {
                return null;
            }
            String packageName = this.getCurrencyIso4217Code.getPackageName();
            Intrinsics.checkNotNullExpressionValue(packageName, "");
            return getMediationNetwork(mediationNetwork, packageName);
        }
        getCurrencyIso4217Code(getMediationNetwork(getCurrencyIso4217Code("ro.appsflyer.preinstall.path")));
        throw null;
    }

    private boolean component3() {
        unregisterClient = (f10934e + 73) % 128;
        boolean parseBoolean = Boolean.parseBoolean(this.component1.getMonetizationNetwork("sentSuccessfully", (String) null));
        int i10 = f10934e + 13;
        unregisterClient = i10 % 128;
        if (i10 % 2 == 0) {
            return parseBoolean;
        }
        throw null;
    }

    private final String AFAdRevenueData(String str) {
        int i10 = f10934e + 43;
        unregisterClient = i10 % 128;
        boolean z10 = false;
        if (i10 % 2 == 0 ? ((AppsFlyerProperties) getRevenue(new Object[]{this}, -854454525, 854454532, System.identityHashCode(this))).getBoolean(AppsFlyerProperties.COLLECT_ANDROID_ID, false) : ((AppsFlyerProperties) getRevenue(new Object[]{this}, -854454525, 854454532, System.identityHashCode(this))).getBoolean(AppsFlyerProperties.COLLECT_ANDROID_ID, true)) {
            if (str == null || str.length() == 0) {
                f10934e = (unregisterClient + 13) % 128;
                z10 = true;
            }
            if (z10) {
                if (copy()) {
                    int i11 = f10934e + 105;
                    unregisterClient = i11 % 128;
                    if (i11 % 2 == 0) {
                        return component4();
                    }
                    component4();
                    throw null;
                }
                return null;
            }
        }
        if (str != null) {
            return str;
        }
        return null;
    }

    private static void areAllFieldsValid(@NotNull Map<String, Object> map) {
        f10934e = (unregisterClient + 91) % 128;
        Intrinsics.checkNotNullParameter(map, "");
        Object[] objArr = new Object[1];
        a("\u008f\u0089\u0087\u0083\u008e", null, null, (AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)) + 127, objArr);
        map.put(((String) objArr[0]).intern(), Build.BRAND);
        map.put("device", Build.DEVICE);
        map.put(AppLovinEventTypes.USER_VIEWED_PRODUCT, Build.PRODUCT);
        map.put(ServiceProvider.NAMED_SDK, String.valueOf(Build.VERSION.SDK_INT));
        map.put("model", Build.MODEL);
        map.put("deviceType", Build.TYPE);
        f10934e = (unregisterClient + 19) % 128;
    }

    private final void component4(Map<String, Object> map) {
        getRevenue(new Object[]{this, map}, -753773633, 753773645, System.identityHashCode(this));
    }

    @Override // com.appsflyer.internal.AFg1nSDK
    public final long getCurrencyIso4217Code() {
        f10934e = (unregisterClient + 57) % 128;
        long currentTimeMillis = System.currentTimeMillis();
        int i10 = f10934e + 121;
        unregisterClient = i10 % 128;
        if (i10 % 2 == 0) {
            return currentTimeMillis;
        }
        throw null;
    }

    @Override // com.appsflyer.internal.AFg1nSDK
    public final void getCurrencyIso4217Code(@NotNull Map<String, Object> map, int i10, int i11) {
        boolean z10;
        Intrinsics.checkNotNullParameter(map, "");
        map.put("counter", String.valueOf(i10));
        map.put("iaecounter", String.valueOf(i11));
        if (component3()) {
            unregisterClient = (f10934e + 67) % 128;
            z10 = false;
        } else {
            unregisterClient = (f10934e + 109) % 128;
            z10 = true;
        }
        map.put("isFirstCall", String.valueOf(z10));
    }

    private void AFAdRevenueData(@NotNull AFh1mSDK aFh1mSDK, @Nullable String str, @Nullable String str2, @Nullable AFb1rSDK aFb1rSDK) {
        f10934e = (unregisterClient + 61) % 128;
        Intrinsics.checkNotNullParameter(aFh1mSDK, "");
        Map<String, Object> map = aFh1mSDK.AFAdRevenueData;
        if (aFh1mSDK.AFAdRevenueData() == AFe1pSDK.CONVERSION) {
            Intrinsics.checkNotNullExpressionValue(map, "");
            component2(map);
            copy(map);
            toString(map);
            AFa1vSDK.getMonetizationNetwork(this.copy, this.component4);
        }
        Intrinsics.checkNotNullExpressionValue(map, "");
        getRevenue(new Object[]{this, map}, -1147564241, 1147564241, System.identityHashCode(this));
        component3(map);
        getRevenue(new Object[]{this, map}, -841219204, 841219208, System.identityHashCode(this));
        getMonetizationNetwork(map, str2);
        AFAdRevenueData(map, str);
        hashCode(map);
        if (aFb1rSDK != null) {
            f10934e = (unregisterClient + 31) % 128;
            aFb1rSDK.getCurrencyIso4217Code(map);
            return;
        }
        int i10 = f10934e + 35;
        unregisterClient = i10 % 128;
        if (i10 % 2 != 0) {
            int i11 = 41 / 0;
        }
    }

    private static /* synthetic */ Object getCurrencyIso4217Code(Object[] objArr) {
        AFg1rSDK aFg1rSDK = (AFg1rSDK) objArr[0];
        Map map = (Map) objArr[1];
        f10934e = (unregisterClient + 69) % 128;
        Intrinsics.checkNotNullParameter(map, "");
        long monetizationNetwork = aFg1rSDK.component1.getMonetizationNetwork("AppsFlyerTimePassedSincePrevLaunch", 0L);
        long currentTimeMillis = System.currentTimeMillis();
        aFg1rSDK.component1.AFAdRevenueData("AppsFlyerTimePassedSincePrevLaunch", currentTimeMillis);
        map.put("timepassedsincelastlaunch", String.valueOf(monetizationNetwork > 0 ? TimeUnit.MILLISECONDS.toSeconds(currentTimeMillis - monetizationNetwork) : -1L));
        int i10 = f10934e + 107;
        unregisterClient = i10 % 128;
        if (i10 % 2 != 0) {
            int i11 = 45 / 0;
        }
        return null;
    }

    @Override // com.appsflyer.internal.AFg1nSDK
    public final void getMediationNetwork(@NotNull AFh1mSDK aFh1mSDK) {
        AFd1aSDK aFd1aSDK;
        Intrinsics.checkNotNullParameter(aFh1mSDK, "");
        if (!this.component4.component2()) {
            Map<String, Object> mediationNetwork = AFa1ySDK.getMediationNetwork(aFh1mSDK.AFAdRevenueData);
            Intrinsics.checkNotNullExpressionValue(mediationNetwork, "");
            mediationNetwork.put("ad_ids_disabled", Boolean.TRUE);
        } else {
            AFh1rSDK aFh1rSDK = this.component4.getMonetizationNetwork.component3;
            if (aFh1rSDK == null) {
                return;
            }
            String str = aFh1rSDK.component3;
            if (str != null && str.length() != 0) {
                unregisterClient = (f10934e + 121) % 128;
                aFh1mSDK.getMonetizationNetwork("gaidError", aFh1rSDK.component3);
            }
            String str2 = aFh1rSDK.getCurrencyIso4217Code;
            if (str2 != null && aFh1rSDK.AFAdRevenueData != null) {
                aFh1mSDK.getMonetizationNetwork("advertiserId", str2);
                aFh1mSDK.getMonetizationNetwork("advertiserIdEnabled", String.valueOf(aFh1rSDK.AFAdRevenueData));
                aFh1mSDK.getMonetizationNetwork("isGaidWithGps", String.valueOf(aFh1rSDK.getMediationNetwork));
            }
        }
        AFh1rSDK aFh1rSDK2 = this.component4.getMonetizationNetwork.component3;
        aFh1mSDK.getMonetizationNetwork("GAID_retry", String.valueOf(aFh1rSDK2 != null ? Intrinsics.areEqual(aFh1rSDK2.component2, Boolean.TRUE) : false));
        if (!CollectionsKt.q(AFe1pSDK.CONVERSION, AFe1pSDK.LAUNCH).contains(aFh1mSDK.AFAdRevenueData()) || (aFd1aSDK = this.toString.component4) == null) {
            return;
        }
        int i10 = unregisterClient + 57;
        f10934e = i10 % 128;
        if (i10 % 2 != 0) {
            Map<String, Object> mediationNetwork2 = AFa1ySDK.getMediationNetwork(aFh1mSDK.AFAdRevenueData);
            Intrinsics.checkNotNullExpressionValue(mediationNetwork2, "");
            mediationNetwork2.put("fetchAdIdLatency", Long.valueOf(aFd1aSDK.getMediationNetwork));
            return;
        }
        Map<String, Object> mediationNetwork3 = AFa1ySDK.getMediationNetwork(aFh1mSDK.AFAdRevenueData);
        Intrinsics.checkNotNullExpressionValue(mediationNetwork3, "");
        mediationNetwork3.put("fetchAdIdLatency", Long.valueOf(aFd1aSDK.getMediationNetwork));
        throw null;
    }

    @SuppressLint({"PrivateApi"})
    @VisibleForTesting
    @Nullable
    private static String getCurrencyIso4217Code(@Nullable String str) {
        unregisterClient = (f10934e + 75) % 128;
        try {
            Object invoke = Class.forName("android.os.SystemProperties").getMethod("get", String.class).invoke(null, str);
            Intrinsics.checkNotNull(invoke, "");
            String str2 = (String) invoke;
            f10934e = (unregisterClient + 123) % 128;
            return str2;
        } catch (Throwable th2) {
            AFLogger.afErrorLog(th2.getMessage(), th2);
            return null;
        }
    }

    private void getMonetizationNetwork(@NotNull Map<String, Object> map, boolean z10) {
        f10934e = (unregisterClient + 19) % 128;
        Intrinsics.checkNotNullParameter(map, "");
        map.put("platformextension", this.AFAdRevenueData);
        if (z10) {
            map.put("platform_extension_v2", this.getMediationNetwork.getCurrencyIso4217Code());
        }
        unregisterClient = (f10934e + 3) % 128;
    }

    private void AFAdRevenueData(@NotNull Map<String, Object> map, @Nullable String str) {
        f10934e = (unregisterClient + 7) % 128;
        Intrinsics.checkNotNullParameter(map, "");
        if (str != null) {
            f10934e = (unregisterClient + 89) % 128;
            if (str.length() != 0) {
                map.put(Constants.REFERRER, str);
            }
        }
        Object monetizationNetwork = this.component1.getMonetizationNetwork("extraReferrers", (String) null);
        if (monetizationNetwork != null) {
            map.put("extraReferrers", monetizationNetwork);
        }
        String referrer = ((AppsFlyerProperties) getRevenue(new Object[]{this}, -854454525, 854454532, System.identityHashCode(this))).getReferrer(this.component1);
        if (referrer != null && referrer.length() != 0) {
            unregisterClient = (f10934e + 27) % 128;
            if (map.get(Constants.REFERRER) == null) {
                map.put(Constants.REFERRER, referrer);
                return;
            }
            return;
        }
        f10934e = (unregisterClient + 111) % 128;
    }

    private static boolean getCurrencyIso4217Code(File file) {
        int i10 = f10934e;
        unregisterClient = (i10 + 33) % 128;
        if (file != null) {
            unregisterClient = (i10 + 79) % 128;
            if (file.exists()) {
                int i11 = unregisterClient + 59;
                f10934e = i11 % 128;
                if (i11 % 2 != 0) {
                    return false;
                }
                throw null;
            }
            return true;
        }
        return true;
    }

    @Nullable
    private String getMonetizationNetwork(int i10) {
        String str = null;
        if (this.component1.getMonetizationNetwork("INSTALL_STORE")) {
            unregisterClient = (f10934e + 83) % 128;
            String monetizationNetwork = this.component1.getMonetizationNetwork("INSTALL_STORE", (String) null);
            int i11 = f10934e + 21;
            unregisterClient = i11 % 128;
            if (i11 % 2 == 0) {
                return monetizationNetwork;
            }
            throw null;
        }
        if (i10 <= 1) {
            int i12 = unregisterClient + 103;
            f10934e = i12 % 128;
            if (i12 % 2 != 0) {
                str = areAllFieldsValid();
                this.component1.getRevenue("INSTALL_STORE", str);
                return str;
            }
        }
        unregisterClient = (f10934e + 77) % 128;
        this.component1.getRevenue("INSTALL_STORE", str);
        return str;
    }

    @Override // com.appsflyer.internal.AFg1nSDK
    public final void getCurrencyIso4217Code(@NotNull Map<String, Object> map) {
        getRevenue(new Object[]{this, map}, 528204691, -528204690, System.identityHashCode(this));
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0015, code lost:
        if (r3 != null) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x001b, code lost:
        if (r3 != null) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001d, code lost:
        r2.put(androidx.autofill.HintConstants.AUTOFILL_HINT_PHONE, r3);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void getMonetizationNetwork(@org.jetbrains.annotations.NotNull java.util.Map<java.lang.String, java.lang.Object> r2, @org.jetbrains.annotations.Nullable java.lang.String r3) {
        /*
            int r0 = com.appsflyer.internal.AFg1rSDK.f10934e
            int r0 = r0 + 87
            int r1 = r0 % 128
            com.appsflyer.internal.AFg1rSDK.unregisterClient = r1
            int r0 = r0 % 2
            java.lang.String r1 = ""
            if (r0 == 0) goto L18
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r1)
            r0 = 86
            int r0 = r0 / 0
            if (r3 == 0) goto L22
            goto L1d
        L18:
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r1)
            if (r3 == 0) goto L22
        L1d:
            java.lang.String r0 = "phone"
            r2.put(r0, r3)
        L22:
            int r2 = com.appsflyer.internal.AFg1rSDK.f10934e
            int r2 = r2 + 61
            int r3 = r2 % 128
            com.appsflyer.internal.AFg1rSDK.unregisterClient = r3
            int r2 = r2 % 2
            if (r2 == 0) goto L32
            r2 = 36
            int r2 = r2 / 0
        L32:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFg1rSDK.getMonetizationNetwork(java.util.Map, java.lang.String):void");
    }

    private static /* synthetic */ Object getMonetizationNetwork(Object[] objArr) {
        Map map = (Map) objArr[0];
        f10934e = (unregisterClient + 11) % 128;
        Intrinsics.checkNotNullParameter(map, "");
        try {
            map.put(CommonConstant.ReqAccessTokenParam.LANGUAGE_LABEL, Locale.getDefault().getDisplayLanguage());
        } catch (Exception e10) {
            AFLogger.afErrorLog("Exception while collecting display language name. ", e10);
        }
        try {
            map.put("lang_code", Locale.getDefault().getLanguage());
        } catch (Exception e11) {
            AFLogger.afErrorLog("Exception while collecting display language code. ", e11);
        }
        try {
            map.put(AdRevenueScheme.COUNTRY, Locale.getDefault().getCountry());
            unregisterClient = (f10934e + 85) % 128;
            return null;
        } catch (Exception e12) {
            AFLogger.afErrorLog("Exception while collecting country name. ", e12);
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x004a, code lost:
        if (r0 != true) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static /* synthetic */ java.lang.Object AFAdRevenueData(java.lang.Object[] r10) {
        /*
            r0 = 0
            r1 = r10[r0]
            com.appsflyer.internal.AFg1rSDK r1 = (com.appsflyer.internal.AFg1rSDK) r1
            r2 = 1
            r3 = r10[r2]
            java.util.Map r3 = (java.util.Map) r3
            r4 = 2
            r10 = r10[r4]
            java.lang.Number r10 = (java.lang.Number) r10
            int r10 = r10.intValue()
            java.lang.String r5 = ""
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r5)
            com.appsflyer.internal.AFc1oSDK r6 = r1.component4
            java.lang.String r6 = r6.component3()
            com.appsflyer.internal.AFc1qSDK r7 = r1.component1
            java.lang.String r7 = AFAdRevenueData(r7, r6)
            if (r7 == 0) goto L36
            boolean r8 = kotlin.jvm.internal.Intrinsics.areEqual(r7, r6)
            if (r8 != 0) goto L36
            int r8 = com.appsflyer.internal.AFg1rSDK.f10934e
            int r8 = r8 + 125
            int r8 = r8 % 128
            com.appsflyer.internal.AFg1rSDK.unregisterClient = r8
            r8 = r2
            goto L37
        L36:
            r8 = r0
        L37:
            if (r7 != 0) goto L3c
            if (r6 == 0) goto L3c
            r0 = r2
        L3c:
            r7 = 0
            if (r8 != 0) goto L4e
            int r8 = com.appsflyer.internal.AFg1rSDK.unregisterClient
            int r8 = r8 + 83
            int r9 = r8 % 128
            com.appsflyer.internal.AFg1rSDK.f10934e = r9
            int r8 = r8 % r4
            if (r8 == 0) goto L4d
            if (r0 == r2) goto L4e
            goto L53
        L4d:
            throw r7
        L4e:
            java.lang.String r0 = "af_latestchannel"
            r3.put(r0, r6)
        L53:
            java.lang.String r0 = r1.getMonetizationNetwork(r10)
            if (r0 == 0) goto L6c
            java.util.Locale r2 = java.util.Locale.getDefault()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r5)
            java.lang.String r0 = r0.toLowerCase(r2)
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r5)
            java.lang.String r2 = "af_installstore"
            r3.put(r2, r0)
        L6c:
            java.lang.Integer r0 = java.lang.Integer.valueOf(r10)
            java.lang.Object[] r0 = new java.lang.Object[]{r1, r0}
            r2 = -994471321(0xffffffffc4b99267, float:-1484.5751)
            r4 = 994471330(0x3b466da2, float:0.0030277749)
            java.lang.Object r10 = getRevenue(r0, r2, r4, r10)
            java.lang.String r10 = (java.lang.String) r10
            if (r10 == 0) goto L9d
            java.util.Locale r0 = java.util.Locale.getDefault()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r5)
            java.lang.String r10 = r10.toLowerCase(r0)
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r10, r5)
            java.lang.String r0 = "af_preinstall_name"
            r3.put(r0, r10)
            int r10 = com.appsflyer.internal.AFg1rSDK.unregisterClient
            int r10 = r10 + 19
            int r10 = r10 % 128
            com.appsflyer.internal.AFg1rSDK.f10934e = r10
        L9d:
            java.lang.String r10 = r1.areAllFieldsValid()
            if (r10 == 0) goto Lb6
            java.util.Locale r0 = java.util.Locale.getDefault()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r5)
            java.lang.String r10 = r10.toLowerCase(r0)
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r10, r5)
            java.lang.String r0 = "af_currentstore"
            r3.put(r0, r10)
        Lb6:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFg1rSDK.AFAdRevenueData(java.lang.Object[]):java.lang.Object");
    }

    private final String getMonetizationNetwork(String str) {
        f10934e = (unregisterClient + 119) % 128;
        String currencyIso4217Code = this.component4.getCurrencyIso4217Code(str);
        f10934e = (unregisterClient + 69) % 128;
        return currencyIso4217Code;
    }

    private final SimpleDateFormat getRevenue() {
        int i10 = unregisterClient + 71;
        f10934e = i10 % 128;
        if (i10 % 2 != 0) {
            return (SimpleDateFormat) this.AFKeystoreWrapper.getValue();
        }
        SimpleDateFormat simpleDateFormat = (SimpleDateFormat) this.AFKeystoreWrapper.getValue();
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
    @Override // com.appsflyer.internal.AFg1nSDK
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void getMonetizationNetwork(@org.jetbrains.annotations.NotNull com.appsflyer.internal.AFh1mSDK r5) {
        /*
            r4 = this;
            java.lang.String r0 = ""
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.util.Map<java.lang.String, java.lang.Object> r1 = r5.AFAdRevenueData
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r0)
            java.lang.String r0 = "open_referrer"
            java.lang.String r2 = r5.getMonetizationNetwork
            r1.put(r0, r2)
            java.lang.String r0 = r5.copydefault
            if (r0 == 0) goto L4b
            int r2 = com.appsflyer.internal.AFg1rSDK.unregisterClient
            int r2 = r2 + 37
            int r3 = r2 % 128
            com.appsflyer.internal.AFg1rSDK.f10934e = r3
            int r2 = r2 % 2
            if (r2 == 0) goto L46
            boolean r0 = kotlin.text.StringsKt.t0(r0)
            if (r0 == 0) goto L28
            goto L4b
        L28:
            int r0 = com.appsflyer.internal.AFg1rSDK.unregisterClient
            int r0 = r0 + 111
            int r2 = r0 % 128
            com.appsflyer.internal.AFg1rSDK.f10934e = r2
            int r0 = r0 % 2
            java.lang.String r2 = "af_web_referrer"
            if (r0 != 0) goto L40
            java.lang.String r5 = r5.copydefault
            r1.put(r2, r5)
            r5 = 19
            int r5 = r5 / 0
            goto L53
        L40:
            java.lang.String r5 = r5.copydefault
            r1.put(r2, r5)
            goto L53
        L46:
            kotlin.text.StringsKt.t0(r0)
            r5 = 0
            throw r5
        L4b:
            int r5 = com.appsflyer.internal.AFg1rSDK.f10934e
            int r5 = r5 + 23
            int r5 = r5 % 128
            com.appsflyer.internal.AFg1rSDK.unregisterClient = r5
        L53:
            int r5 = com.appsflyer.internal.AFg1rSDK.unregisterClient
            int r5 = r5 + 61
            int r0 = r5 % 128
            com.appsflyer.internal.AFg1rSDK.f10934e = r0
            int r5 = r5 % 2
            if (r5 != 0) goto L63
            r5 = 77
            int r5 = r5 / 0
        L63:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFg1rSDK.getMonetizationNetwork(com.appsflyer.internal.AFh1mSDK):void");
    }

    @Override // com.appsflyer.internal.AFg1nSDK
    public final void getRevenue(@NotNull AFh1mSDK aFh1mSDK) {
        int i10 = unregisterClient + 75;
        f10934e = i10 % 128;
        if (i10 % 2 != 0) {
            Intrinsics.checkNotNullParameter(aFh1mSDK, "");
            Map<String, Object> map = aFh1mSDK.AFAdRevenueData;
            if (aFh1mSDK.getRevenue()) {
                unregisterClient = (f10934e + 47) % 128;
                String str = aFh1mSDK.component1;
                AFc1eSDK aFc1eSDK = this.toString;
                AFAdRevenueData(aFh1mSDK, str, aFc1eSDK.getMediationNetwork, aFc1eSDK.AFAdRevenueData);
            } else if (!(aFh1mSDK instanceof AFh1fSDK)) {
                Intrinsics.checkNotNullExpressionValue(map, "");
                String str2 = aFh1mSDK.areAllFieldsValid;
                Intrinsics.checkNotNullExpressionValue(str2, "");
                getMediationNetwork(map, str2);
            }
            if (CollectionsKt.q(AFe1pSDK.CONVERSION, AFe1pSDK.LAUNCH, AFe1pSDK.INAPP).contains(aFh1mSDK.AFAdRevenueData())) {
                int i11 = f10934e + 107;
                unregisterClient = i11 % 128;
                if (i11 % 2 != 0) {
                    Intrinsics.checkNotNullExpressionValue(map, "");
                    equals(map);
                    int i12 = 37 / 0;
                } else {
                    Intrinsics.checkNotNullExpressionValue(map, "");
                    equals(map);
                }
            }
            Intrinsics.checkNotNullExpressionValue(map, "");
            w(map);
            getRevenue(new Object[]{map}, -1520031212, 1520031215, (int) System.currentTimeMillis());
            AFInAppEventType(map);
            AFInAppEventParameterName(map);
            AFAdRevenueData(map);
            getMonetizationNetwork(map, aFh1mSDK.getRevenue());
            e(map);
            i(map);
            getMediationNetwork(map, aFh1mSDK);
            map.put("af_events_api", "1");
            return;
        }
        Intrinsics.checkNotNullParameter(aFh1mSDK, "");
        Map<String, Object> map2 = aFh1mSDK.AFAdRevenueData;
        aFh1mSDK.getRevenue();
        throw null;
    }

    @Override // com.appsflyer.internal.AFg1nSDK
    public final void AFAdRevenueData(@NotNull Map<String, Object> map) {
        Intrinsics.checkNotNullParameter(map, "");
        String currencyIso4217Code = AFb1kSDK.getCurrencyIso4217Code(this.component4.getMediationNetwork);
        if (currencyIso4217Code != null) {
            map.put(com.huawei.hms.support.feature.result.CommonConstant.KEY_UID, currencyIso4217Code);
            boolean mediationNetwork = this.component4.getMediationNetwork.getMediationNetwork("CUSTOM_INSTALL_ID_APPLIED", false);
            Intrinsics.checkNotNullExpressionValue(Boolean.valueOf(mediationNetwork), "");
            if (!(!mediationNetwork)) {
                f10934e = (unregisterClient + 97) % 128;
                map.put("custom_install_id", Boolean.TRUE);
            }
            int i10 = unregisterClient + 87;
            f10934e = i10 % 128;
            if (i10 % 2 == 0) {
                int i11 = 63 / 0;
            }
        }
    }

    private static /* synthetic */ Object getMediationNetwork(Object[] objArr) {
        Object d10;
        AFg1rSDK aFg1rSDK = (AFg1rSDK) objArr[0];
        Map map = (Map) objArr[1];
        unregisterClient = (f10934e + 91) % 128;
        Intrinsics.checkNotNullParameter(map, "");
        String str = aFg1rSDK.toString.getMonetizationNetwork;
        if (str != null) {
            f10934e = (unregisterClient + 107) % 128;
            if (map.get("af_deeplink") != null) {
                AFLogger.afDebugLog("Skip 'af' payload as deeplink was found by path");
            } else {
                try {
                    Result.a aVar = Result.f60901b;
                    JSONObject jSONObject = new JSONObject(str);
                    jSONObject.put("isPush", "true");
                    map.put("af_deeplink", jSONObject.toString());
                    d10 = Result.d(Unit.f60915a);
                    unregisterClient = (f10934e + 59) % 128;
                } catch (Throwable th2) {
                    Result.a aVar2 = Result.f60901b;
                    d10 = Result.d(kotlin.f.a(th2));
                }
                Throwable g10 = Result.g(d10);
                if (g10 != null) {
                    AFh1ySDK.e$default(AFLogger.INSTANCE, AFg1cSDK.GENERAL, "Exception while trying to create JSONObject from pushPayload", g10, false, false, false, false, 120, null);
                } else {
                    unregisterClient = (f10934e + 3) % 128;
                }
                Result.b(d10);
            }
        }
        aFg1rSDK.toString.getMonetizationNetwork = null;
        return null;
    }

    private static String AFAdRevenueData(AFc1qSDK aFc1qSDK, String str) {
        int i10 = unregisterClient + 73;
        f10934e = i10 % 128;
        if (i10 % 2 != 0) {
            String monetizationNetwork = aFc1qSDK.getMonetizationNetwork("CACHED_CHANNEL", (String) null);
            if (monetizationNetwork != null) {
                f10934e = (unregisterClient + 39) % 128;
                return monetizationNetwork;
            }
            aFc1qSDK.getRevenue("CACHED_CHANNEL", str);
            return str;
        }
        aFc1qSDK.getMonetizationNetwork("CACHED_CHANNEL", (String) null);
        throw null;
    }

    @Override // com.appsflyer.internal.AFg1nSDK
    @NotNull
    public final Long getMonetizationNetwork() {
        return (Long) getRevenue(new Object[]{this}, 1297709710, -1297709700, System.identityHashCode(this));
    }

    private void AFAdRevenueData(@NotNull Map<String, Object> map, int i10) {
        getRevenue(new Object[]{this, map, Integer.valueOf(i10)}, 1731268052, -1731268046, i10);
    }

    @Override // com.appsflyer.internal.AFg1nSDK
    public final void AFAdRevenueData(@NotNull AFh1mSDK aFh1mSDK) {
        getRevenue(new Object[]{this, aFh1mSDK}, 572486758, -572486747, System.identityHashCode(this));
    }

    private void getMediationNetwork(@NotNull Map<String, Object> map, @NotNull String str) {
        unregisterClient = (f10934e + 49) % 128;
        Intrinsics.checkNotNullParameter(map, "");
        Intrinsics.checkNotNullParameter(str, "");
        try {
            String monetizationNetwork = this.component1.getMonetizationNetwork("prev_event_name", (String) null);
            if (monetizationNetwork != null) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("prev_event_timestamp", this.component1.getMonetizationNetwork("prev_event_timestamp", -1L));
                jSONObject.put("prev_event_name", monetizationNetwork);
                map.put("prev_event", jSONObject);
            }
            this.component1.getRevenue("prev_event_name", str);
            this.component1.AFAdRevenueData("prev_event_timestamp", System.currentTimeMillis());
            int i10 = unregisterClient + 113;
            f10934e = i10 % 128;
            if (i10 % 2 == 0) {
                throw null;
            }
        } catch (Exception e10) {
            AFLogger.afErrorLog("Error while processing previous event.", e10);
        }
    }

    @Override // com.appsflyer.internal.AFg1nSDK
    public final void getRevenue(@NotNull Map<String, Object> map) {
        AFi1rSDK aFi1rSDK;
        Intrinsics.checkNotNullParameter(map, "");
        AFi1qSDK aFi1qSDK = this.component3.getMonetizationNetwork;
        if (aFi1qSDK != null) {
            unregisterClient = (f10934e + 107) % 128;
            aFi1rSDK = aFi1qSDK.getMonetizationNetwork();
        } else {
            aFi1rSDK = null;
        }
        if (aFi1rSDK != null) {
            map.put("network", aFi1rSDK.getCurrencyIso4217Code);
            map.put("ivc", Boolean.valueOf(aFi1rSDK.getMediationNetwork()));
            if (((AppsFlyerProperties) getRevenue(new Object[]{this}, -854454525, 854454532, System.identityHashCode(this))).getBoolean(AppsFlyerProperties.DISABLE_NETWORK_DATA, false)) {
                return;
            }
            int i10 = (f10934e + 65) % 128;
            unregisterClient = i10;
            int i11 = i10 + 99;
            f10934e = i11 % 128;
            if (i11 % 2 != 0) {
                String str = aFi1rSDK.getMonetizationNetwork;
                if (str != null) {
                    map.put("operator", str);
                }
                String str2 = aFi1rSDK.getRevenue;
                if (str2 != null) {
                    map.put("carrier", str2);
                    return;
                }
                return;
            }
            throw null;
        }
    }

    @NotNull
    private String getMediationNetwork(@NotNull SimpleDateFormat simpleDateFormat, int i10) {
        int i11 = f10934e + 7;
        unregisterClient = i11 % 128;
        if (i11 % 2 == 0) {
            Intrinsics.checkNotNullParameter(simpleDateFormat, "");
            String monetizationNetwork = this.component1.getMonetizationNetwork("appsFlyerFirstInstall", (String) null);
            if (monetizationNetwork == null) {
                int i12 = unregisterClient;
                f10934e = (i12 + 93) % 128;
                if (i10 <= 1) {
                    AFLogger.afDebugLog("AppsFlyer: first launch detected");
                    monetizationNetwork = simpleDateFormat.format(new Date());
                } else {
                    f10934e = (i12 + 41) % 128;
                    monetizationNetwork = "";
                }
                this.component1.getRevenue("appsFlyerFirstInstall", monetizationNetwork);
            }
            AFLogger aFLogger = AFLogger.INSTANCE;
            AFg1cSDK aFg1cSDK = AFg1cSDK.GENERAL;
            AFh1ySDK.i$default(aFLogger, aFg1cSDK, "AppsFlyer: first launch date: " + monetizationNetwork, false, 4, null);
            Intrinsics.checkNotNullExpressionValue(monetizationNetwork, "");
            return monetizationNetwork;
        }
        Intrinsics.checkNotNullParameter(simpleDateFormat, "");
        this.component1.getMonetizationNetwork("appsFlyerFirstInstall", (String) null);
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0039, code lost:
        if (r2 == null) goto L5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x003f, code lost:
        if (java.lang.Integer.parseInt(r2) <= 0) goto L5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0041, code lost:
        r3 = com.appsflyer.internal.AFg1rSDK.unregisterClient + 109;
        com.appsflyer.internal.AFg1rSDK.f10934e = r3 % 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x004f, code lost:
        if ((r3 % 2) != 0) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0051, code lost:
        r6.put("reinstallCounter", r2);
        r6.put("originalAppsflyerId", r1);
        r6 = 28 / 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x005b, code lost:
        r6.put("reinstallCounter", r2);
        r6.put("originalAppsflyerId", r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0021, code lost:
        if (r1 != null) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x002f, code lost:
        if (r1 != null) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0031, code lost:
        com.appsflyer.internal.AFg1rSDK.unregisterClient = (com.appsflyer.internal.AFg1rSDK.f10934e + 67) % 128;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static /* synthetic */ java.lang.Object getRevenue(java.lang.Object[] r6) {
        /*
            r0 = 0
            r6 = r6[r0]
            java.util.Map r6 = (java.util.Map) r6
            int r1 = com.appsflyer.internal.AFg1rSDK.f10934e
            int r1 = r1 + 79
            int r2 = r1 % 128
            com.appsflyer.internal.AFg1rSDK.unregisterClient = r2
            int r1 = r1 % 2
            java.lang.String r2 = ""
            if (r1 == 0) goto L24
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r2)
            java.lang.String r1 = com.appsflyer.internal.AFa1vSDK.getMonetizationNetwork()
            java.lang.String r2 = com.appsflyer.internal.AFa1vSDK.getCurrencyIso4217Code()
            r3 = 20
            int r3 = r3 / r0
            if (r1 == 0) goto L61
            goto L31
        L24:
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r2)
            java.lang.String r1 = com.appsflyer.internal.AFa1vSDK.getMonetizationNetwork()
            java.lang.String r2 = com.appsflyer.internal.AFa1vSDK.getCurrencyIso4217Code()
            if (r1 == 0) goto L61
        L31:
            int r3 = com.appsflyer.internal.AFg1rSDK.f10934e
            int r3 = r3 + 67
            int r3 = r3 % 128
            com.appsflyer.internal.AFg1rSDK.unregisterClient = r3
            if (r2 == 0) goto L61
            int r3 = java.lang.Integer.parseInt(r2)
            if (r3 <= 0) goto L61
            int r3 = com.appsflyer.internal.AFg1rSDK.unregisterClient
            int r3 = r3 + 109
            int r4 = r3 % 128
            com.appsflyer.internal.AFg1rSDK.f10934e = r4
            int r3 = r3 % 2
            java.lang.String r4 = "originalAppsflyerId"
            java.lang.String r5 = "reinstallCounter"
            if (r3 != 0) goto L5b
            r6.put(r5, r2)
            r6.put(r4, r1)
            r6 = 28
            int r6 = r6 / r0
            goto L61
        L5b:
            r6.put(r5, r2)
            r6.put(r4, r1)
        L61:
            int r6 = com.appsflyer.internal.AFg1rSDK.f10934e
            int r6 = r6 + 57
            int r0 = r6 % 128
            com.appsflyer.internal.AFg1rSDK.unregisterClient = r0
            int r6 = r6 % 2
            r0 = 0
            if (r6 != 0) goto L6f
            return r0
        L6f:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFg1rSDK.getRevenue(java.lang.Object[]):java.lang.Object");
    }

    @Override // com.appsflyer.internal.AFg1nSDK
    public final void getMediationNetwork(@NotNull Map<String, Object> map, @NotNull AFe1pSDK aFe1pSDK) {
        f10934e = (unregisterClient + 43) % 128;
        Intrinsics.checkNotNullParameter(map, "");
        Intrinsics.checkNotNullParameter(aFe1pSDK, "");
        if (!copydefault().contains(aFe1pSDK)) {
            unregisterClient = (f10934e + 57) % 128;
        } else if (this.toString.getMediationNetwork()) {
            map.put("app_set_id", p0.f(ms.k.a("app_set_id_disabled", Boolean.TRUE)));
            if (this.toString.copydefault != null) {
                AFh1ySDK.i$default(AFLogger.INSTANCE, AFg1cSDK.APP_SET_ID, "App Set Id was collected, but will not be included in the payload.To prevent collection entirely, call disableAppSetId() before initializing the SDK.", false, 4, null);
            } else {
                AFh1ySDK.i$default(AFLogger.INSTANCE, AFg1cSDK.APP_SET_ID, "App Set ID collection is disabled. Skipping inclusion in the event payload.", false, 4, null);
            }
        } else {
            AFb1gSDK aFb1gSDK = this.toString.copydefault;
            if (aFb1gSDK != null) {
                map.put("app_set_id", p0.m(ms.k.a(CommonConstant.ReqAccessTokenParam.SCOPE_LABEL, Integer.valueOf(aFb1gSDK.getMonetizationNetwork)), ms.k.a("id", aFb1gSDK.getMediationNetwork)));
            }
        }
    }

    private void getRevenue(@NotNull Map<String, Object> map, @Nullable String str) {
        getRevenue(new Object[]{this, map, str}, 274047423, -274047418, System.identityHashCode(this));
    }

    @Nullable
    private String getRevenue(int i10) {
        return (String) getRevenue(new Object[]{this, Integer.valueOf(i10)}, -994471321, 994471330, i10);
    }

    private static File getMediationNetwork(String str) {
        int i10 = f10934e + 5;
        unregisterClient = i10 % 128;
        try {
        } catch (Throwable th2) {
            AFLogger.afErrorLog(th2.getMessage(), th2);
        }
        if (i10 % 2 == 0) {
            if (str != null && StringsKt.v1(str).toString().length() > 0) {
                File file = new File(StringsKt.v1(str).toString());
                int i11 = f10934e + 55;
                unregisterClient = i11 % 128;
                if (i11 % 2 == 0) {
                    return file;
                }
                throw null;
            }
            return null;
        }
        throw null;
    }

    private static String getMediationNetwork(File file, String str) {
        InputStreamReader inputStreamReader;
        try {
            try {
                if (file == null) {
                    int i10 = unregisterClient + 65;
                    f10934e = i10 % 128;
                    if (i10 % 2 != 0) {
                        return null;
                    }
                    throw null;
                }
                try {
                    Properties properties = new Properties();
                    inputStreamReader = new InputStreamReader(new FileInputStream(file), Charset.defaultCharset());
                    try {
                        properties.load(inputStreamReader);
                        AFLogger.afInfoLog("Found PreInstall property!");
                        String property = properties.getProperty(str);
                        try {
                            inputStreamReader.close();
                        } catch (Throwable th2) {
                            AFLogger.afErrorLog(th2.getMessage(), th2);
                        }
                        int i11 = unregisterClient + 55;
                        f10934e = i11 % 128;
                        if (i11 % 2 != 0) {
                            return property;
                        }
                        throw null;
                    } catch (FileNotFoundException unused) {
                        AFLogger.afDebugLog("PreInstall file wasn't found: " + file.getAbsolutePath());
                        if (inputStreamReader != null) {
                            inputStreamReader.close();
                        }
                        return null;
                    } catch (Throwable th3) {
                        th = th3;
                        AFLogger.afErrorLog(th.getMessage(), th);
                        if (inputStreamReader != null) {
                            inputStreamReader.close();
                        }
                        return null;
                    }
                } catch (FileNotFoundException unused2) {
                    inputStreamReader = null;
                } catch (Throwable th4) {
                    th = th4;
                    inputStreamReader = null;
                }
            } catch (Throwable th5) {
                if (inputStreamReader != null) {
                    try {
                        inputStreamReader.close();
                    } catch (Throwable th6) {
                        AFLogger.afErrorLog(th6.getMessage(), th6);
                    }
                }
                throw th5;
            }
        } catch (Throwable th7) {
            AFLogger.afErrorLog(th7.getMessage(), th7);
        }
    }

    private static void getMediationNetwork(@NotNull Map<String, Object> map, @NotNull AFh1mSDK aFh1mSDK) {
        Intrinsics.checkNotNullParameter(map, "");
        Intrinsics.checkNotNullParameter(aFh1mSDK, "");
        String str = aFh1mSDK.areAllFieldsValid;
        if (str != null) {
            map.put(CallAppDataKey.KEY_TRACKING_EVENT_NAME, str);
            Map map2 = aFh1mSDK.getRevenue;
            if (map2 == null) {
                map2 = new HashMap();
            }
            map.put("eventValue", new JSONObject(map2).toString());
        }
    }

    private final void getMediationNetwork(Map<String, Object> map) {
        getRevenue(new Object[]{this, map}, -539509618, 539509626, System.identityHashCode(this));
    }

    private final AppsFlyerProperties getMediationNetwork() {
        return (AppsFlyerProperties) getRevenue(new Object[]{this}, -854454525, 854454532, System.identityHashCode(this));
    }
}
