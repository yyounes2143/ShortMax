package com.applovin.impl.sdk;

import android.app.ActivityManager;
import android.app.ApplicationExitInfo;
import android.app.ApplicationStartInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.InstallSourceInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Point;
import android.hardware.SensorManager;
import android.media.AudioDeviceInfo;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.LocaleList;
import android.os.PowerManager;
import android.os.SystemClock;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import androidx.autofill.HintConstants;
import com.applovin.impl.b6;
import com.applovin.impl.g5;
import com.applovin.impl.h7;
import com.applovin.impl.j7;
import com.applovin.impl.k7;
import com.applovin.impl.k8;
import com.applovin.impl.m5;
import com.applovin.impl.o0;
import com.applovin.impl.o4;
import com.applovin.impl.p6;
import com.applovin.impl.q0;
import com.applovin.impl.q2;
import com.applovin.impl.s4;
import com.applovin.impl.sdk.array.ArrayService;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.v;
import com.applovin.impl.v4;
import com.applovin.impl.x4;
import com.applovin.impl.z3;
import com.applovin.sdk.AppLovinBidTokenCollectionListener;
import com.applovin.sdk.AppLovinEventTypes;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.AppLovinWebViewActivity;
import com.google.ads.mediation.inmobi.InMobiNetworkValues;
import com.google.android.gms.fido.fido2.api.common.DevicePublicKeyStringDef;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import com.huawei.hms.support.api.entity.core.CommonCode;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.ttvideoengine.ITTVideoEngineEventSource;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.ss.ttvideoengine.selector.strategy.GearStrategy;
import com.ss.ttvideoengine.superresolution.SRStrategy;
import com.vungle.ads.internal.model.Cookie;
import java.io.BufferedReader;
import java.io.File;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Deque;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class l {

    /* renamed from: i  reason: collision with root package name */
    private static String f9768i;

    /* renamed from: j  reason: collision with root package name */
    private static String f9769j;

    /* renamed from: k  reason: collision with root package name */
    private static final AtomicReference f9770k = new AtomicReference();

    /* renamed from: l  reason: collision with root package name */
    private static final AtomicReference f9771l = new AtomicReference();

    /* renamed from: a  reason: collision with root package name */
    private final k f9772a;

    /* renamed from: b  reason: collision with root package name */
    private final o f9773b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f9774c;

    /* renamed from: d  reason: collision with root package name */
    private final Map f9775d;

    /* renamed from: f  reason: collision with root package name */
    private final Map f9777f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f9778g;

    /* renamed from: e  reason: collision with root package name */
    private final Object f9776e = new Object();

    /* renamed from: h  reason: collision with root package name */
    private final AtomicReference f9779h = new AtomicReference();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements m5.a {
        a() {
        }

        @Override // com.applovin.impl.m5.a
        public void a(v.a aVar) {
            l.f9770k.set(aVar);
        }
    }

    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public final String f9781a;

        /* renamed from: b  reason: collision with root package name */
        public final int f9782b;

        public b(String str, int i10) {
            this.f9781a = str;
            this.f9782b = i10;
        }
    }

    /* loaded from: classes2.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        public int f9783a = -1;

        /* renamed from: b  reason: collision with root package name */
        public int f9784b = -1;

        /* renamed from: c  reason: collision with root package name */
        public Boolean f9785c = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public l(k kVar) {
        if (kVar != null) {
            this.f9772a = kVar;
            this.f9773b = kVar.O();
            this.f9774c = k.o();
            this.f9775d = B();
            this.f9777f = A();
            return;
        }
        throw new IllegalArgumentException("No sdk specified");
    }

    private Map A() {
        PackageInfo packageInfo;
        String str;
        int i10;
        HashMap hashMap = new HashMap();
        PackageManager packageManager = this.f9774c.getPackageManager();
        ApplicationInfo applicationInfo = this.f9774c.getApplicationInfo();
        long lastModified = new File(applicationInfo.sourceDir).lastModified();
        try {
            packageInfo = packageManager.getPackageInfo(this.f9774c.getPackageName(), 0);
        } catch (Throwable unused) {
            packageInfo = null;
        }
        String a10 = a(applicationInfo.packageName, packageManager, this.f9772a);
        hashMap.put(TTVideoEngineInterface.PLAY_API_KEY_APPNAME, packageManager.getApplicationLabel(applicationInfo));
        Object obj = "";
        if (packageInfo == null) {
            str = "";
        } else {
            str = packageInfo.versionName;
        }
        hashMap.put("app_version", str);
        if (packageInfo != null) {
            i10 = packageInfo.versionCode;
        } else {
            i10 = -1;
        }
        hashMap.put("app_version_code", Integer.valueOf(i10));
        if (a10 == null) {
            a10 = "";
        }
        hashMap.put("installer_name", a10);
        hashMap.put("tg", j7.a(this.f9772a));
        hashMap.put("debug", Boolean.valueOf(k7.c(this.f9772a)));
        hashMap.put("ia", Long.valueOf(lastModified));
        hashMap.put("alts_ms", Long.valueOf(k.n()));
        hashMap.put("session_id", this.f9772a.n0().getSessionId());
        hashMap.put("j8", Boolean.valueOf(k.G0()));
        hashMap.put("ps_tpg", Boolean.valueOf(o4.d(this.f9774c)));
        hashMap.put("ps_apg", Boolean.valueOf(o4.b(this.f9774c)));
        hashMap.put("ps_capg", Boolean.valueOf(o4.c(this.f9774c)));
        hashMap.put("ps_aipg", Boolean.valueOf(o4.a(this.f9774c)));
        k kVar = this.f9772a;
        x4 x4Var = x4.f10514h;
        Long l10 = (Long) kVar.a(x4Var);
        if (l10 != null) {
            hashMap.put("ia_v2", l10);
        } else {
            this.f9772a.b(x4Var, Long.valueOf(lastModified));
        }
        hashMap.put("sdk_version", AppLovinSdk.VERSION);
        hashMap.put("omid_sdk_version", this.f9772a.e0().c());
        CollectionUtils.putStringIfValid("ad_review_sdk_version", com.applovin.impl.j.b(), hashMap);
        hashMap.put("api_did", this.f9772a.a(v4.f10241f));
        if (packageInfo != null) {
            obj = Long.valueOf(packageInfo.firstInstallTime);
        }
        hashMap.put("first_install_v3_ms", obj);
        CollectionUtils.putLongIfValid("last_launch_ms", this.f9772a.M(), hashMap);
        CollectionUtils.putLongIfValid("app_launch_count", Long.valueOf(this.f9772a.N()), hashMap);
        hashMap.put("target_sdk", Integer.valueOf(applicationInfo.targetSdkVersion));
        if (com.applovin.impl.o0.g()) {
            hashMap.put("min_sdk", Integer.valueOf(applicationInfo.minSdkVersion));
        }
        if (this.f9772a.I0()) {
            hashMap.put("unity_version", k7.a(this.f9772a.o0()));
        }
        List i11 = i();
        if (!CollectionUtils.isEmpty(i11)) {
            hashMap.put("application_start_info", i11);
        }
        List g10 = g();
        if (!CollectionUtils.isEmpty(g10)) {
            hashMap.put("application_exit_info", g10);
        }
        return hashMap;
    }

    private Map B() {
        HashMap hashMap = new HashMap(35);
        hashMap.put("api_level", Integer.valueOf(Build.VERSION.SDK_INT));
        hashMap.put("brand", Build.MANUFACTURER);
        hashMap.put("brand_name", Build.BRAND);
        hashMap.put("hardware", Build.HARDWARE);
        hashMap.put("sim", Boolean.valueOf(AppLovinSdkUtils.isEmulator()));
        hashMap.put("aida", Boolean.valueOf(com.applovin.impl.v.a()));
        hashMap.put("locale", Locale.getDefault().toString());
        hashMap.put("model", Build.MODEL);
        hashMap.put("os", Build.VERSION.RELEASE);
        hashMap.put("platform", y());
        hashMap.put("revision", Build.DEVICE);
        hashMap.put("tz_offset", Double.valueOf(C()));
        hashMap.put("gy", Boolean.valueOf(s()));
        hashMap.put("country_code", m());
        hashMap.put("mcc", w());
        hashMap.put("mnc", x());
        hashMap.put("carrier", k());
        hashMap.put("tv", Boolean.valueOf(AppLovinSdkUtils.isTv(this.f9774c)));
        hashMap.put("pc", Integer.valueOf(Runtime.getRuntime().availableProcessors()));
        hashMap.put("hdr", Q());
        hashMap.put("supported_abis", M());
        DisplayMetrics displayMetrics = this.f9774c.getResources().getDisplayMetrics();
        if (displayMetrics != null) {
            hashMap.put("adns", Float.valueOf(displayMetrics.density));
            hashMap.put("adnsd", Integer.valueOf(displayMetrics.densityDpi));
            hashMap.put("xdpi", Float.valueOf(displayMetrics.xdpi));
            hashMap.put("ydpi", Float.valueOf(displayMetrics.ydpi));
            o0.b a10 = com.applovin.impl.o0.a(this.f9774c, this.f9772a);
            if (a10 != null) {
                hashMap.put("tl_cr", Integer.valueOf(a10.c()));
                hashMap.put("tr_cr", Integer.valueOf(a10.d()));
                hashMap.put("bl_cr", Integer.valueOf(a10.a()));
                hashMap.put("br_cr", Integer.valueOf(a10.b()));
            }
        }
        hashMap.put("bt_ms", Long.valueOf(System.currentTimeMillis() - SystemClock.elapsedRealtime()));
        hashMap.put("tbalsi_ms", Long.valueOf(this.f9772a.L() - k.n()));
        CollectionUtils.putBooleanIfValid("psase", Boolean.valueOf(o4.e(this.f9774c)), hashMap);
        CollectionUtils.putStringIfValid("process_name", k7.c(this.f9774c), hashMap);
        CollectionUtils.putBooleanIfValid("is_main_process", k7.i(this.f9774c), hashMap);
        try {
            PackageInfo packageInfo = this.f9774c.getPackageManager().getPackageInfo("com.android.vending", 0);
            hashMap.put("ps_version", packageInfo.versionName);
            hashMap.put("ps_version_code", Integer.valueOf(packageInfo.versionCode));
        } catch (Throwable unused) {
            hashMap.put("ps_version", "");
            hashMap.put("ps_version_code", -1);
        }
        CollectionUtils.putBooleanIfValid("play_store_disabled", h7.a(this.f9774c), hashMap);
        a(hashMap);
        return hashMap;
    }

    private double C() {
        return Math.round((TimeZone.getDefault().getOffset(new Date().getTime()) * 10.0d) / 3600000.0d) / 10.0d;
    }

    /* JADX WARN: Removed duplicated region for block: B:115:0x020d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01ed  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private org.json.JSONArray D() {
        /*
            Method dump skipped, instructions count: 613
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.sdk.l.D():org.json.JSONArray");
    }

    public static String H() {
        return f9769j;
    }

    private Map J() {
        return k7.a(a((Map) null, true, false));
    }

    private JSONArray M() {
        if (com.applovin.impl.o0.e()) {
            return CollectionUtils.toJSONArray(Build.SUPPORTED_ABIS);
        }
        JSONArray jSONArray = new JSONArray();
        JsonUtils.putStringIfValid(jSONArray, Build.CPU_ABI);
        JsonUtils.putStringIfValid(jSONArray, Build.CPU_ABI2);
        return jSONArray;
    }

    private boolean N() {
        try {
            if (!b()) {
                if (!c()) {
                    return false;
                }
            }
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    private boolean O() {
        ConnectivityManager connectivityManager;
        if (com.applovin.impl.o0.g() && (connectivityManager = (ConnectivityManager) this.f9774c.getSystemService("connectivity")) != null) {
            try {
                if (connectivityManager.getRestrictBackgroundStatus() != 3) {
                    return false;
                }
                return true;
            } catch (Throwable th2) {
                this.f9772a.O();
                if (o.a()) {
                    this.f9772a.O().a("DataCollector", "Unable to collect constrained network info.", th2);
                }
            }
        }
        return false;
    }

    private boolean P() {
        boolean z10;
        if (this.f9774c.getResources().getConfiguration().keyboard == 2) {
            z10 = true;
        } else {
            z10 = false;
        }
        PackageManager packageManager = this.f9774c.getPackageManager();
        boolean hasSystemFeature = packageManager.hasSystemFeature("com.google.android.play.feature.HPE_EXPERIENCE");
        boolean hasSystemFeature2 = packageManager.hasSystemFeature("android.hardware.type.pc");
        if (!z10) {
            return false;
        }
        if (!hasSystemFeature && !hasSystemFeature2) {
            return false;
        }
        return true;
    }

    private Boolean Q() {
        boolean isScreenHdr;
        if (com.applovin.impl.o0.h()) {
            isScreenHdr = this.f9774c.getResources().getConfiguration().isScreenHdr();
            return Boolean.valueOf(isScreenHdr);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void S() {
        this.f9779h.set(q());
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x01a3  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x01ba  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x01d1  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x01d8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private long d() {
        /*
            Method dump skipped, instructions count: 481
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.sdk.l.d():long");
    }

    private List g() {
        ActivityManager activityManager;
        List<Object> historicalProcessExitReasons;
        int reason;
        String description;
        long timestamp;
        int status;
        int importance;
        long pss;
        long rss;
        String processName;
        int pid;
        int realUid;
        int packageUid;
        int definingUid;
        String str = null;
        if (!com.applovin.impl.o0.b()) {
            return null;
        }
        Integer num = (Integer) this.f9772a.a(v4.f10390x4);
        if (num.intValue() < 0 || (activityManager = (ActivityManager) this.f9774c.getSystemService("activity")) == null) {
            return null;
        }
        if (((Boolean) this.f9772a.a(v4.f10398y4)).booleanValue()) {
            str = this.f9774c.getPackageName();
        }
        historicalProcessExitReasons = activityManager.getHistoricalProcessExitReasons(str, 0, num.intValue());
        if (CollectionUtils.isEmpty(historicalProcessExitReasons)) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(historicalProcessExitReasons.size());
        for (Object obj : historicalProcessExitReasons) {
            ApplicationExitInfo a10 = androidx.work.impl.utils.b.a(obj);
            HashMap hashMap = new HashMap(13);
            reason = a10.getReason();
            hashMap.put("reason", Integer.valueOf(reason));
            description = a10.getDescription();
            CollectionUtils.putStringIfValid(InMobiNetworkValues.DESCRIPTION, description, hashMap);
            timestamp = a10.getTimestamp();
            hashMap.put("timestamp", Long.valueOf(timestamp));
            status = a10.getStatus();
            hashMap.put("status", Integer.valueOf(status));
            importance = a10.getImportance();
            hashMap.put("importance", Integer.valueOf(importance));
            pss = a10.getPss();
            hashMap.put("pss", Long.valueOf(pss));
            rss = a10.getRss();
            hashMap.put("rss", Long.valueOf(rss));
            processName = a10.getProcessName();
            CollectionUtils.putStringIfValid("process_name", processName, hashMap);
            pid = a10.getPid();
            hashMap.put("pid", Integer.valueOf(pid));
            realUid = a10.getRealUid();
            hashMap.put("ruid", Integer.valueOf(realUid));
            packageUid = a10.getPackageUid();
            hashMap.put("puid", Integer.valueOf(packageUid));
            definingUid = a10.getDefiningUid();
            hashMap.put("duid", Integer.valueOf(definingUid));
            String a11 = a(a10, reason);
            if (StringUtils.isValidString(a11)) {
                hashMap.put(CrashHianalyticsData.STACK_TRACE, a11);
                b(a11, reason, description);
            }
            arrayList.add(hashMap);
        }
        return arrayList;
    }

    private String h() {
        int orientation = AppLovinSdkUtils.getOrientation(this.f9774c);
        if (orientation == 1) {
            return "portrait";
        }
        if (orientation == 2) {
            return "landscape";
        }
        return DevicePublicKeyStringDef.NONE;
    }

    private List i() {
        ActivityManager activityManager;
        List<Object> historicalProcessStartReasons;
        int reason;
        int startupState;
        int startType;
        boolean wasForceStopped;
        Map startupTimestamps;
        String processName;
        int pid;
        int realUid;
        int packageUid;
        int definingUid;
        int launchMode;
        Intent intent;
        if (!com.applovin.impl.o0.c()) {
            return null;
        }
        Integer num = (Integer) this.f9772a.a(v4.f10382w4);
        if (num.intValue() >= 0 && (activityManager = (ActivityManager) this.f9774c.getSystemService("activity")) != null) {
            historicalProcessStartReasons = activityManager.getHistoricalProcessStartReasons(num.intValue());
            if (CollectionUtils.isEmpty(historicalProcessStartReasons)) {
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList(historicalProcessStartReasons.size());
            for (Object obj : historicalProcessStartReasons) {
                ApplicationStartInfo a10 = c1.a(obj);
                HashMap hashMap = new HashMap(11);
                reason = a10.getReason();
                hashMap.put("reason", Integer.valueOf(reason));
                startupState = a10.getStartupState();
                hashMap.put("startup_state", Integer.valueOf(startupState));
                startType = a10.getStartType();
                hashMap.put("start_type", Integer.valueOf(startType));
                wasForceStopped = a10.wasForceStopped();
                hashMap.put("was_force_stopped", Boolean.valueOf(wasForceStopped));
                startupTimestamps = a10.getStartupTimestamps();
                hashMap.put("startup_timestamps", startupTimestamps);
                processName = a10.getProcessName();
                CollectionUtils.putStringIfValid("process_name", processName, hashMap);
                pid = a10.getPid();
                hashMap.put("pid", Integer.valueOf(pid));
                realUid = a10.getRealUid();
                hashMap.put("ruid", Integer.valueOf(realUid));
                packageUid = a10.getPackageUid();
                hashMap.put("puid", Integer.valueOf(packageUid));
                definingUid = a10.getDefiningUid();
                hashMap.put("duid", Integer.valueOf(definingUid));
                launchMode = a10.getLaunchMode();
                hashMap.put("launch_mode", Integer.valueOf(launchMode));
                intent = a10.getIntent();
                hashMap.put(CommonCode.Resolution.HAS_RESOLUTION_FROM_APK, a(intent));
                arrayList.add(hashMap);
            }
            return arrayList;
        }
        return null;
    }

    private c j() {
        int i10;
        int i11;
        int i12;
        boolean z10;
        c cVar = new c();
        Intent registerReceiver = this.f9774c.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (registerReceiver != null) {
            i10 = registerReceiver.getIntExtra(AppLovinEventTypes.USER_COMPLETED_LEVEL, -1);
        } else {
            i10 = -1;
        }
        if (registerReceiver != null) {
            i11 = registerReceiver.getIntExtra(TextureRenderKeys.KEY_IS_SCALE, -1);
        } else {
            i11 = -1;
        }
        if (i10 > 0 && i11 > 0) {
            cVar.f9784b = (int) ((i10 / i11) * 100.0f);
        } else {
            cVar.f9784b = -1;
        }
        if (registerReceiver != null) {
            i12 = registerReceiver.getIntExtra("status", -1);
        } else {
            i12 = -1;
        }
        cVar.f9783a = i12;
        if (Settings.Global.getInt(this.f9774c.getContentResolver(), "stay_on_while_plugged_in", -1) > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        cVar.f9785c = Boolean.valueOf(z10);
        return cVar;
    }

    private String k() {
        TelephonyManager telephonyManager = (TelephonyManager) this.f9774c.getSystemService(HintConstants.AUTOFILL_HINT_PHONE);
        if (telephonyManager != null) {
            try {
                return telephonyManager.getNetworkOperatorName();
            } catch (Throwable th2) {
                if (o.a()) {
                    this.f9773b.a("DataCollector", "Unable to collect carrier", th2);
                    return "";
                }
                return "";
            }
        }
        return "";
    }

    private String m() {
        TelephonyManager telephonyManager = (TelephonyManager) this.f9774c.getSystemService(HintConstants.AUTOFILL_HINT_PHONE);
        if (telephonyManager != null) {
            return telephonyManager.getSimCountryIso().toUpperCase(Locale.ENGLISH);
        }
        return "";
    }

    private String n() {
        ActivityInfo activityInfo;
        Intent intent = new Intent(CommonConstant.ACTION.HWID_SCHEME_URL);
        intent.setData(Uri.parse("https://"));
        ResolveInfo resolveActivity = this.f9774c.getPackageManager().resolveActivity(intent, 65536);
        if (resolveActivity != null && (activityInfo = resolveActivity.activityInfo) != null) {
            f9769j = activityInfo.packageName;
        }
        return f9769j;
    }

    private String p() {
        if (!com.applovin.impl.o0.g()) {
            return null;
        }
        try {
            StringBuilder sb2 = new StringBuilder();
            LocaleList locales = this.f9774c.getResources().getConfiguration().getLocales();
            for (int i10 = 0; i10 < locales.size(); i10++) {
                sb2.append(locales.get(i10));
                sb2.append(",");
            }
            if (sb2.length() > 0 && sb2.charAt(sb2.length() - 1) == ',') {
                sb2.deleteCharAt(sb2.length() - 1);
            }
            return sb2.toString();
        } catch (Throwable unused) {
            return null;
        }
    }

    private Float q() {
        Float f10 = (Float) this.f9772a.a(v4.X3);
        Float b10 = this.f9772a.q().b();
        if (b10 != null) {
            return Float.valueOf(b10.floatValue() * f10.floatValue());
        }
        return null;
    }

    private float r() {
        try {
            return Settings.System.getFloat(this.f9774c.getContentResolver(), "font_scale");
        } catch (Settings.SettingNotFoundException e10) {
            if (o.a()) {
                this.f9773b.a("DataCollector", "Error collecting font scale", e10);
                return -1.0f;
            }
            return -1.0f;
        }
    }

    private boolean s() {
        SensorManager sensorManager = (SensorManager) this.f9774c.getSystemService("sensor");
        if (sensorManager != null && sensorManager.getDefaultSensor(4) != null) {
            return true;
        }
        return false;
    }

    private Map t() {
        HashMap hashMap = new HashMap();
        CollectionUtils.putIntegerIfValid(Cookie.IABTCF_GDPR_APPLIES, this.f9772a.s0().g(), hashMap);
        CollectionUtils.putStringIfValid("IABTCF_TCString", this.f9772a.s0().j(), hashMap);
        CollectionUtils.putStringIfValid("IABTCF_AddtlConsent", this.f9772a.s0().c(), hashMap);
        return hashMap;
    }

    private Boolean u() {
        AudioManager audioManager = (AudioManager) this.f9774c.getSystemService("audio");
        if (audioManager == null) {
            return null;
        }
        return Boolean.valueOf(audioManager.isMusicActive());
    }

    private Boolean v() {
        AudioManager audioManager = (AudioManager) this.f9774c.getSystemService("audio");
        if (audioManager == null) {
            return null;
        }
        return Boolean.valueOf(audioManager.isSpeakerphoneOn());
    }

    private String w() {
        TelephonyManager telephonyManager = (TelephonyManager) this.f9774c.getSystemService(HintConstants.AUTOFILL_HINT_PHONE);
        if (telephonyManager != null) {
            try {
                String networkOperator = telephonyManager.getNetworkOperator();
                return networkOperator.substring(0, Math.min(3, networkOperator.length()));
            } catch (Throwable th2) {
                if (o.a()) {
                    this.f9773b.a("DataCollector", "Unable to collect mobile country code", th2);
                    return "";
                }
                return "";
            }
        }
        return "";
    }

    private String x() {
        TelephonyManager telephonyManager = (TelephonyManager) this.f9774c.getSystemService(HintConstants.AUTOFILL_HINT_PHONE);
        if (telephonyManager != null) {
            try {
                String networkOperator = telephonyManager.getNetworkOperator();
                return networkOperator.substring(Math.min(3, networkOperator.length()));
            } catch (Throwable th2) {
                if (o.a()) {
                    this.f9773b.a("DataCollector", "Unable to collect mobile network code", th2);
                    return "";
                }
                return "";
            }
        }
        return "";
    }

    private String z() {
        AudioManager audioManager = (AudioManager) this.f9774c.getSystemService("audio");
        if (audioManager != null) {
            StringBuilder sb2 = new StringBuilder();
            if (com.applovin.impl.o0.f()) {
                for (AudioDeviceInfo audioDeviceInfo : audioManager.getDevices(2)) {
                    sb2.append(audioDeviceInfo.getType());
                    sb2.append(",");
                }
            } else {
                if (audioManager.isWiredHeadsetOn()) {
                    sb2.append(3);
                    sb2.append(",");
                }
                if (audioManager.isBluetoothScoOn()) {
                    sb2.append(7);
                    sb2.append(",");
                }
                if (audioManager.isBluetoothA2dpOn()) {
                    sb2.append(8);
                }
            }
            if (sb2.length() > 0 && sb2.charAt(sb2.length() - 1) == ',') {
                sb2.deleteCharAt(sb2.length() - 1);
            }
            String sb3 = sb2.toString();
            if (TextUtils.isEmpty(sb3) && o.a()) {
                this.f9773b.a("DataCollector", "No sound outputs detected");
            }
            return sb3;
        }
        return null;
    }

    public Map E() {
        String str;
        Map map = CollectionUtils.map(this.f9777f);
        ApplicationInfo applicationInfo = this.f9774c.getApplicationInfo();
        if (StringUtils.isValidString(f9768i)) {
            str = f9768i;
        } else {
            str = applicationInfo.packageName;
        }
        map.put("package_name", str);
        map.put("vz", StringUtils.toShortSHA1Hash(str));
        map.put("first_install", Boolean.valueOf(this.f9772a.D0()));
        map.put("first_install_v2", Boolean.valueOf(!this.f9772a.A0()));
        map.put("test_ads", Boolean.valueOf(this.f9778g));
        map.put("test_mode", Integer.valueOf(this.f9772a.t0().c() ? 1 : 0));
        map.put("muted", Boolean.valueOf(this.f9772a.o0().isMuted()));
        if (((Boolean) this.f9772a.a(v4.f10389x3)).booleanValue()) {
            CollectionUtils.putStringIfValid("cuid", this.f9772a.x0().e(), map);
        }
        if (((Boolean) this.f9772a.a(v4.A3)).booleanValue()) {
            map.put("compass_random_token", this.f9772a.v());
        }
        if (((Boolean) this.f9772a.a(v4.C3)).booleanValue()) {
            map.put("applovin_random_token", this.f9772a.i0());
        }
        if (((Boolean) this.f9772a.a(v4.G3)).booleanValue()) {
            map.put("art", this.f9772a.s());
        }
        map.putAll(t());
        if (this.f9772a.h0() != null) {
            CollectionUtils.putJsonArrayIfValid("ps_topics", this.f9772a.h0().a(), map);
        }
        CollectionUtils.putStringIfValid("template_browser_package_name", (String) this.f9772a.q0().a(x4.S, null), map);
        return map;
    }

    public b F() {
        return (b) f9771l.get();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String G() {
        String encodeToString = Base64.encodeToString(new JSONObject(J()).toString().getBytes(Charset.defaultCharset()), 2);
        if (((Boolean) this.f9772a.a(v4.f10222c5)).booleanValue()) {
            return s4.b(encodeToString, k7.a(this.f9772a), s4.a.a(((Integer) this.f9772a.a(v4.f10231d5)).intValue()), this.f9772a.j0(), this.f9772a);
        }
        return encodeToString;
    }

    public String I() {
        ActivityManager activityManager = (ActivityManager) this.f9774c.getSystemService("activity");
        if (activityManager == null) {
            return null;
        }
        return activityManager.getDeviceConfigurationInfo().getGlEsVersion();
    }

    public Map K() {
        return CollectionUtils.map(this.f9777f);
    }

    public Map L() {
        return CollectionUtils.map(this.f9775d);
    }

    public boolean R() {
        return this.f9778g;
    }

    public void T() {
        b6 r02 = this.f9772a.r0();
        m5 m5Var = new m5(this.f9772a, new a());
        b6.b bVar = b6.b.OTHER;
        r02.a((g5) m5Var, bVar);
        this.f9772a.r0().a((g5) new p6(this.f9772a, true, "setDeviceVolume", new Runnable() { // from class: com.applovin.impl.sdk.w1
            @Override // java.lang.Runnable
            public final void run() {
                l.this.S();
            }
        }), bVar);
    }

    public void U() {
        synchronized (this.f9776e) {
            a(this.f9775d);
        }
    }

    public Map e() {
        HashMap hashMap = new HashMap();
        hashMap.put(SRStrategy.KEY_SR_STRATEGY_CONFIG, this.f9772a.a(v4.f10289l));
        hashMap.put("sc2", this.f9772a.a(v4.f10297m));
        hashMap.put("sc3", this.f9772a.a(v4.f10305n));
        hashMap.put("server_installed_at", this.f9772a.a(v4.f10313o));
        CollectionUtils.putStringIfValid("persisted_data", (String) this.f9772a.a(x4.G), hashMap);
        return hashMap;
    }

    public v.a f() {
        List<String> list;
        v.a b10 = com.applovin.impl.v.b(this.f9774c);
        if (b10 == null) {
            return new v.a();
        }
        if (((Boolean) this.f9772a.a(v4.f10373v3)).booleanValue()) {
            if (b10.c() && !((Boolean) this.f9772a.a(v4.f10365u3)).booleanValue()) {
                b10.a("");
            }
            f9770k.set(b10);
        } else {
            b10 = new v.a();
        }
        String str = null;
        if (this.f9772a.K() != null) {
            list = this.f9772a.K().getTestDeviceAdvertisingIds();
        } else {
            list = null;
        }
        if (list != null) {
            String a10 = b10.a();
            if (StringUtils.isValidString(a10)) {
                this.f9778g = list.contains(a10);
            }
            b F = F();
            if (F != null) {
                str = F.f9781a;
            }
            if (StringUtils.isValidString(str)) {
                this.f9778g = list.contains(str) | this.f9778g;
            }
        } else {
            this.f9778g = false;
        }
        return b10;
    }

    public Map l() {
        HashMap hashMap = new HashMap();
        z3 d02 = this.f9772a.d0();
        Deque b10 = d02.b();
        if (!CollectionUtils.isEmpty(b10)) {
            hashMap.put("network_throughput_info", b10);
        }
        CollectionUtils.putLongIfValid("network_throughput_kbps", d02.a(), hashMap);
        q0.d a10 = this.f9772a.x().a();
        if (a10 != null) {
            hashMap.put("lrm_ts_ms", String.valueOf(a10.c()));
            hashMap.put("lrm_url", a10.d());
            hashMap.put("lrm_ct_ms", String.valueOf(a10.a()));
            hashMap.put("lrm_rs", String.valueOf(a10.b()));
        }
        if (hashMap.isEmpty()) {
            return null;
        }
        return hashMap;
    }

    public Map o() {
        return a(false);
    }

    public String y() {
        if (AppLovinSdkUtils.isFireOS(this.f9774c)) {
            return "fireos";
        }
        return "android";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(AppLovinBidTokenCollectionListener appLovinBidTokenCollectionListener) {
        try {
            String G = G();
            if (StringUtils.isValidString(G)) {
                this.f9772a.O();
                if (o.a()) {
                    this.f9772a.O().a("DataCollector", "Successfully retrieved bid token");
                }
                q2.a(appLovinBidTokenCollectionListener, G);
                return;
            }
            this.f9772a.O();
            if (o.a()) {
                this.f9772a.O().b("DataCollector", "Empty bid token");
            }
            q2.b(appLovinBidTokenCollectionListener, "Empty bid token");
        } catch (Throwable th2) {
            if (o.a()) {
                this.f9773b.a("DataCollector", "Failed to collect bid token", th2);
            }
            this.f9772a.E().a("DataCollector", "collectBidToken", th2);
            q2.b(appLovinBidTokenCollectionListener, "Failed to collect bid token");
        }
    }

    private boolean c() {
        String[] strArr = {"&zpz}ld&hyy&Z|yl{|zl{'hyb", "&zk`g&z|", "&zpz}ld&k`g&z|", "&zpz}ld&qk`g&z|", "&mh}h&efjhe&qk`g&z|", "&mh}h&efjhe&k`g&z|", "&zpz}ld&zm&qk`g&z|", "&zpz}ld&k`g&oh`ezhol&z|", "&mh}h&efjhe&z|"};
        for (int i10 = 0; i10 < 9; i10++) {
            if (new File(c(strArr[i10])).exists()) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(final AppLovinBidTokenCollectionListener appLovinBidTokenCollectionListener) {
        this.f9772a.r0().a((g5) new p6(this.f9772a, ((Boolean) this.f9772a.a(v4.K3)).booleanValue(), "DataCollector", new Runnable() { // from class: com.applovin.impl.sdk.v1
            @Override // java.lang.Runnable
            public final void run() {
                l.this.b(appLovinBidTokenCollectionListener);
            }
        }), b6.b.CORE);
    }

    public Map a(Map map, boolean z10, boolean z11) {
        HashMap hashMap = new HashMap(64);
        Map a10 = a(z10);
        Map E = E();
        Map l10 = l();
        Map l02 = this.f9772a.l0();
        if (z11) {
            hashMap.put("device_info", a10);
            hashMap.put("app_info", E);
            if (l10 != null) {
                hashMap.put("connection_info", l10);
            }
            if (map != null) {
                hashMap.put("ad_info", map);
            }
            if (!CollectionUtils.isEmpty(l02)) {
                hashMap.put("segments", l02);
            }
        } else {
            hashMap.putAll(a10);
            hashMap.putAll(E);
            if (l10 != null) {
                hashMap.putAll(l10);
            }
            if (map != null) {
                hashMap.putAll(map);
            }
            if (!CollectionUtils.isEmpty(l02)) {
                hashMap.putAll(l02);
            }
        }
        hashMap.put("accept", "custom_size,launch_app,video");
        hashMap.put("format", "json");
        CollectionUtils.putStringIfValid("mediation_provider", this.f9772a.V(), hashMap);
        CollectionUtils.putStringIfValid("mediation_provider_v2", this.f9772a.D(), hashMap);
        CollectionUtils.putStringIfValid("plugin_version", (String) this.f9772a.a(v4.I3), hashMap);
        CollectionUtils.putLongIfValid("tssf_ms", Long.valueOf(this.f9772a.u0()), hashMap);
        if (!((Boolean) this.f9772a.a(v4.f10205a5)).booleanValue()) {
            hashMap.put(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.f9772a.j0());
        }
        CollectionUtils.putStringIfValid("connectEventKey", this.f9772a.r(), hashMap);
        hashMap.putAll(e());
        hashMap.put("rid", UUID.randomUUID().toString());
        return hashMap;
    }

    private String c(String str) {
        int length = str.length();
        int[] iArr = {11, 12, 10, 3, 2, 1, 15, 10, 15, 14};
        char[] cArr = new char[length];
        for (int i10 = 0; i10 < length; i10++) {
            cArr[i10] = str.charAt(i10);
            for (int i11 = 9; i11 >= 0; i11--) {
                cArr[i10] = (char) (cArr[i10] ^ iArr[i11]);
            }
        }
        return new String(cArr);
    }

    private void b(final String str, final int i10, final String str2) {
        this.f9772a.r0().a((g5) new p6(this.f9772a, "reportAppExitInfoStackTrace", new Runnable() { // from class: com.applovin.impl.sdk.u1
            @Override // java.lang.Runnable
            public final void run() {
                l.this.a(str, i10, str2);
            }
        }), b6.b.OTHER);
    }

    private int b(String str) {
        try {
            return Settings.Secure.getInt(this.f9774c.getContentResolver(), str);
        } catch (Throwable unused) {
            return -1;
        }
    }

    private boolean b() {
        String str = Build.TAGS;
        return str != null && str.contains(c("lz}$blpz"));
    }

    public Map a(boolean z10) {
        Map map;
        synchronized (this.f9776e) {
            map = CollectionUtils.map(this.f9775d);
        }
        return a(map, z10);
    }

    private void a(Map map) {
        JSONArray D;
        if (((Boolean) this.f9772a.a(v4.R3)).booleanValue() && !map.containsKey("af")) {
            map.put("af", Long.valueOf(d()));
        }
        if (((Boolean) this.f9772a.a(v4.S3)).booleanValue() && !map.containsKey("font")) {
            map.put("font", Float.valueOf(r()));
        }
        if (((Boolean) this.f9772a.a(v4.Z3)).booleanValue() && k7.d(this.f9772a)) {
            k8.a(this.f9772a);
        }
        if (((Boolean) this.f9772a.a(v4.f10286k4)).booleanValue()) {
            k8.b(this.f9772a);
        }
        if (((Boolean) this.f9772a.a(v4.Y3)).booleanValue() && !map.containsKey("sua")) {
            map.put("sua", System.getProperty("http.agent"));
        }
        if (((Boolean) this.f9772a.a(v4.U3)).booleanValue() && !map.containsKey("network_restricted")) {
            map.put("network_restricted", Boolean.valueOf(O()));
        }
        map.put("is_pc", Boolean.valueOf(P()));
        if (((Boolean) this.f9772a.a(v4.f10302m4)).booleanValue()) {
            CollectionUtils.putStringIfValid("oglv", I(), map);
        }
        if (((Boolean) this.f9772a.a(v4.f10400y6)).booleanValue()) {
            CollectionUtils.putStringIfValid("dbpn", n(), map);
        }
        if (!((Boolean) this.f9772a.a(v4.f10408z6)).booleanValue() || map.containsKey("video_decoders") || (D = D()) == null || D.length() <= 0) {
            return;
        }
        map.put("video_decoders", D);
    }

    private Map a(Map map, boolean z10) {
        v.a f10;
        PowerManager powerManager;
        Map map2 = CollectionUtils.map(map);
        Point b10 = com.applovin.impl.o0.b(this.f9774c);
        map2.put("dx", Integer.valueOf(b10.x));
        map2.put("dy", Integer.valueOf(b10.y));
        DisplayMetrics displayMetrics = this.f9774c.getResources().getDisplayMetrics();
        if (displayMetrics != null) {
            map2.put("screen_size_in", Double.valueOf(Math.sqrt(Math.pow(b10.x, 2.0d) + Math.pow(b10.y, 2.0d)) / displayMetrics.xdpi));
        }
        map2.put("is_tablet", Boolean.valueOf(AppLovinSdkUtils.isTablet(this.f9774c)));
        if (((Boolean) this.f9772a.a(v4.B4)).booleanValue()) {
            String b11 = k7.b(this.f9774c);
            Map a10 = com.applovin.impl.o0.a(b11);
            if (a10 != null) {
                map2.put("display_cutout_insets", a10);
            }
            Map c10 = com.applovin.impl.o0.c(b11);
            if (c10 != null) {
                map2.put("status_bar_insets", c10);
            }
            Map b12 = com.applovin.impl.o0.b(b11);
            if (b12 != null) {
                map2.put("nav_bar_insets", b12);
            }
        }
        if (z10) {
            f10 = (v.a) f9770k.get();
            if (f10 != null) {
                T();
            } else if (k7.h()) {
                f10 = new v.a();
                map2.put("inc", Boolean.TRUE);
            } else {
                f10 = f();
            }
        } else {
            f10 = f();
        }
        String a11 = f10.a();
        if (StringUtils.isValidString(a11)) {
            map2.put("idfa", a11);
        }
        map2.put("dnt", Boolean.valueOf(f10.c()));
        map2.put("dnt_code", f10.b().b());
        b bVar = (b) f9771l.get();
        if (((Boolean) this.f9772a.a(v4.f10381w3)).booleanValue() && bVar != null) {
            map2.put("idfv", bVar.f9781a);
            map2.put("idfv_scope", Integer.valueOf(bVar.f9782b));
        }
        Boolean b13 = com.applovin.impl.p0.b().b(this.f9774c);
        if (b13 != null) {
            map2.put("huc", b13);
        }
        Boolean b14 = com.applovin.impl.p0.c().b(this.f9774c);
        if (b14 != null) {
            map2.put("aru", b14);
        }
        Boolean b15 = com.applovin.impl.p0.a().b(this.f9774c);
        if (b15 != null) {
            map2.put("dns", b15);
        }
        if (((Boolean) this.f9772a.a(v4.L3)).booleanValue()) {
            c j10 = j();
            CollectionUtils.putIntegerIfValid("act", Integer.valueOf(j10.f9783a), map2);
            CollectionUtils.putIntegerIfValid("acm", Integer.valueOf(j10.f9784b), map2);
            CollectionUtils.putBooleanIfValid("sowpie", j10.f9785c, map2);
        }
        if (((Boolean) this.f9772a.a(v4.T3)).booleanValue()) {
            map2.put("mtl", Integer.valueOf(this.f9772a.n0().getLastTrimMemoryLevel()));
        }
        if (((Boolean) this.f9772a.a(v4.W3)).booleanValue()) {
            map2.put("adr", Boolean.valueOf(N()));
        }
        Float q10 = z10 ? (Float) this.f9779h.get() : q();
        if (q10 != null) {
            map2.put(ITTVideoEngineEventSource.KEY_VOLUME, q10);
        }
        CollectionUtils.putBooleanIfValid("ma", u(), map2);
        CollectionUtils.putBooleanIfValid("spo", v(), map2);
        CollectionUtils.putBooleanIfValid("aif", Boolean.valueOf(!this.f9772a.n0().isApplicationPaused()), map2);
        CollectionUtils.putLongIfValid("af_ts_ms", Long.valueOf(this.f9772a.n0().getAppEnteredForegroundTimeMillis()), map2);
        CollectionUtils.putLongIfValid("ab_ts_ms", Long.valueOf(this.f9772a.n0().getAppEnteredBackgroundTimeMillis()), map2);
        try {
            map2.put("sb", Integer.valueOf((int) ((Settings.System.getInt(this.f9774c.getContentResolver(), "screen_brightness") / 255.0f) * 100.0f)));
        } catch (Settings.SettingNotFoundException e10) {
            if (o.a()) {
                this.f9773b.a("DataCollector", "Unable to collect screen brightness", e10);
            }
        }
        if (((Boolean) this.f9772a.a(v4.Z3)).booleanValue() && k7.d(this.f9772a)) {
            k8.a(this.f9772a);
            String a12 = k8.a();
            if (StringUtils.isValidString(a12)) {
                map2.put("ua", a12);
            }
        }
        if (((Boolean) this.f9772a.a(v4.f10286k4)).booleanValue()) {
            k8.b(this.f9772a);
            CollectionUtils.putIntegerIfValid("wvvc", Integer.valueOf(k8.d()), map2);
            CollectionUtils.putStringIfValid("wvv", k8.c(), map2);
            CollectionUtils.putStringIfValid("wvpn", k8.b(), map2);
        }
        if (((Boolean) this.f9772a.a(v4.N3)).booleanValue()) {
            try {
                map2.put("fs", Long.valueOf(Environment.getDataDirectory().getFreeSpace()));
                map2.put("tds", Long.valueOf(Environment.getDataDirectory().getTotalSpace()));
            } catch (Throwable th2) {
                map2.put("fs", -1);
                map2.put("tds", -1);
                if (o.a()) {
                    this.f9773b.a("DataCollector", "Unable to collect total & free space.", th2);
                }
            }
        }
        if (((Boolean) this.f9772a.a(v4.O3)).booleanValue()) {
            ActivityManager.MemoryInfo a13 = k7.a((ActivityManager) this.f9774c.getSystemService("activity"));
            if (a13 != null) {
                map2.put("fm", Long.valueOf(a13.availMem));
                map2.put("tm", Long.valueOf(a13.totalMem));
                map2.put("lmt", Long.valueOf(a13.threshold));
                map2.put("lm", Boolean.valueOf(a13.lowMemory));
            } else {
                map2.put("fm", -1);
                map2.put("tm", -1);
                map2.put("lmt", -1);
            }
        }
        if (((Boolean) this.f9772a.a(v4.P3)).booleanValue() && com.applovin.impl.o0.a("android.permission.READ_PHONE_STATE", this.f9774c) && com.applovin.impl.o0.g()) {
            map2.put("rat", Integer.valueOf(((TelephonyManager) this.f9774c.getSystemService(HintConstants.AUTOFILL_HINT_PHONE)).getDataNetworkType()));
        }
        if (((Boolean) this.f9772a.a(v4.M3)).booleanValue()) {
            String z11 = z();
            if (!TextUtils.isEmpty(z11)) {
                map2.put(SRStrategy.KEY_SR_OPEN, z11);
            }
        }
        map2.put("device_orientation", k7.b(this.f9774c));
        map2.put("orientation_lock", h());
        if (((Boolean) this.f9772a.a(v4.Q3)).booleanValue()) {
            map2.put("vs", Boolean.valueOf(k7.j()));
        }
        if (com.applovin.impl.o0.e() && (powerManager = (PowerManager) this.f9774c.getSystemService("power")) != null) {
            map2.put("lpm", Integer.valueOf(powerManager.isPowerSaveMode() ? 1 : 0));
        }
        if (((Boolean) this.f9772a.a(v4.f10212b4)).booleanValue() && this.f9772a.m0() != null) {
            map2.put("da", Float.valueOf(this.f9772a.m0().a()));
        }
        if (((Boolean) this.f9772a.a(v4.f10221c4)).booleanValue() && this.f9772a.m0() != null) {
            map2.put("dm", Float.valueOf(this.f9772a.m0().b()));
        }
        map2.put("mute_switch", Integer.valueOf(this.f9772a.q().c()));
        map2.put("network", com.applovin.impl.r0.g(this.f9772a));
        String p10 = p();
        if (StringUtils.isValidString(p10)) {
            map2.put("kb", p10);
        }
        ArrayService p11 = this.f9772a.p();
        if (p11.isAppHubInstalled()) {
            if (p11.getIsDirectDownloadEnabled() != null) {
                map2.put("ah_dd_enabled", p11.getIsDirectDownloadEnabled());
            }
            map2.put("ah_sdk_version_code", Long.valueOf(p11.getAppHubVersionCode()));
            map2.put("ah_random_user_token", StringUtils.emptyIfNull(p11.getRandomUserToken()));
            map2.put("ah_sdk_package_name", StringUtils.emptyIfNull(p11.getAppHubPackageName()));
        }
        return map2;
    }

    private Map a(Intent intent) {
        if (intent == null) {
            return Collections.emptyMap();
        }
        HashMap hashMap = new HashMap(5);
        hashMap.put(TextureRenderKeys.KEY_IS_ACTION, StringUtils.emptyIfNull(intent.getAction()));
        hashMap.put("data", StringUtils.emptyIfNull(intent.getDataString()));
        hashMap.put("flags", Integer.valueOf(intent.getFlags()));
        ComponentName component = intent.getComponent();
        hashMap.put("component", component != null ? component.flattenToString() : "");
        Set<String> categories = intent.getCategories();
        hashMap.put("categories", categories != null ? new ArrayList(categories) : Collections.emptyList());
        return hashMap;
    }

    private String a(ApplicationExitInfo applicationExitInfo, int i10) {
        InputStream inputStream;
        String readLine;
        if (this.f9772a.c(v4.A4).contains(Integer.toString(i10))) {
            return null;
        }
        Integer num = (Integer) this.f9772a.a(v4.f10406z4);
        if (num.intValue() <= 0) {
            return null;
        }
        try {
            inputStream = applicationExitInfo.getTraceInputStream();
        } catch (Throwable th2) {
            this.f9772a.O();
            if (o.a()) {
                this.f9772a.O().a("DataCollector", "Failed to obtain trace input stream from application exit info", th2);
            }
            this.f9772a.E().b("DataCollector", "getTraceInputStream", th2);
            inputStream = null;
        }
        if (inputStream == null) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
            for (int i11 = 0; i11 < num.intValue() && (readLine = bufferedReader.readLine()) != null; i11++) {
                sb2.append(readLine);
                sb2.append('\n');
            }
            bufferedReader.close();
        } catch (Throwable th3) {
            this.f9772a.O();
            if (o.a()) {
                this.f9772a.O().a("DataCollector", "Failed to read stack trace from input stream", th3);
            }
            this.f9772a.E().b("DataCollector", "readStackTraceFromInputStream", th3);
        }
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, int i10, String str2) {
        HashMap<String, String> hashMap = CollectionUtils.hashMap("details", str);
        CollectionUtils.putIntegerIfValid(GearStrategy.GEAR_STRATEGY_KEY_ERROR_CODE, Integer.valueOf(i10), hashMap);
        CollectionUtils.putStringIfValid("error_message", str2, hashMap);
        this.f9772a.E().d(com.applovin.impl.c2.f7667s0, hashMap);
    }

    public static void a(v.a aVar) {
        f9770k.set(aVar);
    }

    public static void a(b bVar) {
        f9771l.set(bVar);
    }

    public static void a(String str, k kVar) {
        String a10 = a(k.o().getApplicationInfo().packageName, k.o().getPackageManager(), kVar);
        List c10 = kVar.c(v4.K6);
        if (!StringUtils.isValidString(a10) || c10.contains(a10)) {
            f9768i = str;
        }
    }

    private boolean a(String str) {
        return b(str) == 1;
    }

    private static String a(String str, PackageManager packageManager, k kVar) {
        InstallSourceInfo installSourceInfo;
        String installingPackageName;
        try {
            if (((Boolean) kVar.a(v4.f10366u4)).booleanValue() && com.applovin.impl.o0.b()) {
                installSourceInfo = packageManager.getInstallSourceInfo(str);
                installingPackageName = installSourceInfo.getInstallingPackageName();
                return installingPackageName;
            }
            return packageManager.getInstallerPackageName(str);
        } catch (Throwable th2) {
            kVar.E().a("DataCollector", "getInstallerName", th2);
            return null;
        }
    }
}
