package com.bytedance.sdk.openadsdk.utils;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Environment;
import android.os.Looper;
import android.os.StatFs;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.webkit.WebBackForwardList;
import android.webkit.WebHistoryItem;
import android.webkit.WebSettings;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import androidx.recyclerview.widget.RecyclerView;
import androidx.webkit.ProxyConfig;
import com.adjust.sdk.Constants;
import com.applovin.shadow.okhttp3.internal.ws.RealWebSocket;
import com.bytedance.sdk.component.jFA.ba;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.unity3d.ads.core.data.datasource.AndroidDynamicDeviceInfoDataSource;
import com.vungle.ads.internal.signals.SignalManager;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import java.util.TimeZone;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class HyG {
    private static final byte[] BTZ;
    private static final byte[] PiB;
    private static String WcQ;
    private static String awB;
    private static final HashSet<String> dLZ;
    public static Integer oJ;
    private static final ExecutorService ZYk = Executors.newSingleThreadExecutor();
    private static volatile boolean tB = false;
    private static final AtomicInteger ex = new AtomicInteger(0);
    private static volatile String Pfn = "";

    /* renamed from: ba  reason: collision with root package name */
    private static final ReentrantLock f13397ba = new ReentrantLock();
    private static String cFZ = null;

    /* renamed from: so  reason: collision with root package name */
    private static String f13398so = null;
    private static String jFA = null;
    private static final HashSet<String> kkU = new HashSet<>(Arrays.asList("Asia/Shanghai", "Asia/Urumqi", "Asia/Chongqing", "Asia/Harbin", "Asia/Kashgar"));

    /* renamed from: com.bytedance.sdk.openadsdk.utils.HyG$2  reason: invalid class name */
    /* loaded from: classes3.dex */
    static class AnonymousClass2 implements Runnable {
        AnonymousClass2() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (TextUtils.isEmpty(HyG.Pfn)) {
                    com.bytedance.sdk.component.jFA.ba baVar = new com.bytedance.sdk.component.jFA.ba(com.bytedance.sdk.openadsdk.core.si.oJ());
                    baVar.setWebViewClient(new ba.oJ());
                    String unused = HyG.Pfn = baVar.getUserAgentString();
                }
            } catch (Exception e10) {
                com.bytedance.sdk.component.utils.QSm.oJ("TTAD.ToolUtils", "", e10);
            } catch (NoClassDefFoundError e11) {
                com.bytedance.sdk.component.utils.QSm.oJ("TTAD.ToolUtils", "", e11);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class ZYk {
        public final int ZYk;
        public final ComponentName oJ;

        public ZYk(ComponentName componentName, int i10) {
            this.oJ = componentName;
            this.ZYk = i10;
        }
    }

    /* loaded from: classes3.dex */
    public static class oJ implements Callable<String> {
        private final int oJ;

        oJ(int i10) {
            this.oJ = i10;
        }

        private String ZYk() {
            String str;
            Throwable th2;
            try {
                str = System.getProperty("http.agent");
                if (str != null) {
                    try {
                        if (!"unKnow".equals(str)) {
                            if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
                                com.bytedance.sdk.openadsdk.multipro.ex.oJ.oJ("sp_multi_ua_data", "android_system_ua", str);
                            } else {
                                com.bytedance.sdk.openadsdk.core.tB.oJ().oJ("android_system_ua", str);
                            }
                        }
                    } catch (Throwable th3) {
                        th2 = th3;
                        com.bytedance.sdk.component.utils.QSm.tB("getUA", "e:" + th2.getMessage());
                        return str;
                    }
                }
            } catch (Throwable th4) {
                str = "unKnow";
                th2 = th4;
            }
            return str;
        }

        private synchronized String tB() {
            final String[] strArr;
            strArr = new String[]{"unKnow"};
            final CountDownLatch countDownLatch = new CountDownLatch(1);
            ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.utils.HyG.oJ.1
                @Override // java.lang.Runnable
                public void run() {
                    strArr[0] = HyG.Jc();
                    String str = strArr[0];
                    countDownLatch.countDown();
                }
            });
            try {
                countDownLatch.await(2L, TimeUnit.SECONDS);
            } catch (InterruptedException e10) {
                com.bytedance.sdk.component.utils.QSm.tB("TTAD.ToolUtils", e10.getMessage());
            }
            return strArr[0];
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: oJ */
        public synchronized String call() throws Exception {
            String str;
            try {
                str = "unKnow";
                int i10 = this.oJ;
                if (i10 == 1) {
                    str = tB();
                } else if (i10 == 2) {
                    str = ZYk();
                }
            } catch (Throwable th2) {
                throw th2;
            }
            return str;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class tB {
        private static final int oJ;

        static {
            com.bytedance.sdk.component.utils.QSm.oJ("TTAD.ToolUtils", "init hasBindingAdapterPositionMethod start status = 0");
            int i10 = 2;
            try {
                int i11 = RecyclerView.ViewHolder.f1589b;
                if (RecyclerView.ViewHolder.class.getDeclaredMethod("getBindingAdapterPosition", new Class[0]) != null) {
                    i10 = 0;
                }
            } catch (ClassNotFoundException unused) {
                i10 = 1;
            } catch (NoSuchMethodException unused2) {
            }
            oJ = i10;
            com.bytedance.sdk.component.utils.QSm.oJ("TTAD.ToolUtils", "init hasBindingAdapterPositionMethod end status = ".concat(String.valueOf(i10)));
        }
    }

    static {
        HashSet<String> hashSet = new HashSet<>();
        dLZ = hashSet;
        hashSet.addAll(Arrays.asList("America/Eirunepe", "America/Rio_Branco", "America/Boa_Vista", "America/Campo_Grande", "America/Cuiaba", "America/Manaus", "America/Porto_Velho", "America/Araguaina", "America/Bahia", "America/Belem", "America/Fortaleza", "America/Maceio", "America/Recife", "America/Santarem", "America/Sao_Paulo", "America/Noronha"));
        oJ = null;
        BTZ = new byte[]{108, 111, 97, 100, 105, 110, 103};
        PiB = new byte[]{97, 114, 98, 105, 116, 114, 97, 103, 101};
    }

    public static long BTZ() {
        try {
            StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
            return statFs.getBlockCountLong() * statFs.getBlockSizeLong();
        } catch (Throwable unused) {
            return 0L;
        }
    }

    public static boolean HL() {
        if (ex.get() == 1) {
            return true;
        }
        return false;
    }

    public static String IUZ() {
        String str = WcQ;
        if (TextUtils.isEmpty(str)) {
            String str2 = new String(BTZ);
            WcQ = str2;
            return str2;
        }
        return str;
    }

    public static String Id() {
        return "https://lf-static.tiktokpangle-cdn-us.com/obj/ad-pattern-tx/renderer/package_tx.json";
    }

    static /* synthetic */ String Jc() {
        return mu();
    }

    public static String Ln() {
        String str = awB;
        if (TextUtils.isEmpty(str)) {
            String str2 = new String(PiB);
            awB = str2;
            return str2;
        }
        return str;
    }

    public static int LpP() {
        return tB.oJ;
    }

    public static boolean Pfn(int i10) {
        return i10 == 5;
    }

    public static long PiB() {
        return com.bytedance.sdk.openadsdk.core.tB.oJ().ZYk("free_internal_storage", 0L).longValue();
    }

    public static String QSm() {
        String oo2 = com.bytedance.sdk.openadsdk.core.settings.PiB.oo();
        if (!TextUtils.isEmpty(oo2)) {
            return oo2;
        }
        String Ln = com.bytedance.sdk.openadsdk.core.si.ex().Ln();
        if (TextUtils.isEmpty(Ln)) {
            return oq.oJ();
        }
        return Ln;
    }

    public static String RZ() {
        String VJm = com.bytedance.sdk.openadsdk.core.si.ex().VJm();
        if (TextUtils.isEmpty(VJm)) {
            String oJ2 = oq.oJ();
            if (!TextUtils.isEmpty(oJ2)) {
                return "https://" + oJ2 + "/service/2/dual_events/";
            }
            return VJm;
        }
        return VJm;
    }

    public static String Ry() {
        String IUZ = com.bytedance.sdk.openadsdk.core.si.ex().IUZ();
        if (TextUtils.isEmpty(IUZ)) {
            return oq.oJ();
        }
        return IUZ;
    }

    public static long WcQ() {
        return com.bytedance.sdk.openadsdk.core.tB.oJ().ZYk("total_sdcard_storage", 0L).longValue();
    }

    private static boolean XAo() {
        try {
            return "mounted".equals(Environment.getExternalStorageState());
        } catch (Throwable unused) {
            return false;
        }
    }

    public static int Xe() {
        int rawOffset = TimeZone.getDefault().getRawOffset() / Constants.ONE_HOUR;
        if (rawOffset < -12) {
            rawOffset = -12;
        }
        if (rawOffset > 12) {
            return 12;
        }
        return rawOffset;
    }

    public static boolean ZYk(Context context, String str) {
        if (context != null && !TextUtils.isEmpty(str)) {
            try {
                Intent intent = new Intent("android.intent.action.DIAL", Uri.parse("tel:" + Uri.encode(str)));
                if (!(context instanceof Activity)) {
                    intent.setFlags(268435456);
                }
                com.bytedance.sdk.component.utils.ZYk.oJ(context, intent, null);
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public static long awB() {
        try {
            if (XAo()) {
                StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
                return statFs.getBlockCount() * statFs.getBlockSize();
            }
            return 0L;
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.QSm.tB("TTAD.ToolUtils", th2.getMessage());
            return 0L;
        }
    }

    public static boolean ba(int i10) {
        return i10 == 6;
    }

    public static int cFZ(int i10) {
        if (i10 != 1) {
            if (i10 != 4) {
                if (i10 != 5) {
                    if (i10 != 6) {
                        return i10;
                    }
                    return 5;
                }
                return 4;
            }
            return 1;
        }
        return 0;
    }

    public static String cY() {
        try {
            return TimeZone.getDefault().getID();
        } catch (Exception e10) {
            com.bytedance.sdk.component.utils.QSm.tB("TTAD.ToolUtils", e10.toString());
            return "";
        }
    }

    public static int eZI() {
        return com.bytedance.sdk.openadsdk.core.tB.oJ().ZYk("is_root", -1);
    }

    public static boolean ex(int i10) {
        return i10 == 4;
    }

    public static String jFA() {
        try {
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            ((ActivityManager) com.bytedance.sdk.openadsdk.core.si.oJ().getSystemService("activity")).getMemoryInfo(memoryInfo);
            long j10 = memoryInfo.totalMem;
            if (j10 > 0) {
                return String.valueOf(j10 / RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE);
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static int jr() {
        try {
            String id2 = TimeZone.getDefault().getID();
            if (kkU.contains(id2)) {
                return 2;
            }
            if (id2 != null && id2.startsWith("Asia/")) {
                return 2;
            }
            if (id2 != null && id2.startsWith("Europe/")) {
                return 4;
            }
            if (id2 != null && id2.startsWith("America/")) {
                if (!dLZ.contains(id2)) {
                    return 5;
                }
            }
            return 3;
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.QSm.tB("TTAD.ToolUtils", th2.toString());
            return 0;
        }
    }

    public static String kkU() {
        return com.bytedance.sdk.openadsdk.core.tB.oJ().ZYk("total_memory", MBridgeConstans.ENDCARD_URL_TYPE_PL);
    }

    private static String mu() {
        try {
            WebView webView = new WebView(com.bytedance.sdk.openadsdk.core.si.oJ());
            webView.setWebViewClient(new ba.oJ());
            String userAgentString = webView.getSettings().getUserAgentString();
            if (userAgentString != null && !"unKnow".equals(userAgentString)) {
                if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
                    com.bytedance.sdk.openadsdk.multipro.ex.oJ.oJ("sp_multi_ua_data", "webview_ua", userAgentString);
                } else {
                    com.bytedance.sdk.openadsdk.core.tB.oJ().oJ("webview_ua", userAgentString);
                }
            }
            return userAgentString;
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.QSm.tB("getUA", "e:" + th2.getMessage());
            return "unKnow";
        }
    }

    public static void oJ(@NonNull com.bytedance.sdk.openadsdk.core.model.cY cYVar, @NonNull View view) {
    }

    public static String oq() {
        return String.format(Constants.BASE_URL_NO_SUB_DOMAIN_FORMAT, "log.byteoversea.com/service/2/app_log_test/");
    }

    public static boolean si() {
        try {
            if (!new File("/system/bin/su").exists()) {
                if (!new File("/system/xbin/su").exists()) {
                    return false;
                }
            }
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static synchronized String so() {
        String str;
        synchronized (HyG.class) {
            try {
                if (TextUtils.isEmpty(jFA) && com.bytedance.sdk.openadsdk.core.si.oJ() != null) {
                    PackageInfo packageInfo = com.bytedance.sdk.openadsdk.core.si.oJ().getPackageManager().getPackageInfo(ba(), 0);
                    f13398so = String.valueOf(packageInfo.versionCode);
                    jFA = packageInfo.versionName;
                }
                str = jFA;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return str;
    }

    public static String tB(int i10) {
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3 || i10 == 4) {
                    return "open_ad";
                }
                if (i10 != 7) {
                    if (i10 != 8) {
                        return "embeded_ad";
                    }
                    return "fullscreen_interstitial_ad";
                }
                return "rewarded_video";
            }
            return "interaction";
        }
        return "banner_ad";
    }

    public static String tb() {
        int i10 = -Xe();
        if (i10 >= 0) {
            return "Etc/GMT+".concat(String.valueOf(i10));
        }
        return "Etc/GMT".concat(String.valueOf(i10));
    }

    public static String Pfn() {
        return Xe.oJ();
    }

    public static synchronized String ba() {
        String str;
        Context oJ2;
        synchronized (HyG.class) {
            try {
                if (TextUtils.isEmpty(cFZ) && (oJ2 = com.bytedance.sdk.openadsdk.core.si.oJ()) != null) {
                    cFZ = oJ2.getPackageName();
                }
                str = cFZ;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return str;
    }

    public static synchronized String cFZ() {
        String str;
        synchronized (HyG.class) {
            try {
                if (TextUtils.isEmpty(f13398so) && com.bytedance.sdk.openadsdk.core.si.oJ() != null) {
                    PackageInfo packageInfo = com.bytedance.sdk.openadsdk.core.si.oJ().getPackageManager().getPackageInfo(ba(), 0);
                    f13398so = String.valueOf(packageInfo.versionCode);
                    jFA = packageInfo.versionName;
                }
                str = f13398so;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return str;
    }

    public static String dLZ() {
        return tB("MemTotal");
    }

    public static boolean ex(Context context) {
        return false;
    }

    public static void kkU(String str) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            return;
        }
        com.bytedance.sdk.component.utils.QSm.tB("You should use method '" + str + "' on the asynchronous thread,it may cause anr, please check.", new Object[0]);
    }

    public static String Pfn(String str) {
        if (TextUtils.isEmpty(str)) {
            str = com.bytedance.sdk.openadsdk.core.si.ex().LpP();
        }
        if (TextUtils.isEmpty(str)) {
            return "https://api16-access-ttp.tiktokpangle.us/service/2/app_log/";
        }
        return !str.startsWith(ProxyConfig.MATCH_HTTP) ? "https://".concat(str) : str;
    }

    public static String ex() {
        if (!TextUtils.isEmpty(Pfn)) {
            return Pfn;
        }
        com.bytedance.sdk.openadsdk.multipro.tB.oJ(com.bytedance.sdk.openadsdk.core.si.oJ());
        String oJ2 = com.bytedance.sdk.openadsdk.core.jFA.oJ("sdk_local_web_ua", (long) SignalManager.TWENTY_FOUR_HOURS_MILLIS);
        Pfn = oJ2;
        if (TextUtils.isEmpty(oJ2)) {
            ReentrantLock reentrantLock = f13397ba;
            try {
                if (reentrantLock.tryLock()) {
                    try {
                        if (TextUtils.isEmpty(Pfn)) {
                            Pfn = WebSettings.getDefaultUserAgent(com.bytedance.sdk.openadsdk.core.si.oJ());
                        }
                        com.bytedance.sdk.openadsdk.core.jFA.oJ("sdk_local_web_ua", Pfn);
                        reentrantLock.unlock();
                    } catch (Exception e10) {
                        com.bytedance.sdk.component.utils.QSm.oJ("TTAD.ToolUtils", "", e10);
                        f13397ba.unlock();
                        return Pfn;
                    } catch (NoClassDefFoundError e11) {
                        com.bytedance.sdk.component.utils.QSm.oJ("TTAD.ToolUtils", "", e11);
                        f13397ba.unlock();
                        return Pfn;
                    }
                }
            } catch (Throwable th2) {
                f13397ba.unlock();
                throw th2;
            }
        }
        return Pfn;
    }

    public static Intent oJ(Context context, String str) {
        Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(str);
        if (launchIntentForPackage == null) {
            return null;
        }
        if (!launchIntentForPackage.hasCategory("android.intent.category.LAUNCHER")) {
            launchIntentForPackage.addCategory("android.intent.category.LAUNCHER");
        }
        launchIntentForPackage.setPackage(null);
        launchIntentForPackage.addFlags(2097152);
        launchIntentForPackage.addFlags(268435456);
        return launchIntentForPackage;
    }

    public static int kkU(Context context) {
        List<ResolveInfo> queryIntentActivities;
        Integer num = oJ;
        if (num != null) {
            return num.intValue();
        }
        if (context == null || (queryIntentActivities = context.getPackageManager().queryIntentActivities(new Intent(CommonConstant.ACTION.HWID_SCHEME_URL, Uri.parse("https://www.example.com")), 0)) == null) {
            return 0;
        }
        int size = queryIntentActivities.size();
        oJ = Integer.valueOf(size);
        return size;
    }

    private static String BTZ(String str) {
        try {
            return Uri.parse(str).buildUpon().appendQueryParameter(TTVideoEngineInterface.PLAY_API_KEY_APPID, "1371").appendQueryParameter(TTVideoEngineInterface.PLAY_API_KEY_DEVICEPLATFORM, "android").appendQueryParameter(TTVideoEngineInterface.PLAY_API_KEY_VERSIONCODE, cFZ()).toString();
        } catch (Exception e10) {
            com.bytedance.sdk.component.utils.QSm.tB("TTAD.ToolUtils", e10.getMessage());
            return str;
        }
    }

    public static String ZYk(int i10) {
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        if (i10 != 5) {
                            if (i10 != 7) {
                                return "unknow";
                            }
                            return "rewarded_video_landingpage";
                        }
                        return "fullscreen_interstitial_ad";
                    }
                    return "splash_ad_landingpage";
                }
                return "interaction_landingpage";
            }
            return "banner_ad_landingpage";
        }
        return "embeded_ad_landingpage";
    }

    public static boolean ba(String str) {
        try {
            return Pattern.compile("[一-龥]").matcher(str).find();
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean jFA(String str) {
        if (com.bytedance.sdk.openadsdk.core.WcQ.Pfn()) {
            return true;
        }
        com.bytedance.sdk.component.utils.QSm.tB("You must use method '" + str + "' after initialization, please check.", new Object[0]);
        return false;
    }

    public static void tB() {
        com.bytedance.sdk.openadsdk.awB.tB.oJ("recycle_version_not_valid", false, new com.bytedance.sdk.openadsdk.awB.ZYk() { // from class: com.bytedance.sdk.openadsdk.utils.HyG.1
            @Override // com.bytedance.sdk.openadsdk.awB.ZYk
            public com.bytedance.sdk.openadsdk.awB.oJ.tB getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("method_exist", HyG.LpP());
                return com.bytedance.sdk.openadsdk.awB.oJ.ex.ZYk().oJ("recycle_version_not_valid").ZYk(jSONObject.toString());
            }
        });
    }

    public static boolean Pfn(Context context) {
        if (context == null) {
            return false;
        }
        return (context.getApplicationInfo().flags & 2) != 0;
    }

    public static String tB(String str) {
        FileReader fileReader;
        BufferedReader bufferedReader;
        String readLine;
        try {
            fileReader = new FileReader(AndroidDynamicDeviceInfoDataSource.DIRECTORY_MEM_INFO);
            try {
                bufferedReader = new BufferedReader(fileReader, 4096);
                do {
                    try {
                        readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            break;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        try {
                            com.bytedance.sdk.component.utils.QSm.tB("TTAD.ToolUtils", th.getMessage());
                            if (fileReader != null) {
                                try {
                                    fileReader.close();
                                } catch (Exception unused) {
                                }
                            }
                            return null;
                        } finally {
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (Exception unused2) {
                                }
                            }
                            if (fileReader != null) {
                                try {
                                    fileReader.close();
                                } catch (Exception unused3) {
                                }
                            }
                        }
                    }
                } while (!readLine.contains(str));
                if (readLine == null) {
                    try {
                        bufferedReader.close();
                    } catch (Exception unused4) {
                    }
                    try {
                        fileReader.close();
                    } catch (Exception unused5) {
                    }
                    return null;
                }
                String str2 = readLine.split("\\s+")[1];
                try {
                    bufferedReader.close();
                } catch (Exception unused6) {
                }
                try {
                    fileReader.close();
                } catch (Exception unused7) {
                }
                return str2;
            } catch (Throwable th3) {
                th = th3;
                bufferedReader = null;
            }
        } catch (Throwable th4) {
            th = th4;
            fileReader = null;
            bufferedReader = null;
        }
    }

    public static void jFA(Context context) {
        try {
            AtomicInteger atomicInteger = ex;
            if (atomicInteger.get() != 0) {
                return;
            }
            AccessibilityManager accessibilityManager = (AccessibilityManager) context.getSystemService("accessibility");
            boolean isEnabled = accessibilityManager.isEnabled();
            boolean isTouchExplorationEnabled = accessibilityManager.isTouchExplorationEnabled();
            if (isEnabled && isTouchExplorationEnabled) {
                atomicInteger.set(1);
                com.bytedance.sdk.openadsdk.awB.tB.oJ().tB();
                return;
            }
            atomicInteger.set(2);
        } catch (Exception unused) {
            ex.set(2);
        }
    }

    @NonNull
    public static ZYk oJ(Context context, Intent intent) {
        return new ZYk(null, 0);
    }

    public static int ba(Context context) {
        try {
            return context.getApplicationInfo().targetSdkVersion;
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.QSm.tB("TTAD.ToolUtils", th2.getMessage());
            return -1;
        }
    }

    public static boolean oJ() {
        return (com.bytedance.sdk.openadsdk.core.awB.oJ() == null || com.bytedance.sdk.openadsdk.core.awB.oJ().ex()) ? false : true;
    }

    public static void so(final String str) {
        com.bytedance.sdk.openadsdk.awB.tB.oJ();
        com.bytedance.sdk.openadsdk.awB.tB.oJ("reportMultiLog", false, new com.bytedance.sdk.openadsdk.awB.ZYk() { // from class: com.bytedance.sdk.openadsdk.utils.HyG.3
            @Override // com.bytedance.sdk.openadsdk.awB.ZYk
            public com.bytedance.sdk.openadsdk.awB.oJ.tB getLogStats() throws Exception {
                if (!HyG.tB && com.bytedance.sdk.openadsdk.core.si.ex().bgF()) {
                    boolean unused = HyG.tB = true;
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("error", str);
                    return com.bytedance.sdk.openadsdk.awB.oJ.ex.ZYk().oJ("reportMultiLog").ZYk(jSONObject.toString());
                }
                return null;
            }
        });
    }

    public static String cFZ(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (str.contains("KLLK")) {
            return str.replace("KLLK", "OPPO");
        }
        return str.contains("kllk") ? str.replace("kllk", "oppo") : "";
    }

    public static String oJ(int i10) {
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        if (i10 != 5) {
                            if (i10 != 7) {
                                return null;
                            }
                            return "rewarded_video";
                        }
                        return "fullscreen_interstitial_ad";
                    }
                    return "open_ad";
                }
                return "interaction";
            }
            return "banner_ad";
        }
        return "embeded_ad";
    }

    public static int so(Context context) {
        return cFZ(com.bytedance.sdk.component.utils.HL.oJ(context, 0L));
    }

    public static boolean so(int i10) {
        if (i10 <= 0) {
            return false;
        }
        return i10 >= 100 || new Random(System.currentTimeMillis()).nextInt(100) + 1 <= i10;
    }

    public static int ZYk(com.bytedance.sdk.openadsdk.core.model.cY cYVar) {
        if (cYVar == null) {
            return -1;
        }
        int qnr = cYVar.qnr();
        int i10 = 1;
        if (qnr != 1) {
            if (qnr != 3) {
                if (qnr != 5) {
                    i10 = 7;
                    if (qnr != 7) {
                        return qnr != 8 ? -1 : 5;
                    }
                }
                return i10;
            }
            return 4;
        }
        return 2;
    }

    public static String ZYk() {
        String ZYk2;
        String str = "unKnow";
        com.bytedance.sdk.openadsdk.multipro.tB.oJ(com.bytedance.sdk.openadsdk.core.si.oJ());
        try {
            ZYk2 = com.bytedance.sdk.openadsdk.multipro.ZYk.tB() ? com.bytedance.sdk.openadsdk.multipro.ex.oJ.ZYk("sp_multi_ua_data", "android_system_ua", "unKnow") : com.bytedance.sdk.openadsdk.core.tB.oJ().ZYk("android_system_ua", "unKnow");
        } catch (Exception unused) {
        }
        if (ZYk2 == null || "unKnow".equals(ZYk2)) {
            FutureTask futureTask = new FutureTask(new oJ(2));
            ZYk.execute(futureTask);
            str = (String) futureTask.get(500L, TimeUnit.MILLISECONDS);
            com.bytedance.sdk.component.utils.QSm.tB("getUA", " getAndroidSystemUA userAgent".concat(String.valueOf(str)));
            return str;
        }
        return ZYk2;
    }

    public static long cFZ(Context context) {
        int i10;
        try {
            i10 = context.getApplicationInfo().minSdkVersion;
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.QSm.tB("TTAD.ToolUtils", th2.getMessage());
            i10 = -1;
        }
        return i10;
    }

    public static String oJ(com.bytedance.sdk.openadsdk.core.model.cY cYVar) {
        if (cYVar == null) {
            return null;
        }
        try {
            return tB(cYVar.qnr());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String ex(String str) {
        return oJ(str, false, false);
    }

    public static boolean ex(com.bytedance.sdk.openadsdk.core.model.cY cYVar) {
        return cYVar != null && cYVar.sQ() == 3 && cYVar.rg() && (cYVar.NX() == 4 || cYVar.NX() == 5);
    }

    public static int oJ(String str) {
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1695837674:
                if (str.equals("banner_ad")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1364000502:
                if (str.equals("rewarded_video")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1263194568:
                if (str.equals("open_ad")) {
                    c10 = 2;
                    break;
                }
                break;
            case -764631662:
                if (str.equals("fullscreen_interstitial_ad")) {
                    c10 = 3;
                    break;
                }
                break;
            case 564365438:
                if (str.equals("cache_splash_ad")) {
                    c10 = 4;
                    break;
                }
                break;
            case 1844104722:
                if (str.equals("interaction")) {
                    c10 = 5;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return 2;
            case 1:
                return 7;
            case 2:
            case 4:
                return 4;
            case 3:
                return 5;
            case 5:
                return 3;
            default:
                return 1;
        }
    }

    public static String oJ(Context context) {
        String ZYk2 = com.bytedance.sdk.openadsdk.core.tB.oJ().ZYk("total_memory", (String) null);
        if (ZYk2 == null || ZYk(ZYk2) <= 0) {
            ZYk2 = tB("MemTotal");
            if (ZYk(ZYk2) <= 0) {
                ZYk2 = jFA();
            }
            com.bytedance.sdk.openadsdk.core.tB.oJ().oJ("total_memory", ZYk2);
        }
        return ZYk2;
    }

    public static String tB(@NonNull Context context) {
        try {
            return context.getResources().getConfiguration().getLocales().get(0).getLanguage();
        } catch (Exception e10) {
            com.bytedance.sdk.component.utils.QSm.tB("TTAD.ToolUtils", e10.toString());
            return "";
        }
    }

    public static long ZYk(String str) {
        try {
            return Long.parseLong(str);
        } catch (Throwable unused) {
            return 0L;
        }
    }

    public static long ZYk(Context context) {
        return com.bytedance.sdk.openadsdk.core.tB.oJ().ZYk("total_internal_storage", 0L).longValue();
    }

    public static String oJ(@NonNull String str, boolean z10, boolean z11) {
        String Ry;
        if (str != null && !str.startsWith(DomExceptionUtils.SEPARATOR)) {
            str = DomExceptionUtils.SEPARATOR.concat(str);
        }
        if (z11) {
            Ry = QSm();
        } else {
            Ry = Ry();
        }
        if (TextUtils.isEmpty(Ry)) {
            Ry = "api16-access-ttp.tiktokpangle.us";
        }
        String str2 = "https://" + Ry + str;
        if (XAo.oJ() && !z10) {
            str2 = XAo.oJ(str2);
        }
        return z10 ? BTZ(str2) : str2;
    }

    public static boolean tB(com.bytedance.sdk.openadsdk.core.model.cY cYVar) {
        if (cYVar == null) {
            return true;
        }
        int ZYk2 = com.bytedance.sdk.openadsdk.core.si.ex().ZYk(cYVar.uv());
        int tB2 = com.bytedance.sdk.component.utils.Ry.tB(com.bytedance.sdk.openadsdk.core.si.oJ());
        if (ZYk2 != 1) {
            if (ZYk2 == 2) {
                return Pfn(tB2) || ex(tB2) || ba(tB2);
            } else if (ZYk2 != 3) {
                return ZYk2 != 5 || ex(tB2) || ba(tB2);
            } else {
                return false;
            }
        }
        return ex(tB2);
    }

    public static JSONObject oJ(com.bytedance.sdk.openadsdk.core.model.cY cYVar, long j10, com.bykv.vk.openvk.oJ.oJ.oJ.oJ oJVar) {
        if (cYVar == null) {
            return new JSONObject();
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(CampaignEx.JSON_KEY_CREATIVE_ID, cYVar.edj());
            jSONObject.put("buffers_time", j10);
            com.bykv.vk.openvk.oJ.oJ.oJ.tB.ZYk ib2 = cYVar.ib();
            if (ib2 != null) {
                jSONObject.put(CampaignEx.JSON_KEY_VIDEO_SIZE, ib2.Pfn());
                jSONObject.put("video_resolution", ib2.jFA());
            }
            oJ(jSONObject, oJVar);
        } catch (JSONException e10) {
            com.bytedance.sdk.component.utils.QSm.oJ("TTAD.ToolUtils", "getVideoAction json error", e10);
        }
        return jSONObject;
    }

    private static void oJ(JSONObject jSONObject, com.bykv.vk.openvk.oJ.oJ.oJ.oJ oJVar) {
        if (jSONObject.has("video_resolution") || oJVar == null) {
            return;
        }
        try {
            jSONObject.put("video_resolution", String.format(Locale.getDefault(), "%d×%d", Integer.valueOf(oJVar.ex()), Integer.valueOf(oJVar.Pfn())));
        } catch (Throwable unused) {
        }
    }

    public static void oJ(com.bytedance.sdk.openadsdk.core.model.cY cYVar, String str) {
        if (cYVar != null) {
            try {
                String Oof = cYVar.Oof();
                if (TextUtils.isEmpty(Oof) && cYVar.TNk() != null && cYVar.TNk().tB() == 1 && !TextUtils.isEmpty(cYVar.TNk().ZYk())) {
                    Oof = cYVar.TNk().ZYk();
                }
                String str2 = Oof;
                if (TextUtils.isEmpty(str2)) {
                    return;
                }
                com.bytedance.sdk.openadsdk.core.XAo.oJ(com.bytedance.sdk.openadsdk.core.si.oJ(), str2, cYVar, oJ(str), str, false);
            } catch (Throwable unused) {
            }
        }
    }

    public static void oJ(String str, String str2, Context context) {
        int i10;
        if (TextUtils.isEmpty(str2) || !Pfn(context)) {
            return;
        }
        int length = str2.length();
        int i11 = 1;
        if (length % 3572 == 0) {
            i10 = length / 3572;
        } else {
            i10 = (length / 3572) + 1;
        }
        int i12 = 3572;
        int i13 = 0;
        while (i11 <= i10) {
            if (i12 < length) {
                Log.d(str, i10 + "-" + i11 + ":" + str2.substring(i13, i12));
                i11++;
                i13 = i12;
                i12 += 3572;
            } else {
                Log.d(str, i10 + "-" + i11 + ":" + str2.substring(i13));
                return;
            }
        }
    }

    public static void oJ(StringBuilder sb2, String str, String str2) {
        int indexOf;
        if (sb2 == null || TextUtils.isEmpty(str) || (indexOf = sb2.indexOf(str)) <= 0) {
            return;
        }
        sb2.replace(indexOf, str.length() + indexOf, str2);
    }

    public static com.bytedance.sdk.openadsdk.common.ex oJ(com.bytedance.sdk.openadsdk.core.model.cY cYVar, com.bytedance.sdk.component.jFA.ba baVar, Context context, String str) {
        int NX = cYVar.NX();
        if (cYVar.rg() && (NX == 1 || NX == 3)) {
            baVar.oJ(true, (View) new com.bytedance.sdk.openadsdk.common.tB(context));
            return new com.bytedance.sdk.openadsdk.common.ex(cYVar, baVar, str, false);
        }
        return null;
    }

    public static void oJ(JSONObject jSONObject) {
        int intValue;
        try {
            Pair<String, Long> ex2 = com.bytedance.sdk.openadsdk.core.jFA.ex("oem_store");
            int i10 = -1;
            if (ex2 != null && ((intValue = Integer.valueOf((String) ex2.first).intValue()) != -2 || System.currentTimeMillis() - ((Long) ex2.second).longValue() < com.bytedance.sdk.openadsdk.oq.oJ.oJ("oem_store_state_time", 259200000))) {
                i10 = intValue;
            }
            jSONObject.put("oem_store", i10);
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.QSm.tB("TTAD.ToolUtils", th2.getMessage());
        }
    }

    public static void oJ(com.bytedance.sdk.openadsdk.core.model.cY cYVar, com.bytedance.sdk.component.jFA.ba baVar) {
        oJ(cYVar, baVar, false);
    }

    public static void oJ(com.bytedance.sdk.openadsdk.core.model.cY cYVar, com.bytedance.sdk.component.jFA.ba baVar, boolean z10) {
        com.bytedance.sdk.openadsdk.core.model.so QSm;
        ArrayList arrayList;
        if (cYVar == null || baVar == null) {
            return;
        }
        int NX = cYVar.NX();
        if (cYVar.rg() && ((NX == 2 || NX == 3 || NX == 5) && (QSm = cYVar.QSm()) != null)) {
            List<Integer> Pfn2 = QSm.Pfn();
            ArrayList arrayList2 = new ArrayList();
            if (z10) {
                for (int i10 = 0; i10 < Pfn2.size(); i10++) {
                    arrayList2.add(Integer.valueOf(Pfn2.get(i10).intValue() - 1));
                }
                arrayList = arrayList2;
            } else {
                arrayList = Pfn2;
            }
            baVar.oJ(true, QSm.tB(), QSm.ex(), arrayList, QSm.ba(), QSm.ZYk());
        }
        int rD = cYVar.rD();
        long Sb = cYVar.Sb();
        if ((rD == 1 || rD == 2) && Sb > 0) {
            baVar.oJ(rD, Sb);
        }
    }

    public static int oJ(WebView webView) {
        if (webView == null) {
            return -1;
        }
        try {
            WebBackForwardList copyBackForwardList = webView.copyBackForwardList();
            int size = copyBackForwardList.getSize();
            ArrayList arrayList = new ArrayList();
            for (int i10 = 0; i10 < size; i10++) {
                WebHistoryItem itemAtIndex = copyBackForwardList.getItemAtIndex(i10);
                if (itemAtIndex != null) {
                    String url = itemAtIndex.getUrl();
                    if (!arrayList.contains(url)) {
                        arrayList.add(url);
                    }
                }
            }
            return arrayList.indexOf(webView.getUrl()) + 1;
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.QSm.tB("TTAD.ToolUtils", th2.toString());
            return -1;
        }
    }

    public static JSONObject oJ(AdSlot adSlot) {
        JSONObject jSONObject = new JSONObject();
        if (adSlot != null) {
            try {
                jSONObject.put("is_sb", !TextUtils.isEmpty(adSlot.getBidAdm()));
            } catch (Throwable unused) {
            }
        }
        return jSONObject;
    }
}
