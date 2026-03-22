package com.inmobi.media;

import android.app.NotificationManager;
import android.app.usage.StorageStatsManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Environment;
import android.os.PowerManager;
import android.os.StatFs;
import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.view.inputmethod.InputMethodInfo;
import android.view.inputmethod.InputMethodManager;
import android.view.inputmethod.InputMethodSubtype;
import androidx.annotation.ChecksSdkIntAtLeast;
import androidx.annotation.WorkerThread;
import androidx.autofill.HintConstants;
import com.applovin.sdk.AppLovinEventTypes;
import com.inmobi.media.L3;
import com.mbridge.msdk.MBridgeConstans;
import com.ss.texturerender.TextureRenderKeys;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import kotlin.Pair;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
/* loaded from: classes5.dex */
public final class L3 {

    /* renamed from: d  reason: collision with root package name */
    public static String f23799d;

    /* renamed from: g  reason: collision with root package name */
    public static final String f23802g;

    /* renamed from: h  reason: collision with root package name */
    public static final Pair f23803h;

    /* renamed from: i  reason: collision with root package name */
    public static final String f23804i;

    /* renamed from: j  reason: collision with root package name */
    public static final String f23805j;

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ KProperty[] f23797b = {Reflection.property1(new PropertyReference1Impl(L3.class, "maxDeviceVolume", "getMaxDeviceVolume()I", 0)), Reflection.property1(new PropertyReference1Impl(L3.class, "curDeviceVolume", "getCurDeviceVolume()I", 0))};

    /* renamed from: a  reason: collision with root package name */
    public static final L3 f23796a = new L3();

    /* renamed from: c  reason: collision with root package name */
    public static long f23798c = -1;

    /* renamed from: e  reason: collision with root package name */
    public static final C3233x1 f23800e = new C3233x1((Integer) 15, (Function0) K3.f23770a, false, 12);

    /* renamed from: f  reason: collision with root package name */
    public static final C3233x1 f23801f = new C3233x1((Integer) 15, (Function0) J3.f23750a, true, 8);

    static {
        String RELEASE = Build.VERSION.RELEASE;
        Intrinsics.checkNotNullExpressionValue(RELEASE, "RELEASE");
        f23802g = RELEASE;
        f23803h = new Pair("d-api-lev", "" + Build.VERSION.SDK_INT);
        String MANUFACTURER = Build.MANUFACTURER;
        Intrinsics.checkNotNullExpressionValue(MANUFACTURER, "MANUFACTURER");
        f23804i = MANUFACTURER;
        String MODEL = Build.MODEL;
        Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
        f23805j = MODEL;
    }

    @ChecksSdkIntAtLeast(api = 21)
    public static final boolean G() {
        return true;
    }

    @ChecksSdkIntAtLeast(api = 24)
    public static final boolean I() {
        return true;
    }

    public static void K() {
        Uc.a(new Runnable() { // from class: ub.y0
            @Override // java.lang.Runnable
            public final void run() {
                L3.L();
            }
        });
    }

    public static final void L() {
        try {
            StatFs statFs = new StatFs(Environment.getDataDirectory().getAbsolutePath());
            StatFs statFs2 = new StatFs(Environment.getExternalStorageDirectory().getAbsolutePath());
            long availableBytes = statFs.getAvailableBytes();
            long availableBytes2 = statFs2.getAvailableBytes() + availableBytes;
            if (Environment.getExternalStorageState().equals("mounted")) {
                availableBytes = availableBytes2;
            }
            f23798c = availableBytes / 1048576;
        } catch (Exception e10) {
            C2947f2 event = new C2947f2(e10);
            S5 s52 = S5.f24132a;
            Intrinsics.checkNotNullParameter(event, "event");
            S5.f24135d.a(event);
        }
    }

    public static void M() {
        Uc.a(new Runnable() { // from class: ub.x0
            @Override // java.lang.Runnable
            public final void run() {
                L3.N();
            }
        });
    }

    public static final void N() {
        UUID uuid;
        long freeBytes;
        Context d10 = Uc.d();
        if (d10 == null) {
            return;
        }
        Object systemService = d10.getSystemService("storagestats");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.usage.StorageStatsManager");
        StorageStatsManager a10 = ub.r0.a(systemService);
        Object systemService2 = d10.getSystemService("storage");
        Intrinsics.checkNotNull(systemService2, "null cannot be cast to non-null type android.os.storage.StorageManager");
        List<StorageVolume> storageVolumes = ((StorageManager) systemService2).getStorageVolumes();
        Intrinsics.checkNotNullExpressionValue(storageVolumes, "getStorageVolumes(...)");
        long j10 = 0;
        for (StorageVolume storageVolume : storageVolumes) {
            String uuid2 = storageVolume.getUuid();
            if (uuid2 == null) {
                uuid = StorageManager.UUID_DEFAULT;
                Intrinsics.checkNotNull(uuid);
            } else {
                try {
                    uuid = UUID.fromString(uuid2);
                    Intrinsics.checkNotNull(uuid);
                } catch (Exception unused) {
                }
            }
            if (storageVolume.getState().equals("mounted")) {
                try {
                    freeBytes = a10.getFreeBytes(uuid);
                    j10 += freeBytes;
                } catch (Exception e10) {
                    C2947f2 event = new C2947f2(e10);
                    S5 s52 = S5.f24132a;
                    Intrinsics.checkNotNullParameter(event, "event");
                    S5.f24135d.a(event);
                }
            }
        }
        f23798c = j10 / 1048576;
    }

    public static void O() {
        Uc.a(new Runnable() { // from class: ub.v0
            @Override // java.lang.Runnable
            public final void run() {
                L3.P();
            }
        });
    }

    public static final void P() {
        try {
            StatFs statFs = new StatFs(Environment.getDataDirectory().getAbsolutePath());
            StatFs statFs2 = new StatFs(Environment.getExternalStorageDirectory().getAbsolutePath());
            float blockCountLong = ((float) statFs.getBlockCountLong()) * ((float) statFs.getBlockSizeLong());
            float blockCountLong2 = (((float) statFs2.getBlockCountLong()) * ((float) statFs2.getBlockSizeLong())) + blockCountLong;
            if (Environment.getExternalStorageState().equals("mounted")) {
                blockCountLong = blockCountLong2;
            }
            f23799d = "" + (blockCountLong / ((float) 1048576));
        } catch (Exception e10) {
            C2947f2 event = new C2947f2(e10);
            S5 s52 = S5.f24132a;
            Intrinsics.checkNotNullParameter(event, "event");
            S5.f24135d.a(event);
        }
    }

    public static void Q() {
        Uc.a(new Runnable() { // from class: ub.w0
            @Override // java.lang.Runnable
            public final void run() {
                L3.R();
            }
        });
    }

    public static final void R() {
        UUID uuid;
        long totalBytes;
        Context d10 = Uc.d();
        if (d10 == null) {
            return;
        }
        Object systemService = d10.getSystemService("storagestats");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.usage.StorageStatsManager");
        StorageStatsManager a10 = ub.r0.a(systemService);
        Object systemService2 = d10.getSystemService("storage");
        Intrinsics.checkNotNull(systemService2, "null cannot be cast to non-null type android.os.storage.StorageManager");
        List<StorageVolume> storageVolumes = ((StorageManager) systemService2).getStorageVolumes();
        Intrinsics.checkNotNullExpressionValue(storageVolumes, "getStorageVolumes(...)");
        long j10 = 0;
        for (StorageVolume storageVolume : storageVolumes) {
            String uuid2 = storageVolume.getUuid();
            if (uuid2 == null) {
                uuid = StorageManager.UUID_DEFAULT;
                Intrinsics.checkNotNull(uuid);
            } else {
                try {
                    uuid = UUID.fromString(uuid2);
                    Intrinsics.checkNotNull(uuid);
                } catch (Exception unused) {
                }
            }
            if (storageVolume.getState().equals("mounted")) {
                try {
                    totalBytes = a10.getTotalBytes(uuid);
                    j10 += totalBytes;
                } catch (Exception e10) {
                    C2947f2 event = new C2947f2(e10);
                    S5 s52 = S5.f24132a;
                    Intrinsics.checkNotNullParameter(event, "event");
                    S5.f24135d.a(event);
                }
            }
        }
        f23799d = "" + (j10 / 1048576);
    }

    public static String o() {
        ConnectivityManager connectivityManager;
        String str;
        Context d10 = Uc.d();
        if (d10 == null || !AbstractC3226wa.a(d10, "android.permission.ACCESS_NETWORK_STATE")) {
            return "";
        }
        Object systemService = d10.getSystemService("connectivity");
        NetworkInfo networkInfo = null;
        if (systemService instanceof ConnectivityManager) {
            connectivityManager = (ConnectivityManager) systemService;
        } else {
            connectivityManager = null;
        }
        if (connectivityManager == null) {
            return "";
        }
        try {
            networkInfo = connectivityManager.getActiveNetworkInfo();
        } catch (Exception e10) {
            Intrinsics.checkNotNullExpressionValue(L3.class.getSimpleName(), "getSimpleName(...)");
            e10.toString();
        }
        if (networkInfo == null) {
            return "";
        }
        if (Build.VERSION.SDK_INT < 28) {
            int type = networkInfo.getType();
            int subtype = networkInfo.getSubtype();
            if (type != 0) {
                if (type != 1) {
                    str = String.valueOf(type);
                }
                return "1";
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(type);
            sb2.append('|');
            sb2.append(subtype);
            str = sb2.toString();
            return str;
        }
        NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
        if (networkCapabilities == null) {
            return "";
        }
        if (networkCapabilities.hasTransport(0)) {
            str = "0|" + networkInfo.getSubtype();
        } else {
            if (!networkCapabilities.hasTransport(1)) {
                if (networkCapabilities.hasTransport(2)) {
                    str = "7";
                } else if (networkCapabilities.hasTransport(3)) {
                    str = "9";
                } else if (networkCapabilities.hasTransport(4)) {
                    str = "17";
                } else if (networkCapabilities.hasTransport(5)) {
                    str = "10";
                } else if (networkCapabilities.hasTransport(6)) {
                    str = "11";
                } else {
                    str = "8";
                }
            }
            return "1";
        }
        return str;
    }

    @NotNull
    public static final String q() {
        int p10 = f23796a.p();
        if (p10 != 0) {
            if (p10 != 1) {
                return "NIL";
            }
            return "wifi";
        }
        return "carrier";
    }

    @ChecksSdkIntAtLeast(api = 31)
    public final boolean A() {
        if (Build.VERSION.SDK_INT >= 31) {
            return true;
        }
        return false;
    }

    @ChecksSdkIntAtLeast(api = 33)
    public final boolean B() {
        if (Build.VERSION.SDK_INT >= 33) {
            return true;
        }
        return false;
    }

    @ChecksSdkIntAtLeast(api = 34)
    public final boolean C() {
        if (Build.VERSION.SDK_INT >= 34) {
            return true;
        }
        return false;
    }

    @ChecksSdkIntAtLeast(api = 35)
    public final boolean D() {
        if (Build.VERSION.SDK_INT >= 35) {
            return true;
        }
        return false;
    }

    @ChecksSdkIntAtLeast(api = 17)
    public final boolean E() {
        return true;
    }

    @ChecksSdkIntAtLeast(api = 20)
    public final boolean F() {
        return true;
    }

    @ChecksSdkIntAtLeast(api = 23)
    public final boolean H() {
        return true;
    }

    @ChecksSdkIntAtLeast(api = 26)
    public final boolean J() {
        if (Build.VERSION.SDK_INT >= 26) {
            return true;
        }
        return false;
    }

    public final int a(@Nullable Context context, boolean z10) {
        if (context == null || z10) {
            return 0;
        }
        int intValue = ((Number) f23801f.getValue(this, f23797b[1])).intValue();
        int m10 = m();
        if (m10 <= 0) {
            Intrinsics.checkNotNullExpressionValue(L3.class.getSimpleName(), "getSimpleName(...)");
            return 0;
        }
        return (intValue * 100) / m10;
    }

    @Nullable
    public final Pair<String, String> b() {
        Context d10 = Uc.d();
        if (d10 == null) {
            return null;
        }
        if (Settings.Global.getInt(d10.getContentResolver(), "airplane_mode_on", 0) != 0) {
            return new Pair<>("d-airplane-m", "1");
        }
        return new Pair<>("d-airplane-m", MBridgeConstans.ENDCARD_URL_TYPE_PL);
    }

    @NotNull
    public final Pair<String, String> c() {
        return f23803h;
    }

    @Nullable
    public final Pair<String, String> d() {
        if (Build.VERSION.SDK_INT >= 26) {
            M();
        } else {
            K();
        }
        long j10 = f23798c;
        if (j10 != -1) {
            return new Pair<>("d-av-disk", String.valueOf(j10));
        }
        return null;
    }

    public final long e() {
        return f23798c;
    }

    @Nullable
    public final Pair<String, String> f() {
        String str;
        Context d10 = Uc.d();
        if (d10 == null) {
            return null;
        }
        Intent a10 = B2.a(d10, (BroadcastReceiver) null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        int i10 = -1;
        if (a10 != null) {
            i10 = a10.getIntExtra("status", -1);
        }
        if (i10 == 2) {
            str = "1";
        } else {
            str = MBridgeConstans.ENDCARD_URL_TYPE_PL;
        }
        return new Pair<>("d-bat-chrg", str);
    }

    @Nullable
    public final Pair<String, String> g() {
        Context d10 = Uc.d();
        Integer num = null;
        if (d10 == null) {
            return null;
        }
        Intent a10 = B2.a(d10, (BroadcastReceiver) null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (a10 != null) {
            num = Integer.valueOf((int) ((a10.getIntExtra(AppLovinEventTypes.USER_COMPLETED_LEVEL, -1) * 100) / a10.getIntExtra(TextureRenderKeys.KEY_IS_SCALE, -1)));
        }
        return new Pair<>("d-bat-lev", "" + num);
    }

    @Nullable
    public final Pair<String, String> h() {
        Context d10 = Uc.d();
        if (d10 == null) {
            return null;
        }
        Object systemService = d10.getSystemService("power");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.os.PowerManager");
        if (((PowerManager) systemService).isPowerSaveMode()) {
            return new Pair<>("d-bat-sav", "1");
        }
        return new Pair<>("d-bat-sav", MBridgeConstans.ENDCARD_URL_TYPE_PL);
    }

    @Nullable
    public final Pair<String, String> i() {
        String str;
        int i10 = Resources.getSystem().getConfiguration().uiMode & 48;
        if (i10 != 16) {
            if (i10 != 32) {
                return null;
            }
            str = "1";
        } else {
            str = MBridgeConstans.ENDCARD_URL_TYPE_PL;
        }
        return new Pair<>("d-drk-m", str);
    }

    @Nullable
    public final Pair<String, String> j() {
        String str;
        Context d10 = Uc.d();
        if (d10 == null) {
            return null;
        }
        Object systemService = d10.getSystemService("notification");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
        try {
            int currentInterruptionFilter = ((NotificationManager) systemService).getCurrentInterruptionFilter();
            if (currentInterruptionFilter != 2 && currentInterruptionFilter != 3 && currentInterruptionFilter != 4) {
                str = MBridgeConstans.ENDCARD_URL_TYPE_PL;
            } else {
                str = "1";
            }
            return new Pair<>("d-dnd", str);
        } catch (Exception unused) {
            return null;
        }
    }

    @Nullable
    public final Pair<String, String> k() {
        String language;
        ArrayList arrayList = new ArrayList();
        Context d10 = Uc.d();
        if (d10 == null) {
            return null;
        }
        Object systemService = d10.getSystemService("input_method");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        InputMethodManager inputMethodManager = (InputMethodManager) systemService;
        List<InputMethodInfo> enabledInputMethodList = inputMethodManager.getEnabledInputMethodList();
        Intrinsics.checkNotNullExpressionValue(enabledInputMethodList, "getEnabledInputMethodList(...)");
        for (InputMethodInfo inputMethodInfo : enabledInputMethodList) {
            List<InputMethodSubtype> enabledInputMethodSubtypeList = inputMethodManager.getEnabledInputMethodSubtypeList(inputMethodInfo, true);
            Intrinsics.checkNotNullExpressionValue(enabledInputMethodSubtypeList, "getEnabledInputMethodSubtypeList(...)");
            for (InputMethodSubtype inputMethodSubtype : enabledInputMethodSubtypeList) {
                if (Intrinsics.areEqual(inputMethodSubtype.getMode(), "keyboard")) {
                    String languageTag = inputMethodSubtype.getLanguageTag();
                    Intrinsics.checkNotNullExpressionValue(languageTag, "getLanguageTag(...)");
                    if (languageTag.length() > 0) {
                        language = Locale.forLanguageTag(inputMethodSubtype.getLanguageTag()).getLanguage();
                    } else {
                        language = new Locale(inputMethodSubtype.getLocale()).getLanguage();
                    }
                    Intrinsics.checkNotNull(language);
                    if (language.length() > 0) {
                        arrayList.add(language);
                    }
                }
            }
        }
        String jSONArray = new JSONArray((Collection) arrayList).toString();
        Intrinsics.checkNotNullExpressionValue(jSONArray, "toString(...)");
        return new Pair<>("d-key-lang", jSONArray);
    }

    @NotNull
    public final String l() {
        return f23804i;
    }

    public final int m() {
        return ((Number) f23800e.getValue(this, f23797b[0])).intValue();
    }

    @NotNull
    public final String n() {
        return f23805j;
    }

    public final int p() {
        String o10 = o();
        if (StringsKt.V(o10, MBridgeConstans.ENDCARD_URL_TYPE_PL, false, 2, null)) {
            return 0;
        }
        if (!StringsKt.V(o10, "1", false, 2, null)) {
            return 2;
        }
        return 1;
    }

    @NotNull
    public final String s() {
        return f23802g;
    }

    @Nullable
    public final Pair<String, String> t() {
        if (Build.VERSION.SDK_INT >= 26) {
            Q();
        } else {
            O();
        }
        String str = f23799d;
        if (str != null) {
            return new Pair<>("d-tot-disk", str);
        }
        return null;
    }

    @Nullable
    public final Pair<String, String> u() {
        Context d10 = Uc.d();
        if (d10 == null) {
            return null;
        }
        Intent a10 = B2.a(d10, (BroadcastReceiver) null, new IntentFilter("android.intent.action.HEADSET_PLUG"));
        if (a10 != null && a10.getIntExtra("state", 0) == 1) {
            return new Pair<>("d-w-h", "1");
        }
        return new Pair<>("d-w-h", MBridgeConstans.ENDCARD_URL_TYPE_PL);
    }

    @WorkerThread
    public final void v() {
        d();
        t();
        m();
    }

    @ChecksSdkIntAtLeast(api = 27)
    public final boolean w() {
        if (Build.VERSION.SDK_INT >= 27) {
            return true;
        }
        return false;
    }

    @ChecksSdkIntAtLeast(api = 28)
    public final boolean x() {
        if (Build.VERSION.SDK_INT >= 28) {
            return true;
        }
        return false;
    }

    @ChecksSdkIntAtLeast(api = 29)
    public final boolean y() {
        if (Build.VERSION.SDK_INT >= 29) {
            return true;
        }
        return false;
    }

    @ChecksSdkIntAtLeast(api = 30)
    public final boolean z() {
        if (Build.VERSION.SDK_INT >= 30) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String a(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object systemService = context.getSystemService(HintConstants.AUTOFILL_HINT_PHONE);
        TelephonyManager telephonyManager = systemService instanceof TelephonyManager ? (TelephonyManager) systemService : null;
        String networkOperatorName = telephonyManager != null ? telephonyManager.getNetworkOperatorName() : null;
        return networkOperatorName == null ? "" : networkOperatorName;
    }

    @NotNull
    public final Map<String, String> a(boolean z10) {
        HashMap hashMap = new HashMap();
        try {
            hashMap.put("os-v", f23802g);
            String BRAND = Build.BRAND;
            Intrinsics.checkNotNullExpressionValue(BRAND, "BRAND");
            hashMap.put("d-brand-name", BRAND);
            hashMap.put("d-manufacturer-name", f23804i);
            hashMap.put("d-model-name", f23805j);
            hashMap.put("d-nettype-raw", o());
            String locale = Locale.getDefault().toString();
            Intrinsics.checkNotNullExpressionValue(locale, "toString(...)");
            hashMap.put("d-localization", locale);
            String language = Locale.getDefault().getLanguage();
            Intrinsics.checkNotNullExpressionValue(language, "getLanguage(...)");
            hashMap.put("d-language", language);
            hashMap.put("d-media-volume", String.valueOf(a(Uc.d(), z10)));
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue(L3.class.getSimpleName(), "getSimpleName(...)");
        }
        return hashMap;
    }

    public static /* synthetic */ void r() {
    }

    @NotNull
    public final I3 a() {
        Runtime runtime = Runtime.getRuntime();
        long maxMemory = runtime.maxMemory();
        long freeMemory = runtime.freeMemory();
        return new I3(maxMemory, freeMemory, maxMemory - freeMemory);
    }
}
