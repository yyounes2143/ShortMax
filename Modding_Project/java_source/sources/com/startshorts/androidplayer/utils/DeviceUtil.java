package com.startshorts.androidplayer.utils;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.LinkAddress;
import android.net.LinkProperties;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.StatFs;
import android.os.SystemClock;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import android.webkit.WebSettings;
import androidx.autofill.HintConstants;
import androidx.work.PeriodicWorkRequest;
import com.adjust.sdk.Constants;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.startshorts.androidplayer.R$dimen;
import com.startshorts.androidplayer.bean.fb.FBDeviceInfo;
import com.startshorts.androidplayer.bean.settings.AppLanguage;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.unity3d.services.ads.gmascar.utils.ScarConstants;
import dd.k;
import fk.u;
import java.net.Inet4Address;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import jk.v;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.c;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.ranges.e;
import kotlin.text.CharsKt;
import kotlin.text.StringsKt;
import kotlinx.coroutines.r;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ud.b;
/* compiled from: DeviceUtil.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDeviceUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeviceUtil.kt\ncom/startshorts/androidplayer/utils/DeviceUtil\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1005:1\n1863#2,2:1006\n1#3:1008\n*S KotlinDebug\n*F\n+ 1 DeviceUtil.kt\ncom/startshorts/androidplayer/utils/DeviceUtil\n*L\n768#1:1006,2\n*E\n"})
/* loaded from: classes7.dex */
public final class DeviceUtil {
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private static String f48148c;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final DeviceUtil f48146a = new DeviceUtil();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final Object f48147b = new Object();
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final Object f48149d = new Object();
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final Object f48150e = new Object();
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private static final Object f48151f = new Object();
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private static final Object f48152g = new Object();
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private static final Object f48153h = new Object();
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private static final List<String> f48154i = CollectionsKt.t("SM-A047F", "SM-F900F", "SM-F907N", "SM-S908U", "SM-S928N", "SM-A135M", "SM-T505N", "SM-S928B", "SM-G975F", "SM-G998B", "SM-G990W", "SM-G975U1", "SM-G781B", "Pixel 6a", "Nokia C210", "Nokia G21", "22101320G", "21081111RG", "M2010J19CG", "M2101K7BNY", "M2101K6G", "M2103K19G", "Infinix X6831", "X9", "RMX3760", "FCG01", "LM-K920", "moto g pure", "P31", "Pixel 8 Pro", "Ox-10-13-1", "MAR-AL00", "Z999", "WDY-LX1", "Elite10QH", "ALP-L29", "LG-LK460", "NE2211", "iPlay50_mini_Pro", "KB2005");
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private static final List<String> f48155j = CollectionsKt.t("I19", Constants.REFERRER_API_VIVO, "CPH", "V2", "SM-A", "SM-S", "SM-T", "SM-M", "SM-N", "SM-X", "SM-P", "M2", "moto g", "VOG", "TECNO", "Pixel");
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    private static final List<String> f48156k = CollectionsKt.t("6bd280148017e98114d9295473aa83b0", "b5c33a9e4978f7aab2ee9f50ba252dc2", "43e9f0b52c183d386f8d3a894df9c9ab", "b1c20c652195f8813df7cfc0cc33bf28", "b5fc78e7720d232afbfa7e5c5e19d223", "c3f7288742c6d57bf74b3dd22c3a05ce", "e329a27671eb3049cb7a6145663b50dc", "538a9da5c169f1b84e5123416318ccfd", "1f1dc92ceb341f8853d61356cac39239", "56919f8001faf04bb0493f264804a3f1", "2bac771da934ca26a22736379c2ae7e6", "e207942042d67f75affb3c803fa6129d", "086246dd32a22a4da57e00789a422349", "ff23ad054937d9f9e6150a242bb6df2d", "2a260bf715bb7ceb5185fe28f9ccb22e", "4008fd56739578ad78bec17238b73884", "b96bce5093b1809746f4747f3ec8d16c", "0c4100b422669cd371d77b4f5d55b083", "0fb0bb231bca13c751a16aa05464e7a8", "56919f8001faf04bb0493f264804a3f1", "dd5307549046850567c3d999ea5a44e8", "39f9540761c0441641451e7ae93c003d", "c17493f7adfae319821453dfd83522d6", "75d1df39fa733a31059344d74b06a064", "06db5f5181df9f4577591de6b3d346a0", "e70f05a7c39252d4fd70e8681c7e6ac9", "6403d783927249a83b2b6974681072b6", "f092308b1fd22d2b34713a2f71c05d6f", "b510d69a8e7c9d1bd37d9b2892e3d690", "32ce45efffb62dc8a75088b1d5f2f720", "e31834eba3ca13893d55aafd494f781b", "fea32745ff64bba9f2f218771cbeec87", "1535a26cb026305165097c8642516b09", "e1a48768957c00ad6869f3643bfc1a19", "54062efdd5a1c3275e484bba8ef998f1", "8fdc85cff9c122afad10764f85dbbd78", "bd5be33d09daf7e600af7b5717664d45", "cbc22f12df6d0a207c5a011780d330ee");
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    private static final i f48157l = c.b(new Function0() { // from class: fk.o
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ConcurrentHashMap j02;
            j02 = DeviceUtil.j0();
            return j02;
        }
    });

    private DeviceUtil() {
    }

    private final String D() {
        String MODEL = Build.MODEL;
        Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
        return MODEL;
    }

    @SuppressLint({"InternalInsetResource", "DiscouragedApi"})
    private final int I() {
        try {
            u uVar = u.f51776a;
            int identifier = uVar.c().getIdentifier("status_bar_height", "dimen", "android");
            if (identifier > 0) {
                return uVar.c().getDimensionPixelOffset(identifier);
            }
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("DeviceUtil", "getStatusBarHeight failed -> " + e10.getMessage());
        }
        return 0;
    }

    private final String N() {
        Locale locale = Resources.getSystem().getConfiguration().getLocales().get(0);
        if (locale == null) {
            return "en";
        }
        String language = locale.getLanguage();
        Intrinsics.checkNotNullExpressionValue(language, "getLanguage(...)");
        return language;
    }

    private final String P() {
        String RELEASE = Build.VERSION.RELEASE;
        Intrinsics.checkNotNullExpressionValue(RELEASE, "RELEASE");
        return RELEASE;
    }

    private final String R() {
        try {
            TimeZone timeZone = TimeZone.getDefault();
            String displayName = timeZone.getDisplayName(timeZone.inDaylightTime(new Date()), 0);
            Intrinsics.checkNotNull(displayName);
            return displayName;
        } catch (Exception unused) {
            return "";
        }
    }

    private final String S() {
        String id2 = TimeZone.getDefault().getID();
        Intrinsics.checkNotNullExpressionValue(id2, "getID(...)");
        return id2;
    }

    private final String T() {
        double d10;
        try {
            if (Intrinsics.areEqual("mounted", Environment.getExternalStorageState())) {
                StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
                d10 = statFs.getBlockCountLong() * statFs.getBlockSizeLong();
            } else {
                d10 = 0.0d;
            }
            return String.valueOf(bt.a.b(d10 / 1.073741824E9d));
        } catch (Exception e10) {
            Logger.f41511a.e("DeviceUtil", "getTotalExternalStorage exception -> " + e10.getMessage());
            return MBridgeConstans.ENDCARD_URL_TYPE_PL;
        }
    }

    private final boolean Z() {
        String C = C();
        if (f48154i.contains(C)) {
            if (Intrinsics.areEqual(C, "SM-A146P") || Intrinsics.areEqual(C, "SM-A226B")) {
                List t10 = CollectionsKt.t("cn", "hk");
                String lowerCase = AccountRepo.f43052a.i0().toLowerCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                if (t10.contains(lowerCase)) {
                    return false;
                }
            }
            return true;
        }
        for (String str : f48155j) {
            if (StringsKt.V(C, str, false, 2, null)) {
                if (Intrinsics.areEqual(C, "SM-A146P") || Intrinsics.areEqual(C, "SM-A226B")) {
                    List t11 = CollectionsKt.t("cn", "hk");
                    String lowerCase2 = AccountRepo.f43052a.i0().toLowerCase(Locale.ROOT);
                    Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
                    if (t11.contains(lowerCase2)) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }

    private final String d(String str) {
        int length = str.length();
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            i10 += str.charAt(i11);
        }
        ArrayList arrayList = new ArrayList();
        String num = Integer.toString(i10 % 7, CharsKt.checkRadix(16));
        Intrinsics.checkNotNullExpressionValue(num, "toString(...)");
        Locale locale = Locale.ROOT;
        String upperCase = num.toUpperCase(locale);
        Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
        arrayList.add(upperCase);
        String num2 = Integer.toString(i10 % 11, CharsKt.checkRadix(16));
        Intrinsics.checkNotNullExpressionValue(num2, "toString(...)");
        String upperCase2 = num2.toUpperCase(locale);
        Intrinsics.checkNotNullExpressionValue(upperCase2, "toUpperCase(...)");
        arrayList.add(upperCase2);
        String num3 = Integer.toString(i10 % 13, CharsKt.checkRadix(16));
        Intrinsics.checkNotNullExpressionValue(num3, "toString(...)");
        String upperCase3 = num3.toUpperCase(locale);
        Intrinsics.checkNotNullExpressionValue(upperCase3, "toUpperCase(...)");
        arrayList.add(upperCase3);
        return CollectionsKt.A0(arrayList, "", null, null, 0, null, null, 62, null);
    }

    private final String f() {
        double d10;
        try {
            if (Intrinsics.areEqual("mounted", Environment.getExternalStorageState())) {
                StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
                d10 = statFs.getAvailableBlocksLong() * statFs.getBlockSizeLong();
            } else {
                d10 = 0.0d;
            }
            return String.valueOf(bt.a.b(d10 / 1.073741824E9d));
        } catch (Exception e10) {
            Logger.f41511a.e("DeviceUtil", "getAvailableExternalStorage exception -> " + e10.getMessage());
            return MBridgeConstans.ENDCARD_URL_TYPE_PL;
        }
    }

    private final String g() {
        try {
            return String.valueOf(e.e(Runtime.getRuntime().availableProcessors(), 1));
        } catch (Exception unused) {
            return "1";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean h0() {
        Network[] allNetworks;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) u.f51776a.b().getSystemService("connectivity");
            if (connectivityManager != null && (allNetworks = connectivityManager.getAllNetworks()) != null) {
                for (Network network : allNetworks) {
                    NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(network);
                    if (networkCapabilities != null && networkCapabilities.hasTransport(4)) {
                        return true;
                    }
                }
            }
        } catch (Exception e10) {
            Logger.f41511a.e("DeviceUtil", "check isUseVpn exception -> " + e10.getMessage());
        }
        return false;
    }

    private final String i() {
        try {
            Object systemService = u.f51776a.b().getSystemService(HintConstants.AUTOFILL_HINT_PHONE);
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.telephony.TelephonyManager");
            TelephonyManager telephonyManager = (TelephonyManager) systemService;
            String networkOperatorName = telephonyManager.getNetworkOperatorName();
            if (networkOperatorName != null && networkOperatorName.length() != 0) {
                return telephonyManager.getNetworkOperatorName();
            }
            return "NoCarrier";
        } catch (Exception unused) {
            return "NoCarrier";
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0036, code lost:
        if (r2.length() == 0) goto L19;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0032 A[Catch: Exception -> 0x001a, TRY_LEAVE, TryCatch #0 {Exception -> 0x001a, blocks: (B:3:0x0002, B:5:0x0013, B:12:0x0032, B:10:0x001c), top: B:24:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.String j() {
        /*
            r5 = this;
            java.lang.String r0 = ""
            fk.u r1 = fk.u.f51776a     // Catch: java.lang.Exception -> L1a
            android.content.Context r1 = r1.b()     // Catch: java.lang.Exception -> L1a
            java.util.Locale r2 = java.util.Locale.getDefault()     // Catch: java.lang.Exception -> L1a
            java.lang.String r2 = r2.getCountry()     // Catch: java.lang.Exception -> L1a
            r3 = 0
            if (r2 == 0) goto L1c
            int r4 = r2.length()     // Catch: java.lang.Exception -> L1a
            if (r4 != 0) goto L30
            goto L1c
        L1a:
            r1 = move-exception
            goto L42
        L1c:
            android.content.res.Resources r1 = r1.getResources()     // Catch: java.lang.Exception -> L1a
            android.content.res.Configuration r1 = r1.getConfiguration()     // Catch: java.lang.Exception -> L1a
            android.os.LocaleList r1 = r1.getLocales()     // Catch: java.lang.Exception -> L1a
            java.util.Locale r1 = r1.get(r3)     // Catch: java.lang.Exception -> L1a
            java.lang.String r2 = r1.getCountry()     // Catch: java.lang.Exception -> L1a
        L30:
            if (r2 == 0) goto L38
            int r1 = r2.length()     // Catch: java.lang.Exception -> L1a
            if (r1 != 0) goto L39
        L38:
            r3 = 1
        L39:
            if (r3 != 0) goto L3c
            goto L3d
        L3c:
            r2 = 0
        L3d:
            if (r2 != 0) goto L40
            goto L41
        L40:
            r0 = r2
        L41:
            return r0
        L42:
            com.startshorts.androidplayer.log.Logger r2 = com.startshorts.androidplayer.log.Logger.f41511a
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "getCountryCodeFromLocaleNoCache exception -> "
            r3.append(r4)
            java.lang.String r1 = r1.getMessage()
            r3.append(r1)
            java.lang.String r1 = r3.toString()
            java.lang.String r3 = "DeviceUtil"
            r2.e(r3, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.utils.DeviceUtil.j():java.lang.String");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ConcurrentHashMap j0() {
        return new ConcurrentHashMap();
    }

    private final ConcurrentHashMap<String, String> v() {
        return (ConcurrentHashMap) f48157l.getValue();
    }

    private final String z() {
        String str;
        try {
            Object systemService = u.f51776a.b().getSystemService(HintConstants.AUTOFILL_HINT_PHONE);
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.telephony.TelephonyManager");
            str = ((TelephonyManager) systemService).getNetworkOperator();
        } catch (Exception unused) {
            str = "";
        }
        if (str == null || str.length() == 0) {
            return MBridgeConstans.ENDCARD_URL_TYPE_PL;
        }
        return str;
    }

    @NotNull
    public final String A() {
        NetworkInfo networkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) u.f51776a.b().getSystemService("connectivity");
        if (connectivityManager != null) {
            networkInfo = connectivityManager.getActiveNetworkInfo();
        } else {
            networkInfo = null;
        }
        if (networkInfo != null && networkInfo.isConnected()) {
            if (networkInfo.getType() == 1) {
                return "wifi";
            }
            if (networkInfo.getType() == 0) {
                return "mobile";
            }
            return "other";
        }
        return "no_net";
    }

    @NotNull
    public final String B() {
        return "live.shorttv.apps";
    }

    @NotNull
    public final String C() {
        ud.a aVar = ud.a.f68411a;
        String u10 = aVar.u();
        if (u10 != null && u10.length() != 0) {
            return u10;
        }
        String D = D();
        aVar.z0(D);
        return D;
    }

    @NotNull
    public final String E() {
        Object systemService = u.f51776a.b().getSystemService("window");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) systemService).getDefaultDisplay().getMetrics(displayMetrics);
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format(Locale.ENGLISH, "%.2f", Arrays.copyOf(new Object[]{Double.valueOf(displayMetrics.density)}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        return format;
    }

    public final int F() {
        synchronized (f48150e) {
            ud.a aVar = ud.a.f68411a;
            int y10 = aVar.y();
            if (y10 != 0) {
                return y10;
            }
            Object systemService = u.f51776a.b().getSystemService("window");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.WindowManager");
            Display defaultDisplay = ((WindowManager) systemService).getDefaultDisplay();
            DisplayMetrics displayMetrics = new DisplayMetrics();
            defaultDisplay.getMetrics(displayMetrics);
            int i10 = displayMetrics.heightPixels;
            aVar.H0(i10);
            return i10;
        }
    }

    public final int G() {
        synchronized (f48150e) {
            ud.a aVar = ud.a.f68411a;
            int z10 = aVar.z();
            if (z10 != 0) {
                return z10;
            }
            Object systemService = u.f51776a.b().getSystemService("window");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.WindowManager");
            Display defaultDisplay = ((WindowManager) systemService).getDefaultDisplay();
            DisplayMetrics displayMetrics = new DisplayMetrics();
            defaultDisplay.getMetrics(displayMetrics);
            int i10 = displayMetrics.widthPixels;
            aVar.I0(i10);
            return i10;
        }
    }

    public final int H() {
        int C = ud.a.f68411a.C();
        if (C > 0) {
            return C;
        }
        return (int) u.f51776a.c().getDimension(R$dimen.navigation_bar_height);
    }

    public final int J() {
        int D = ud.a.f68411a.D();
        if (D > 0) {
            return D;
        }
        int I = I();
        if (I > 0) {
            return I;
        }
        return (int) u.f51776a.c().getDimension(R$dimen.status_bar_top);
    }

    public final long K() {
        return r();
    }

    public final long L() {
        return SystemClock.elapsedRealtime();
    }

    @NotNull
    public final String M() {
        ud.a aVar = ud.a.f68411a;
        String E = aVar.E();
        if (E != null && E.length() != 0) {
            return E;
        }
        String N = N();
        aVar.P0(N);
        return N;
    }

    @NotNull
    public final String O() {
        ud.a aVar = ud.a.f68411a;
        String F = aVar.F();
        if (F != null && F.length() != 0) {
            return F;
        }
        String P = P();
        aVar.Q0(P);
        return P;
    }

    @NotNull
    public final String Q() {
        ud.a aVar = ud.a.f68411a;
        String G = aVar.G();
        if (G != null && G.length() != 0) {
            return G;
        }
        String S = S();
        aVar.R0(S);
        return S;
    }

    public final int U() {
        return 2948;
    }

    @NotNull
    public final String V() {
        return "2.18.0";
    }

    @NotNull
    public final String W() {
        try {
            String defaultUserAgent = WebSettings.getDefaultUserAgent(u.f51776a.b());
            Intrinsics.checkNotNullExpressionValue(defaultUserAgent, "getDefaultUserAgent(...)");
            return defaultUserAgent;
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("DeviceUtil", "getWebViewUserAgent exception -> " + e10.getMessage());
            return "";
        }
    }

    public final boolean X() {
        if (Build.VERSION.SDK_INT < 33) {
            return true;
        }
        return false;
    }

    public final boolean Y() {
        if (Build.VERSION.SDK_INT < 26) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String a0() {
        String str;
        boolean z10;
        synchronized (f48153h) {
            String L = ud.a.f68411a.L();
            if (L != null && L.length() != 0) {
                return L;
            }
            try {
                ContentResolver contentResolver = u.f51776a.b().getContentResolver();
                boolean z11 = false;
                if (Settings.Global.getInt(contentResolver, "development_settings_enabled", 0) != 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (Settings.Global.getInt(contentResolver, "adb_enabled", 0) != 0) {
                    z11 = true;
                }
                if (z10 && z11) {
                    str = "true";
                } else {
                    str = "false";
                }
            } catch (Exception unused) {
                str = "false";
            }
            if (str.length() == 0) {
                str = "false";
            }
            ud.a.f68411a.f0(str);
            return str;
        }
    }

    public final boolean b0() {
        if (Math.abs(EventManager.f42463a.E().getDiffTimeLong()) < PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS) {
            return true;
        }
        return false;
    }

    public final boolean c() {
        String str;
        if (CollectionsKt.g0(f48156k, f48148c)) {
            Logger.f41511a.h("DeviceUtil", "checkClearInvalidDeviceId");
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putString("custom_device_id", f48148c);
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "token_error_check", bundle, 0L, 4, null);
            af.i.f639a.a();
            String m10 = ud.a.f68411a.m();
            if (!v.h(m10)) {
                str = hk.c.f52893a.a(m10);
            } else {
                str = null;
            }
            if (str == null || str.length() == 0) {
                hk.c cVar = hk.c.f52893a;
                String uuid = UUID.randomUUID().toString();
                Intrinsics.checkNotNullExpressionValue(uuid, "toString(...)");
                str = cVar.a(uuid);
            }
            f48148c = str;
            k.f50341a.putString("device_id", str);
            return true;
        }
        return false;
    }

    @NotNull
    public final String c0() {
        String str;
        synchronized (f48152g) {
            String M = ud.a.f68411a.M();
            if (M != null && M.length() != 0) {
                return M;
            }
            try {
                str = String.valueOf(CommonUtils.x());
            } catch (Exception unused) {
                str = "false";
            }
            str = (str == null || str.length() == 0) ? "false" : "false";
            ud.a.f68411a.j0(str);
            return str;
        }
    }

    public final boolean d0() {
        return Intrinsics.areEqual(e(), "ja");
    }

    @NotNull
    public final String e() {
        Object obj;
        String str;
        synchronized (f48149d) {
            if (!ae.a.f627a.h()) {
                return f48146a.N();
            }
            String b10 = ud.a.f68411a.b();
            if (b10 != null && b10.length() != 0) {
                return b10;
            }
            String D = b.f68412a.D();
            if (D != null && D.length() != 0) {
                Logger logger = Logger.f41511a;
                logger.h("DeviceUtil", "getAppLanguage from MMKV -> language=" + D);
                ud.a.f68411a.Y(D);
                return D;
            }
            DeviceUtil deviceUtil = f48146a;
            String M = deviceUtil.M();
            String lowerCase = deviceUtil.l().toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            Logger logger2 = Logger.f41511a;
            logger2.h("DeviceUtil", "getAppLanguage from system -> language=" + M + ",country=" + lowerCase);
            if (StringsKt.G(M, "zh", true)) {
                if (Intrinsics.areEqual(lowerCase, "cn")) {
                    str = "zh_cn";
                } else {
                    str = "zh";
                }
                M = str;
            }
            Iterator<T> it = id.b.f53395a.a().iterator();
            while (true) {
                if (it.hasNext()) {
                    obj = it.next();
                    if (Intrinsics.areEqual(((AppLanguage) obj).getOfficialName(), M)) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            if (obj != null) {
                D = M;
            } else {
                D = "en";
            }
            Logger logger3 = Logger.f41511a;
            logger3.h("DeviceUtil", "finalAppLanguage -> " + D);
            b.f68412a.N2(D);
            ud.a.f68411a.Y(D);
            return D;
        }
    }

    public final boolean e0() {
        return Intrinsics.areEqual(e(), "ko");
    }

    public final boolean f0() {
        NetworkInfo activeNetworkInfo;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) u.f51776a.b().getSystemService("connectivity");
            if (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null) {
                return false;
            }
            return activeNetworkInfo.isAvailable();
        } catch (Error e10) {
            Logger logger = Logger.f41511a;
            logger.e("DeviceUtil", "check isNetworkAvailable exception -> " + e10.getMessage());
            return false;
        } catch (Exception e11) {
            Logger logger2 = Logger.f41511a;
            logger2.e("DeviceUtil", "check isNetworkAvailable exception -> " + e11.getMessage());
            return false;
        }
    }

    @NotNull
    public final String g0() {
        String str;
        synchronized (f48151f) {
            String U = ud.a.f68411a.U();
            if (U != null && U.length() != 0) {
                return U;
            }
            try {
                str = String.valueOf(CommonUtils.y());
            } catch (Exception unused) {
                str = "false";
            }
            str = (str == null || str.length() == 0) ? "false" : "false";
            ud.a.f68411a.G0(str);
            return str;
        }
    }

    @Nullable
    public final String h() {
        return f48148c;
    }

    public final boolean i0() {
        String e10 = e();
        if (!Intrinsics.areEqual(e10, "zh") && !Intrinsics.areEqual(e10, "zh_cn")) {
            return false;
        }
        return true;
    }

    @NotNull
    public final String k() {
        ud.a aVar = ud.a.f68411a;
        String r10 = aVar.r();
        if (r10 != null && r10.length() != 0) {
            return r10;
        }
        String l10 = l();
        aVar.w0(l10);
        return l10;
    }

    public final void k0(@NotNull Context context, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            Object systemService = context.getSystemService("activity");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
            ((ActivityManager) systemService).moveTaskToFront(i10, 0);
        } catch (Exception unused) {
        }
    }

    @NotNull
    public final String l() {
        try {
            return j();
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("DeviceUtil", "getCountryCodeFromLocaleNoCache exception -> " + e10.getMessage());
            return "";
        }
    }

    public final void l0() {
        ud.a.f68411a.P0(N());
    }

    @NotNull
    public final String m() {
        String y10 = y();
        if (y10.length() >= 3) {
            y10 = y10.substring(0, 3);
            Intrinsics.checkNotNullExpressionValue(y10, "substring(...)");
        }
        Logger logger = Logger.f41511a;
        logger.h("DeviceUtil", "getCountryCodeFromMCC -> networkOperator(" + y10 + ')');
        int hashCode = y10.hashCode();
        switch (hashCode) {
            case 49683:
                if (!y10.equals("234")) {
                    return "";
                }
                return "GB";
            case 50584:
                if (y10.equals("316")) {
                    return "US";
                }
                return "";
            case 51512:
                if (y10.equals("404")) {
                    return "IN";
                }
                return "";
            case 51700:
                if (y10.equals("466")) {
                    return "TW";
                }
                return "";
            case 52505:
                if (y10.equals("515")) {
                    return "PH";
                }
                return "";
            default:
                switch (hashCode) {
                    case 50578:
                        if (y10.equals("310")) {
                            return "US";
                        }
                        return "";
                    case 50579:
                        if (y10.equals("311")) {
                            return "US";
                        }
                        return "";
                    case 50580:
                        if (y10.equals("312")) {
                            return "US";
                        }
                        return "";
                    case 50581:
                        if (y10.equals("313")) {
                            return "US";
                        }
                        return "";
                    case 50582:
                        if (y10.equals("314")) {
                            return "US";
                        }
                        return "";
                    default:
                        return "";
                }
        }
    }

    @NotNull
    public final r m0() {
        return CoroutineUtil.l(CoroutineUtil.f48072a, "refreshUseVpn", false, new DeviceUtil$refreshUseVpn$1(null), 2, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0111 A[Catch: all -> 0x001d, TRY_LEAVE, TryCatch #2 {, blocks: (B:4:0x0003, B:6:0x0010, B:9:0x0017, B:14:0x0020, B:16:0x0030, B:19:0x0037, B:22:0x004b, B:24:0x0057, B:25:0x00a2, B:27:0x00b8, B:32:0x00c2, B:34:0x00f3, B:72:0x0258, B:74:0x025e, B:77:0x02c2, B:79:0x02e5, B:80:0x031c, B:76:0x0264, B:36:0x00f9, B:38:0x00ff, B:40:0x0109, B:42:0x0111, B:43:0x0114, B:45:0x014f, B:56:0x017b, B:58:0x0181, B:61:0x0189, B:63:0x018f, B:66:0x0197, B:70:0x0246, B:52:0x015c, B:55:0x016f, B:68:0x020d, B:69:0x022a, B:71:0x024c), top: B:85:0x0003, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x024c A[Catch: all -> 0x001d, TryCatch #2 {, blocks: (B:4:0x0003, B:6:0x0010, B:9:0x0017, B:14:0x0020, B:16:0x0030, B:19:0x0037, B:22:0x004b, B:24:0x0057, B:25:0x00a2, B:27:0x00b8, B:32:0x00c2, B:34:0x00f3, B:72:0x0258, B:74:0x025e, B:77:0x02c2, B:79:0x02e5, B:80:0x031c, B:76:0x0264, B:36:0x00f9, B:38:0x00ff, B:40:0x0109, B:42:0x0111, B:43:0x0114, B:45:0x014f, B:56:0x017b, B:58:0x0181, B:61:0x0189, B:63:0x018f, B:66:0x0197, B:70:0x0246, B:52:0x015c, B:55:0x016f, B:68:0x020d, B:69:0x022a, B:71:0x024c), top: B:85:0x0003, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x02e5 A[Catch: all -> 0x001d, TryCatch #2 {, blocks: (B:4:0x0003, B:6:0x0010, B:9:0x0017, B:14:0x0020, B:16:0x0030, B:19:0x0037, B:22:0x004b, B:24:0x0057, B:25:0x00a2, B:27:0x00b8, B:32:0x00c2, B:34:0x00f3, B:72:0x0258, B:74:0x025e, B:77:0x02c2, B:79:0x02e5, B:80:0x031c, B:76:0x0264, B:36:0x00f9, B:38:0x00ff, B:40:0x0109, B:42:0x0111, B:43:0x0114, B:45:0x014f, B:56:0x017b, B:58:0x0181, B:61:0x0189, B:63:0x018f, B:66:0x0197, B:70:0x0246, B:52:0x015c, B:55:0x016f, B:68:0x020d, B:69:0x022a, B:71:0x024c), top: B:85:0x0003, inners: #3 }] */
    /* JADX WARN: Type inference failed for: r2v0, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v19, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v3, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v17, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v36, types: [T, java.lang.String] */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String n() {
        /*
            Method dump skipped, instructions count: 804
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.utils.DeviceUtil.n():java.lang.String");
    }

    public final void n0(@NotNull String deviceId) {
        Intrinsics.checkNotNullParameter(deviceId, "deviceId");
        Logger.f41511a.h("DeviceUtil", "updateDeviceId");
        f48148c = deviceId;
        k.f50341a.putString("device_id", deviceId);
    }

    @NotNull
    public final String o(@Nullable String str) {
        if (str != null && str.length() != 0) {
            String str2 = v().get(str);
            if (str2 == null || str2.length() == 0) {
                String d10 = d(str);
                v().put(str, d10);
                return d10;
            }
            return str2;
        }
        return "";
    }

    @NotNull
    public final FBDeviceInfo p() {
        FBDeviceInfo fBDeviceInfo = new FBDeviceInfo();
        DeviceUtil deviceUtil = f48146a;
        fBDeviceInfo.setDeviceTimezone(deviceUtil.Q());
        fBDeviceInfo.setCarrier(deviceUtil.i());
        fBDeviceInfo.setCpuCores(deviceUtil.g());
        fBDeviceInfo.setExternalStorageSize(deviceUtil.T());
        fBDeviceInfo.setFreeSpaceInExternalStorageSize(deviceUtil.f());
        fBDeviceInfo.setDeviceModelName(deviceUtil.C());
        fBDeviceInfo.setScreenWidth(String.valueOf(deviceUtil.G()));
        fBDeviceInfo.setScreenHeight(String.valueOf(deviceUtil.F()));
        fBDeviceInfo.setScreenDensity(deviceUtil.E());
        fBDeviceInfo.setOsVersion(deviceUtil.O());
        fBDeviceInfo.setTimezoneAbbreviation(deviceUtil.R());
        return fBDeviceInfo;
    }

    public final long q() {
        long j10;
        PackageInfo packageInfo;
        b bVar = b.f68412a;
        if (bVar.y0() > 0) {
            return bVar.y0();
        }
        PackageManager packageManager = u.f51776a.b().getPackageManager();
        if (packageManager != null && (packageInfo = packageManager.getPackageInfo("live.shorttv.apps", 0)) != null) {
            j10 = packageInfo.firstInstallTime;
        } else {
            j10 = 0;
        }
        if (j10 <= 0) {
            j10 = System.currentTimeMillis();
        }
        bVar.K3(j10);
        return j10;
    }

    public final long r() {
        return System.currentTimeMillis() + EventManager.f42463a.E().getDiffTimeLong();
    }

    @NotNull
    public final String s() {
        String e10 = e();
        if (Intrinsics.areEqual(e10, "zh")) {
            return "zh-Hant";
        }
        if (Intrinsics.areEqual(e10, "zh_cn")) {
            return "zh-Hans";
        }
        if (Intrinsics.areEqual(e10, ScarConstants.IN_SIGNAL_KEY)) {
            return "id";
        }
        return e10;
    }

    public final int t() {
        return (int) u.f51776a.c().getDimension(R$dimen.home_search_bar_height);
    }

    public final int u() {
        return (int) u.f51776a.c().getDimension(R$dimen.home_tabview_height);
    }

    @NotNull
    public final String w() {
        String MANUFACTURER = Build.MANUFACTURER;
        Intrinsics.checkNotNullExpressionValue(MANUFACTURER, "MANUFACTURER");
        Locale ENGLISH = Locale.ENGLISH;
        Intrinsics.checkNotNullExpressionValue(ENGLISH, "ENGLISH");
        String lowerCase = MANUFACTURER.toLowerCase(ENGLISH);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        return StringsKt.v1(lowerCase).toString();
    }

    @Nullable
    public final String x() {
        LinkProperties linkProperties;
        Object systemService = u.f51776a.b().getSystemService("connectivity");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        ConnectivityManager connectivityManager = (ConnectivityManager) systemService;
        Network activeNetwork = connectivityManager.getActiveNetwork();
        if (activeNetwork != null && (linkProperties = connectivityManager.getLinkProperties(activeNetwork)) != null) {
            List<LinkAddress> linkAddresses = linkProperties.getLinkAddresses();
            Intrinsics.checkNotNullExpressionValue(linkAddresses, "getLinkAddresses(...)");
            for (LinkAddress linkAddress : linkAddresses) {
                if (linkAddress.getAddress() instanceof Inet4Address) {
                    return linkAddress.getAddress().getHostAddress();
                }
            }
            return null;
        }
        return null;
    }

    @NotNull
    public final String y() {
        ud.a aVar = ud.a.f68411a;
        String s10 = aVar.s();
        if (s10 != null && s10.length() != 0) {
            return s10;
        }
        String z10 = z();
        aVar.x0(z10);
        return z10;
    }
}
