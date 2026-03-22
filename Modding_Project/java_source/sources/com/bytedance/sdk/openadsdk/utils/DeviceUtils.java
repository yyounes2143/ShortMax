package com.bytedance.sdk.openadsdk.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import android.os.PowerManager;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.TextUtils;
import android.view.accessibility.AccessibilityManager;
import com.applovin.shadow.okhttp3.internal.ws.RealWebSocket;
import com.bytedance.sdk.openadsdk.core.settings.BTZ;
import com.bytedance.sdk.openadsdk.utils.cFZ;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.huawei.hms.android.SystemUtils;
import com.pgl.ssdk.ces.out.PglSSConfig;
import com.ss.ttm.player.MediaFormat;
import com.ss.ttvideoengine.ITTVideoEngineEventSource;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.unity3d.services.core.properties.MadeWithUnityDetector;
import io.bidmachine.Framework;
import java.io.IOException;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class DeviceUtils {
    private static int PiB = 0;
    private static int WcQ = 0;
    private static int awB = 0;
    private static int eZI = 0;
    private static int jFA = 0;
    public static String oJ = "";

    /* renamed from: so  reason: collision with root package name */
    private static int f13396so;
    private static volatile long ZYk = System.currentTimeMillis();
    private static volatile boolean tB = false;
    private static volatile boolean ex = false;
    private static volatile boolean Pfn = false;

    /* renamed from: ba  reason: collision with root package name */
    private static volatile boolean f13394ba = true;
    private static long cFZ = 0;
    private static String kkU = "";
    private static int dLZ = 0;
    private static final AtomicBoolean BTZ = new AtomicBoolean(false);

    /* renamed from: si  reason: collision with root package name */
    private static AtomicBoolean f13395si = new AtomicBoolean(false);

    /* loaded from: classes3.dex */
    public static class AudioInfoReceiver extends BroadcastReceiver {
        static final CopyOnWriteArrayList<com.bytedance.sdk.openadsdk.BTZ.so> oJ = new CopyOnWriteArrayList<>();

        /* JADX INFO: Access modifiers changed from: private */
        public static void ZYk(Context context) {
            if (!DeviceUtils.ex && context != null) {
                try {
                    IntentFilter intentFilter = new IntentFilter();
                    intentFilter.addAction("android.media.VOLUME_CHANGED_ACTION");
                    intentFilter.addAction("android.intent.action.HEADSET_PLUG");
                    context.registerReceiver(new AudioInfoReceiver(), intentFilter, null, com.bytedance.sdk.component.utils.jFA.oJ());
                    boolean unused = DeviceUtils.ex = true;
                } catch (Throwable unused2) {
                }
            }
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null) {
                return;
            }
            try {
                if ("android.media.VOLUME_CHANGED_ACTION".equals(intent.getAction())) {
                    if (intent.getIntExtra("android.media.EXTRA_VOLUME_STREAM_TYPE", -1) == 3) {
                        int unused = DeviceUtils.PiB = intent.getIntExtra("android.media.EXTRA_VOLUME_STREAM_VALUE", 0);
                        if (!oJ.isEmpty()) {
                            ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.utils.DeviceUtils.AudioInfoReceiver.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    Iterator<com.bytedance.sdk.openadsdk.BTZ.so> it = AudioInfoReceiver.oJ.iterator();
                                    while (it.hasNext()) {
                                        it.next().ZYk(DeviceUtils.PiB);
                                    }
                                }
                            });
                        }
                        if (DeviceUtils.jFA != 0) {
                            int unused2 = DeviceUtils.WcQ = (int) ((DeviceUtils.PiB / DeviceUtils.jFA) * 100.0d);
                        }
                    }
                } else if ("android.intent.action.HEADSET_PLUG".equals(intent.getAction())) {
                    int unused3 = DeviceUtils.awB = intent.getIntExtra("state", 0);
                }
            } catch (Exception unused4) {
            }
        }

        public static void oJ(com.bytedance.sdk.openadsdk.BTZ.so soVar) {
            if (soVar != null) {
                CopyOnWriteArrayList<com.bytedance.sdk.openadsdk.BTZ.so> copyOnWriteArrayList = oJ;
                if (copyOnWriteArrayList.contains(soVar)) {
                    return;
                }
                copyOnWriteArrayList.add(soVar);
            }
        }

        public static void ZYk(com.bytedance.sdk.openadsdk.BTZ.so soVar) {
            if (soVar == null) {
                return;
            }
            oJ.remove(soVar);
        }
    }

    /* loaded from: classes3.dex */
    static class ZYk extends BroadcastReceiver {
        ZYk() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.intent.action.SCREEN_ON".equals(intent.getAction())) {
                boolean unused = DeviceUtils.f13394ba = true;
            } else if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
                boolean unused2 = DeviceUtils.f13394ba = false;
            } else if ("android.intent.action.USER_PRESENT".equals(intent.getAction())) {
                long unused3 = DeviceUtils.ZYk = System.currentTimeMillis();
            }
        }
    }

    /* loaded from: classes3.dex */
    private static class oJ extends BroadcastReceiver {
        private oJ() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void ZYk(Context context) {
            int i10 = Build.VERSION.SDK_INT;
            if (context != null) {
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
                intentFilter.addAction("huawei.intent.action.POWER_MODE_CHANGED_ACTION");
                if (i10 >= 33) {
                    context.registerReceiver(new oJ(), intentFilter, 2);
                } else {
                    context.registerReceiver(new oJ(), intentFilter);
                }
            }
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent != null && context != null) {
                if ("android.os.action.POWER_SAVE_MODE_CHANGED".equals(intent.getAction())) {
                    DeviceUtils.oq(context);
                } else if ("huawei.intent.action.POWER_MODE_CHANGED_ACTION".equals(intent.getAction())) {
                    int i10 = 0;
                    if (intent.getIntExtra("state", 0) == 1) {
                        i10 = 1;
                    }
                    int unused = DeviceUtils.eZI = i10;
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class tB extends com.bytedance.sdk.component.so.so {
        public tB() {
            super("gaid_task");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v4, types: [com.bytedance.sdk.openadsdk.core.tB] */
        /* JADX WARN: Type inference failed for: r4v0 */
        /* JADX WARN: Type inference failed for: r4v1, types: [int] */
        /* JADX WARN: Type inference failed for: r4v3 */
        @Override // java.lang.Runnable
        public void run() {
            ?? r42;
            try {
                AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(com.bytedance.sdk.openadsdk.core.si.oJ());
                if (advertisingIdInfo != null) {
                    boolean isLimitAdTrackingEnabled = advertisingIdInfo.isLimitAdTrackingEnabled();
                    if (isLimitAdTrackingEnabled) {
                        com.bytedance.sdk.openadsdk.RZ.oJ.ZYk.oJ.oJ().oJ(1);
                    }
                    DeviceUtils.ZYk(advertisingIdInfo, isLimitAdTrackingEnabled);
                    r42 = isLimitAdTrackingEnabled;
                } else {
                    r42 = -1;
                }
                if (r42 != -1) {
                    com.bytedance.sdk.openadsdk.core.tB.oJ().oJ("limit_ad_track", r42);
                }
            } catch (IOException e10) {
                com.bytedance.sdk.openadsdk.RZ.oJ.ZYk.oJ.oJ().oJ(2);
                com.bytedance.sdk.component.utils.QSm.oJ("TTAD.DeviceUtils", "getLmtTask error : signaling connection to Google Play Services failed.", e10);
            } catch (Throwable th2) {
                com.bytedance.sdk.openadsdk.RZ.oJ.ZYk.oJ.oJ().oJ(2);
                com.bytedance.sdk.component.utils.QSm.tB("TTAD.DeviceUtils", th2.getMessage());
            }
        }
    }

    public static void BTZ() {
        try {
            int ringerMode = ((AudioManager) com.bytedance.sdk.openadsdk.core.si.oJ().getSystemService("audio")).getRingerMode();
            if (ringerMode == 2) {
                f13396so = 1;
            } else if (ringerMode == 1) {
                f13396so = 2;
            } else {
                f13396so = 0;
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int Id(Context context) {
        if (context == null) {
            return 0;
        }
        try {
            String str = Build.MANUFACTURER;
            if (!str.equalsIgnoreCase("XIAOMI") && !str.equalsIgnoreCase(SystemUtils.PRODUCT_HUAWEI)) {
                if (!((PowerManager) context.getSystemService("power")).isPowerSaveMode()) {
                    return 0;
                }
                return 1;
            }
            return cY(context);
        } catch (Throwable unused) {
            return 0;
        }
    }

    public static String Pfn(Context context) {
        if (!BTZ.get()) {
            awB(context);
        }
        return kkU;
    }

    private static void QSm(Context context) {
        try {
            AudioManager audioManager = (AudioManager) context.getSystemService("audio");
            jFA = audioManager.getStreamMaxVolume(3);
            int streamVolume = audioManager.getStreamVolume(3);
            PiB = streamVolume;
            WcQ = (int) ((streamVolume / jFA) * 100.0d);
        } catch (Throwable unused) {
        }
    }

    private static int RZ(Context context) {
        return eZI;
    }

    private static float Ry(Context context) {
        return context.getResources().getDisplayMetrics().density;
    }

    public static int ba(Context context) {
        if (!BTZ.get()) {
            awB(context);
        }
        return dLZ;
    }

    public static JSONObject cFZ(Context context) {
        return oJ(context, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x002f, code lost:
        if (android.provider.Settings.System.getInt(r4.getContentResolver(), "SmartModeStatus") == 4) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int cY(android.content.Context r4) {
        /*
            java.lang.String r0 = android.os.Build.MANUFACTURER     // Catch: java.lang.Throwable -> L33
            java.lang.String r1 = "XIAOMI"
            boolean r1 = r0.equalsIgnoreCase(r1)     // Catch: java.lang.Throwable -> L33
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L1c
            android.content.ContentResolver r4 = r4.getContentResolver()     // Catch: java.lang.Throwable -> L33
            java.lang.String r0 = "POWER_SAVE_MODE_OPEN"
            int r4 = android.provider.Settings.System.getInt(r4, r0)     // Catch: java.lang.Throwable -> L33
            if (r4 != r2) goto L19
            goto L1a
        L19:
            r2 = r3
        L1a:
            r3 = r2
            goto L32
        L1c:
            java.lang.String r1 = "HUAWEI"
            boolean r0 = r0.equalsIgnoreCase(r1)     // Catch: java.lang.Throwable -> L33
            if (r0 == 0) goto L32
            android.content.ContentResolver r4 = r4.getContentResolver()     // Catch: java.lang.Throwable -> L33
            java.lang.String r0 = "SmartModeStatus"
            int r4 = android.provider.Settings.System.getInt(r4, r0)     // Catch: java.lang.Throwable -> L33
            r0 = 4
            if (r4 != r0) goto L19
            goto L1a
        L32:
            return r3
        L33:
            r4 = -1
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.utils.DeviceUtils.cY(android.content.Context):int");
    }

    public static void dLZ() {
        com.bytedance.sdk.openadsdk.core.settings.PiB.oJ(new BTZ.oJ() { // from class: com.bytedance.sdk.openadsdk.utils.DeviceUtils.1
            @Override // com.bytedance.sdk.openadsdk.core.settings.BTZ.oJ
            public void ZYk() {
                com.bytedance.sdk.openadsdk.RZ.oJ.ZYk.oJ.oJ().oJ(true);
            }

            @Override // com.bytedance.sdk.openadsdk.core.settings.BTZ.oJ
            public void oJ() {
                com.bytedance.sdk.openadsdk.RZ.oJ.ZYk.oJ.oJ().oJ(true);
            }
        });
        Context oJ2 = com.bytedance.sdk.openadsdk.core.si.oJ();
        if (oJ2 != null) {
            com.bytedance.sdk.openadsdk.core.tB.oJ().oJ("cpu_count", kkU.oJ());
            com.bytedance.sdk.openadsdk.core.tB.oJ().oJ("cpu_max_frequency", kkU.oJ(kkU.oJ()));
            com.bytedance.sdk.openadsdk.core.tB.oJ().oJ("cpu_min_frequency", kkU.ZYk(kkU.oJ()));
            String dLZ2 = HyG.dLZ();
            if (dLZ2 != null) {
                com.bytedance.sdk.openadsdk.core.tB.oJ().oJ("total_memory", dLZ2);
            }
            com.bytedance.sdk.openadsdk.core.tB.oJ().oJ("total_internal_storage", HyG.BTZ());
            com.bytedance.sdk.openadsdk.core.tB.oJ().oJ("free_internal_storage", com.bytedance.sdk.component.utils.si.oJ());
            com.bytedance.sdk.openadsdk.core.tB.oJ().oJ("total_sdcard_storage", HyG.awB());
            com.bytedance.sdk.openadsdk.core.tB.oJ().oJ("is_root", HyG.si() ? 1 : 0);
            if (TextUtils.isEmpty(kkU())) {
                try {
                    Class.forName(MadeWithUnityDetector.UNITY_PLAYER_CLASS_NAME);
                    oJ = Framework.UNITY;
                } catch (ClassNotFoundException unused) {
                    oJ = "native";
                }
                com.bytedance.sdk.openadsdk.core.tB.oJ().oJ("framework_name", oJ);
            }
            BTZ();
            QSm(oJ2);
            eZI = Id(oJ2);
            so.oJ(oJ2);
        }
    }

    private static int eZI(Context context) {
        int i10;
        try {
            i10 = context.getApplicationContext().getResources().getConfiguration().uiMode & 48;
        } catch (Throwable unused) {
        }
        if (i10 == 32) {
            return 1;
        }
        if (i10 != 16) {
            return -1;
        }
        return 0;
    }

    public static int jFA(Context context) {
        try {
            return Settings.Global.getInt(context.getContentResolver(), "airplane_mode_on", 0) != 0 ? 1 : 0;
        } catch (Throwable unused) {
            return -1;
        }
    }

    private static void jr(Context context) {
        final Context applicationContext = context.getApplicationContext();
        if (applicationContext == null) {
            return;
        }
        context.getContentResolver().registerContentObserver(Uri.parse("content://settings/system/POWER_SAVE_MODE_OPEN"), false, new ContentObserver(null) { // from class: com.bytedance.sdk.openadsdk.utils.DeviceUtils.3
            @Override // android.database.ContentObserver
            public void onChange(boolean z10) {
                super.onChange(z10);
                DeviceUtils.oq(applicationContext);
            }
        });
    }

    public static int kkU(Context context) {
        return f13396so;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void oq(Context context) {
        if (context == null) {
            return;
        }
        final Context applicationContext = context.getApplicationContext();
        ofl.ZYk(new com.bytedance.sdk.component.so.so("DeviceUtils_get_low_power_mode") { // from class: com.bytedance.sdk.openadsdk.utils.DeviceUtils.2
            @Override // java.lang.Runnable
            public void run() {
                int unused = DeviceUtils.eZI = DeviceUtils.Id(applicationContext);
            }
        });
    }

    private static int si(Context context) {
        return awB;
    }

    public static int so(Context context) {
        if (context == null) {
            return -1;
        }
        try {
            return Settings.Secure.getInt(context.getContentResolver(), "adb_enabled", -1);
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.QSm.tB("TTAD.DeviceUtils", th2.getMessage());
            return -1;
        }
    }

    private static void awB(Context context) {
        if (context == null || !BTZ.compareAndSet(false, true)) {
            return;
        }
        try {
            if (com.bytedance.sdk.openadsdk.oq.oJ.oJ("gp_v_enable", 0) == 1) {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo("com.android.vending", 0);
                kkU = packageInfo.versionName;
                dLZ = packageInfo.versionCode;
            }
        } catch (Throwable unused) {
        }
    }

    public static int cFZ() {
        return PiB;
    }

    public static int ex(Context context) {
        if (tB(context)) {
            return 3;
        }
        return ZYk(context) ? 2 : 1;
    }

    public static int jFA() {
        return jFA;
    }

    public static String kkU() {
        if (TextUtils.isEmpty(oJ)) {
            oJ = com.bytedance.sdk.openadsdk.core.tB.oJ().ZYk("framework_name", "");
        }
        return oJ;
    }

    public static boolean tB(Context context) {
        try {
            return (context.getResources().getConfiguration().uiMode & 15) == 4;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean ZYk() {
        if (SystemClock.elapsedRealtime() - cFZ >= 20000) {
            cFZ = SystemClock.elapsedRealtime();
            try {
                PowerManager powerManager = (PowerManager) com.bytedance.sdk.openadsdk.core.si.oJ().getSystemService("power");
                if (powerManager != null) {
                    f13394ba = powerManager.isInteractive();
                }
            } catch (Throwable th2) {
                com.bytedance.sdk.component.utils.QSm.tB("TTAD.DeviceUtils", th2.getMessage());
            }
        }
        return f13394ba;
    }

    public static int so() {
        return WcQ;
    }

    public static int tB() {
        return com.bytedance.sdk.openadsdk.core.tB.oJ().ZYk("limit_ad_track", -1);
    }

    public static float Pfn() {
        int i10 = -1;
        try {
            Context oJ2 = com.bytedance.sdk.openadsdk.core.si.oJ();
            if (oJ2 != null) {
                i10 = Settings.System.getInt(oJ2.getContentResolver(), "screen_brightness", -1);
            }
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.QSm.tB("TTAD.DeviceUtils", th2.getMessage());
        }
        if (i10 < 0) {
            return -1.0f;
        }
        return Math.round((i10 / 255.0f) * 10.0f) / 10.0f;
    }

    public static int ba() {
        AccessibilityManager accessibilityManager = (AccessibilityManager) com.bytedance.sdk.openadsdk.core.si.oJ().getSystemService("accessibility");
        if (accessibilityManager == null) {
            return -1;
        }
        return accessibilityManager.isEnabled() ? 1 : 0;
    }

    public static String ex() {
        String languageTag = Locale.getDefault().toLanguageTag();
        return !TextUtils.isEmpty(languageTag) ? languageTag : "";
    }

    public static void oJ(Context context) {
        if (tB) {
            return;
        }
        try {
            ZYk zYk = new ZYk();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            context.getApplicationContext().registerReceiver(zYk, intentFilter);
            tB = true;
        } catch (Throwable unused) {
        }
    }

    public static void BTZ(Context context) {
        Context applicationContext;
        if (Pfn || context == null || (applicationContext = context.getApplicationContext()) == null) {
            return;
        }
        try {
            if (!Build.MANUFACTURER.equalsIgnoreCase("XIAOMI")) {
                oJ.ZYk(applicationContext);
            } else {
                jr(applicationContext);
            }
            Pfn = true;
        } catch (Throwable unused) {
        }
    }

    public static boolean ZYk(Context context) {
        try {
            return (context.getResources().getConfiguration().screenLayout & 15) >= 3;
        } catch (Throwable unused) {
            return false;
        }
    }

    private static void ZYk(JSONObject jSONObject) throws JSONException {
        jSONObject.put("model", Build.MODEL);
        com.bytedance.sdk.openadsdk.RZ.oJ.ZYk.oJ.oJ().oJ(jSONObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void ZYk(AdvertisingIdClient.Info info, boolean z10) {
        if (z10 || !com.bytedance.sdk.openadsdk.RZ.oJ.ZYk.oJ.oJ().tB()) {
            return;
        }
        String id2 = info.getId();
        String ZYk2 = com.bytedance.sdk.openadsdk.RZ.oJ.ZYk.oJ.oJ().ZYk();
        if (!TextUtils.isEmpty(id2)) {
            com.bytedance.sdk.openadsdk.RZ.oJ.ZYk.oJ.oJ().oJ(id2);
            com.bytedance.sdk.openadsdk.core.jFA.tB.oJ(id2);
        }
        if (ZYk2.equals(id2)) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.BTZ.oJ();
    }

    public static long oJ() {
        return ZYk;
    }

    private static void oJ(JSONObject jSONObject) throws JSONException {
        ZYk(jSONObject);
    }

    public static JSONObject oJ(Context context, boolean z10) {
        String kkU2;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("sys_adb_status", so(context));
            oJ(jSONObject);
            jSONObject.put("type", ex(context));
            jSONObject.put("os", 1);
            jSONObject.put(TTVideoEngineInterface.PLAY_API_KEY_OSVERSION, Build.VERSION.RELEASE);
            jSONObject.put("vendor", Build.MANUFACTURER);
            jSONObject.put("conn_type", HyG.so(context));
            jSONObject.put("app_set_id", com.bytedance.sdk.openadsdk.core.settings.ex.tB());
            jSONObject.put("app_set_id_scope", com.bytedance.sdk.openadsdk.core.settings.ex.ZYk());
            jSONObject.put("installed_source", com.bytedance.sdk.openadsdk.core.settings.ex.ex());
            jSONObject.put("screen_scale", cdg.ba(context));
            jSONObject.put("density", cdg.so(context));
            jSONObject.put("screen_width", cdg.tB(context));
            jSONObject.put("screen_height", cdg.Pfn(context));
            jSONObject.put("sec_did", com.bytedance.sdk.openadsdk.core.jFA.tB.ba());
            com.bytedance.sdk.openadsdk.core.settings.ba ex2 = com.bytedance.sdk.openadsdk.core.si.ex();
            if (ex2.tb("boot")) {
                jSONObject.put("boot", String.valueOf(System.currentTimeMillis() - SystemClock.elapsedRealtime()));
                jSONObject.put("power_on_time", String.valueOf(SystemClock.elapsedRealtime()));
            }
            jSONObject.put("uuid", com.bytedance.sdk.openadsdk.core.BTZ.tB(context));
            jSONObject.put("rom_version", IUZ.oJ());
            jSONObject.put("sys_compiling_time", com.bytedance.sdk.openadsdk.core.BTZ.ZYk(context));
            jSONObject.put("timezone", HyG.tb());
            jSONObject.put(MediaFormat.KEY_LANGUAGE, com.bytedance.sdk.openadsdk.core.BTZ.ZYk());
            jSONObject.put("carrier_name", LpP.oJ());
            if (z10) {
                kkU2 = HyG.oJ(context);
            } else {
                kkU2 = HyG.kkU();
            }
            jSONObject.put("total_mem", String.valueOf(Long.parseLong(kkU2) * RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE));
            jSONObject.put("locale_language", ex());
            jSONObject.put("screen_bright", Math.ceil(Pfn() * 10.0f) / 10.0d);
            jSONObject.put("is_screen_off", 1 ^ (ZYk() ? 1 : 0));
            jSONObject.put("cpu_num", kkU.ZYk());
            jSONObject.put("cpu_max_freq", kkU.tB());
            jSONObject.put("cpu_min_freq", kkU.ex());
            cFZ.oJ oJ2 = cFZ.oJ();
            jSONObject.put("battery_remaining_pct", (int) oJ2.ZYk);
            jSONObject.put("is_charging", oJ2.oJ);
            jSONObject.put("total_space", String.valueOf(HyG.ZYk(context)));
            jSONObject.put("free_space_in", String.valueOf(HyG.PiB()));
            jSONObject.put("sdcard_size", String.valueOf(HyG.WcQ()));
            jSONObject.put("rooted", HyG.eZI());
            jSONObject.put("enable_assisted_clicking", ba());
            jSONObject.put("force_language", com.bytedance.sdk.component.utils.cY.oJ(context, "tt_choose_language"));
            jSONObject.put("airplane", jFA(context));
            jSONObject.put("darkmode", eZI(context));
            jSONObject.put("headset", si(context));
            jSONObject.put("ringmute", kkU(context));
            jSONObject.put("screenscale", Ry(context));
            jSONObject.put(ITTVideoEngineEventSource.KEY_VOLUME, so());
            jSONObject.put("low_power_mode", RZ(context));
            jSONObject.put("enable_draw_feed", HyG.LpP());
            if (z10) {
                so.oJ(jSONObject, context);
                jSONObject.put("gp_v_name", Pfn(context));
                jSONObject.put("gp_v_code", ba(context));
            }
            if (ex2.tb("mnc")) {
                jSONObject.put("mnc", LpP.tB());
            }
            if (ex2.tb("mcc")) {
                jSONObject.put("mcc", LpP.ZYk());
            }
            jSONObject.put("act", com.bytedance.sdk.openadsdk.core.act.oJ.ZYk(context));
            jSONObject.put("act_event", com.bytedance.sdk.openadsdk.core.act.oJ.oJ());
            String tB2 = com.bytedance.sdk.openadsdk.core.jFA.tB.tB();
            com.bytedance.sdk.openadsdk.core.jFA.tB.ex();
            if (!TextUtils.isEmpty(tB2)) {
                jSONObject.put("sof_chara", tB2);
            }
            String ZYk2 = com.bytedance.sdk.openadsdk.multipro.ex.ex.ZYk("ttopenadsdk", PglSSConfig.CUSTOMINFO_KEY_IPV6, "");
            if (!ZYk2.isEmpty()) {
                jSONObject.put("ipv6", ZYk2);
            }
            jSONObject.put("is_multi", com.bytedance.sdk.openadsdk.multipro.ZYk.tB());
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public static void dLZ(Context context) {
        AudioInfoReceiver.ZYk(context);
    }
}
