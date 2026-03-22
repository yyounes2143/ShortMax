package com.applovin.impl;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.graphics.Color;
import android.graphics.Point;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.os.Process;
import android.os.StrictMode;
import android.os.VibrationEffect;
import android.os.Vibrator;
import android.provider.Settings;
import android.text.TextUtils;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.webkit.WebView;
import android.widget.Toast;
import com.applovin.impl.sdk.AppLovinAdBase;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.AppLovinUtils;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.MaxNetworkResponseInfo;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import com.applovin.sdk.AppLovinSdkSettings;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.AppLovinWebViewActivity;
import com.huawei.hms.framework.common.ContainerUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.ss.ttvideoengine.superresolution.SRStrategy;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.net.HttpURLConnection;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.TreeMap;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public abstract class k7 {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f8244a = {60, 60, 24, 7, 4, 12};

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f8245b = {" second", " minute", " hour", " day", " week", " month"};

    /* renamed from: c  reason: collision with root package name */
    private static final String[] f8246c = {"s", "m", "h", "d", SRStrategy.MEDIAINFO_KEY_WIDTH, "mth"};

    /* renamed from: d  reason: collision with root package name */
    private static final DecimalFormat f8247d = new DecimalFormat();

    /* renamed from: e  reason: collision with root package name */
    private static final Random f8248e = new Random();

    /* renamed from: f  reason: collision with root package name */
    private static Boolean f8249f;

    /* renamed from: g  reason: collision with root package name */
    private static Boolean f8250g;

    /* renamed from: h  reason: collision with root package name */
    private static String f8251h;

    /* renamed from: i  reason: collision with root package name */
    private static Boolean f8252i;

    /* loaded from: classes2.dex */
    class a implements Comparator {
        a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(String str, String str2) {
            return str.compareToIgnoreCase(str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b extends r4 {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f8253a;

        b(String str) {
            this.f8253a = str;
        }

        @Override // com.applovin.impl.r4
        protected Map a() {
            return CollectionUtils.hashMap("name", "Utils:" + this.f8253a);
        }
    }

    public static double a(long j10) {
        return j10 / 1024.0d;
    }

    public static float b(float f10) {
        return f10 * 1000.0f;
    }

    public static double d(long j10) {
        return j10 / 1000.0d;
    }

    public static long e(String str) {
        if (StringUtils.isValidString(str)) {
            try {
                return Color.parseColor(str);
            } catch (Throwable unused) {
                return Long.MAX_VALUE;
            }
        }
        return Long.MAX_VALUE;
    }

    public static String f(String str) {
        if (str != null && str.length() > 4) {
            return str.substring(str.length() - 4);
        }
        return "NOKEY";
    }

    public static boolean g() {
        ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
        try {
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
        } catch (Throwable th2) {
            com.applovin.impl.sdk.o.c("Utils", "Exception thrown while getting memory state.", th2);
        }
        int i10 = runningAppProcessInfo.importance;
        return i10 == 100 || i10 == 200;
    }

    public static boolean h() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    public static boolean i() {
        return !a("com.applovin.sdk.AppLovinSdk");
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x000a A[Catch: all -> 0x002e, TryCatch #0 {all -> 0x002e, blocks: (B:2:0x0000, B:3:0x0004, B:5:0x000a, B:7:0x001d, B:9:0x0025), top: B:19:0x0000 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean j() {
        /*
            java.util.Enumeration r0 = java.net.NetworkInterface.getNetworkInterfaces()     // Catch: java.lang.Throwable -> L2e
        L4:
            boolean r1 = r0.hasMoreElements()     // Catch: java.lang.Throwable -> L2e
            if (r1 == 0) goto L39
            java.lang.Object r1 = r0.nextElement()     // Catch: java.lang.Throwable -> L2e
            java.net.NetworkInterface r1 = (java.net.NetworkInterface) r1     // Catch: java.lang.Throwable -> L2e
            java.lang.String r1 = r1.getDisplayName()     // Catch: java.lang.Throwable -> L2e
            java.lang.String r2 = "tun"
            boolean r2 = r1.contains(r2)     // Catch: java.lang.Throwable -> L2e
            if (r2 != 0) goto L30
            java.lang.String r2 = "ppp"
            boolean r2 = r1.contains(r2)     // Catch: java.lang.Throwable -> L2e
            if (r2 != 0) goto L30
            java.lang.String r2 = "ipsec"
            boolean r1 = r1.contains(r2)     // Catch: java.lang.Throwable -> L2e
            if (r1 == 0) goto L4
            goto L30
        L2e:
            r0 = move-exception
            goto L32
        L30:
            r0 = 1
            return r0
        L32:
            java.lang.String r1 = "Utils"
            java.lang.String r2 = "Unable to check Network Interfaces"
            com.applovin.impl.sdk.o.c(r1, r2, r0)
        L39:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.k7.j():boolean");
    }

    public static boolean k() {
        Context o10 = com.applovin.impl.sdk.k.o();
        if (o10 != null) {
            return y.a(o10).a("applovin.sdk.verbose_logging");
        }
        return false;
    }

    public static boolean l(Context context) {
        if (context == null) {
            return false;
        }
        try {
            context.getResources();
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean m(Context context) {
        if (context == null) {
            context = com.applovin.impl.sdk.k.o();
        }
        if (context == null) {
            return false;
        }
        return y.a(context).a("applovin.sdk.verbose_logging", false);
    }

    public static int a(int i10, int i11) {
        return (i10 < 0 || i10 > 100) ? i11 : i10;
    }

    public static long b(long j10) {
        return j10 * 8;
    }

    public static void c() {
    }

    public static int d(int i10) {
        return i10 * 1024;
    }

    public static boolean h(Context context) {
        if (f8249f == null) {
            f8249f = Boolean.valueOf("com.applovin.apps.dspdemo".equals(context.getPackageName()));
        }
        return f8249f.booleanValue();
    }

    public static Boolean i(Context context) {
        if (context == null) {
            return null;
        }
        Boolean bool = f8252i;
        if (bool != null) {
            return bool;
        }
        try {
            String a10 = y.a(context).a();
            String c10 = c(context);
            if (c10 == null) {
                return null;
            }
            if (c10.equals(a10)) {
                Boolean bool2 = Boolean.TRUE;
                f8252i = bool2;
                return bool2;
            } else if (TextUtils.isEmpty(a10) && c10.equals(context.getPackageName())) {
                Boolean bool3 = Boolean.TRUE;
                f8252i = bool3;
                return bool3;
            } else {
                Boolean bool4 = Boolean.FALSE;
                f8252i = bool4;
                return bool4;
            }
        } catch (Throwable th2) {
            com.applovin.impl.sdk.o.b("Utils", "Unable to determine if the current process is the main process", th2);
            return null;
        }
    }

    public static void a() {
    }

    public static void b() {
    }

    public static int c(int i10) {
        return a(i10, 95);
    }

    public static int d(Context context) {
        WindowManager f10 = f(context);
        if (f10 == null) {
            return 0;
        }
        return f10.getDefaultDisplay().getRotation();
    }

    public static String e() {
        Field[] fields;
        try {
            for (Field field : Build.VERSION_CODES.class.getFields()) {
                if (field.getInt(null) == Build.VERSION.SDK_INT) {
                    return field.getName();
                }
            }
            return "";
        } catch (Throwable th2) {
            com.applovin.impl.sdk.o.c("Utils", "Unable to get Android SDK codename", th2);
            return "";
        }
    }

    public static boolean k(Context context) {
        String packageName = context.getPackageName();
        return "com.revolverolver.fliptrickster".equals(packageName) || "com.mindstormstudios.idlemakeover".equals(packageName);
    }

    public static boolean a(long j10, long j11) {
        return (j10 & j11) != 0;
    }

    public static void b(String str, String str2) {
        if (str == null || str.length() <= d(8)) {
            return;
        }
        com.applovin.impl.sdk.o.j(str2, "Provided custom data parameter longer than supported (" + str.length() + " bytes, " + d(8) + " maximum)");
    }

    public static long c(float f10) {
        return a(b(f10));
    }

    public static WindowManager f(Context context) {
        StrictMode.VmPolicy vmPolicy = StrictMode.getVmPolicy();
        StrictMode.setVmPolicy(StrictMode.VmPolicy.LAX);
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        StrictMode.setVmPolicy(vmPolicy);
        return windowManager;
    }

    public static String a(Map map, boolean z10) {
        if (map != null && !map.isEmpty()) {
            StringBuilder sb2 = new StringBuilder();
            if (z10) {
                TreeMap treeMap = new TreeMap(new a());
                treeMap.putAll(map);
                map = treeMap;
            }
            for (Map.Entry entry : map.entrySet()) {
                if (sb2.length() > 0) {
                    sb2.append(ContainerUtils.FIELD_DELIMITER);
                }
                Object value = entry.getValue();
                if (value instanceof String) {
                    String str = (String) value;
                    if (str.contains(ContainerUtils.FIELD_DELIMITER)) {
                        value = str.replace(ContainerUtils.FIELD_DELIMITER, "%26");
                    }
                }
                sb2.append(entry.getKey());
                sb2.append('=');
                sb2.append(value);
            }
            return sb2.toString();
        }
        return "";
    }

    public static double c(long j10) {
        return a(b(j10));
    }

    public static String d() {
        try {
            return Build.VERSION.RELEASE + " (" + e() + " - API " + Build.VERSION.SDK_INT + ")";
        } catch (Throwable th2) {
            com.applovin.impl.sdk.o.c("Utils", "Unable to get Android OS info", th2);
            return "";
        }
    }

    public static int g(String str) {
        String[] split;
        int i10 = 0;
        for (String str2 : str.replaceAll("-beta", ".").split("\\.")) {
            if (str2.length() > 2) {
                com.applovin.impl.sdk.o.h("Utils", "Version number components cannot be longer than two digits -> " + str);
                return i10;
            }
            i10 = (i10 * 100) + Integer.parseInt(str2);
        }
        return !str.contains("-beta") ? (i10 * 100) + 99 : i10;
    }

    public static String b(Class cls, String str) {
        try {
            Field a10 = a(cls, str);
            a10.setAccessible(true);
            return (String) a10.get(null);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static boolean c(com.applovin.impl.sdk.k kVar) {
        String str = kVar.o0().getExtraParameters().get("run_in_release_mode");
        return ((StringUtils.isValidString(str) && Boolean.parseBoolean(str)) || (com.applovin.impl.sdk.k.o().getApplicationInfo().flags & 2) == 0) ? false : true;
    }

    public static byte[] d(byte[] bArr) {
        if (bArr == null || bArr.length == 0 || !b(bArr)) {
            return bArr;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        GZIPInputStream gZIPInputStream = new GZIPInputStream(new ByteArrayInputStream(bArr));
        byte[] bArr2 = new byte[1024];
        while (true) {
            int read = gZIPInputStream.read(bArr2);
            if (read > 0) {
                byteArrayOutputStream.write(bArr2, 0, read);
            } else {
                gZIPInputStream.close();
                byteArrayOutputStream.close();
                return byteArrayOutputStream.toByteArray();
            }
        }
    }

    public static boolean e(com.applovin.impl.sdk.k kVar) {
        if (((Boolean) kVar.a(v4.f10210b2)).booleanValue()) {
            return kVar.o0().isMuted();
        }
        return ((Boolean) kVar.a(v4.Z1)).booleanValue();
    }

    public static int f() {
        int systemBars;
        int displayCutout;
        if (o0.b()) {
            systemBars = WindowInsets.Type.systemBars();
            displayCutout = WindowInsets.Type.displayCutout();
            return systemBars | displayCutout;
        }
        return 0;
    }

    public static boolean j(Context context) {
        if (f8250g == null) {
            f8250g = Boolean.valueOf("com.applovin.apps.playables".equals(context.getPackageName()));
        }
        return f8250g.booleanValue();
    }

    public static void b(AppLovinAd appLovinAd, com.applovin.impl.sdk.k kVar) {
        if (appLovinAd instanceof AppLovinAdBase) {
            AppLovinAdBase appLovinAdBase = (AppLovinAdBase) appLovinAd;
            String j02 = kVar.j0();
            String j03 = appLovinAdBase.getSdk().j0();
            if (j02.equals(j03)) {
                return;
            }
            String str = "Ad was loaded from sdk with key: " + j03 + ", but is being rendered from sdk with key: " + j02;
            com.applovin.impl.sdk.o.h("AppLovinAd", str);
            a(str, appLovinAdBase, "AppLovinAd", kVar);
        }
    }

    public static long c(byte[] bArr) {
        return a(bArr, 0);
    }

    public static String c(String str) {
        return str.replace("ALPlayableAnalytics.trackEvent = ", "ALPlayableAnalytics.trackEvent = function (eventName) {const SDK_URL = 'applovin://com.applovin.sdk/playable_event';if (!Object.values(ALPlayableEvent).includes(eventName)) {var aTag = document.createElement('a');aTag.setAttribute('href', SDK_URL + '?success=0&type=' + encodeURIComponent(eventName));aTag.innerHTML = 'empty';aTag.click();return;}var aTag = document.createElement('a');aTag.setAttribute('href', SDK_URL + '?success=1&type=' + encodeURIComponent(eventName));aTag.innerHTML = 'empty';aTag.click();}; ALPlayableAnalytics.trackEvent_ignore = ");
    }

    public static String c(Context context) {
        int myPid;
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        if (context == null) {
            return null;
        }
        if (StringUtils.isValidString(f8251h)) {
            return f8251h;
        }
        try {
            myPid = Process.myPid();
            runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        } catch (Throwable th2) {
            com.applovin.impl.sdk.o.b("Utils", "Unable to determine process name", th2);
        }
        if (runningAppProcesses == null) {
            com.applovin.impl.sdk.o.c("Utils", "No running app processes. Unable to determine process name");
            return null;
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (myPid == runningAppProcessInfo.pid) {
                String str = runningAppProcessInfo.processName;
                f8251h = str;
                return str;
            }
        }
        return null;
    }

    public static Context e(Context context) {
        return l(context) ? context : com.applovin.impl.sdk.k.o();
    }

    public static boolean g(Context context) {
        return y.a(context).a("applovin.sdk.is_test_environment");
    }

    public static String b(Context context) {
        Point b10 = o0.b(context);
        int i10 = b10.x;
        int i11 = b10.y;
        int d10 = d(context);
        if ((i10 > i11 && (d10 == 0 || d10 == 2)) || (i11 > i10 && (d10 == 1 || d10 == 3))) {
            return a(d10);
        }
        return b(d10);
    }

    public static String d(String str) {
        return a(str, str.split("\\.").length);
    }

    public static boolean d(com.applovin.impl.sdk.k kVar) {
        String str = kVar.o0().getExtraParameters().get("user_agent_collection_enabled");
        if (StringUtils.isValidString(str)) {
            return Boolean.parseBoolean(str);
        }
        return true;
    }

    public static Map a(Map map) {
        HashMap hashMap = new HashMap();
        if (map != null && !map.isEmpty()) {
            for (Map.Entry entry : map.entrySet()) {
                hashMap.put((String) entry.getKey(), String.valueOf(entry.getValue()));
            }
        }
        return hashMap;
    }

    private static String b(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        return "unknown";
                    }
                    return "landscape_left";
                }
                return "portrait_upside_down";
            }
            return "landscape_right";
        }
        return "portrait";
    }

    public static boolean a(String str, List list) {
        return StringUtils.startsWithAtLeastOnePrefix(str, list);
    }

    public static long a(com.applovin.impl.sdk.k kVar) {
        long longValue = ((Long) kVar.a(v4.f10383w5)).longValue();
        long longValue2 = ((Long) kVar.a(v4.f10391x5)).longValue();
        long currentTimeMillis = System.currentTimeMillis();
        return (longValue <= 0 || longValue2 <= 0) ? currentTimeMillis : currentTimeMillis + (longValue - longValue2);
    }

    public static void a(String str, String str2, Map map) {
        if (map.containsKey(str)) {
            map.put(str2, map.get(str));
            map.remove(str);
        }
    }

    private static long b(String str) {
        if (str == null) {
            return 0L;
        }
        return new File(str).length();
    }

    public static boolean b(byte[] bArr) {
        return bArr.length >= 2 && bArr[0] == 31 && bArr[1] == -117;
    }

    public static boolean b(com.applovin.impl.sdk.k kVar) {
        try {
            JSONObject.wrap(JSONObject.NULL);
            return true;
        } catch (Throwable th2) {
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                kVar.O().d("Utils", "Failed to wrap JSONObject with exception", th2);
                return false;
            }
            return false;
        }
    }

    private static long a(float f10) {
        return Math.round(f10);
    }

    public static boolean b(List list) {
        Context o10 = com.applovin.impl.sdk.k.o();
        if (o10 == null) {
            com.applovin.impl.sdk.o.h("Utils", "Failed to check whether or not app is member of package names");
            return false;
        }
        return list.contains(o10.getPackageName());
    }

    public static String a(long j10, boolean z10) {
        String str;
        String[] strArr = z10 ? f8245b : f8246c;
        long currentTimeMillis = (System.currentTimeMillis() - j10) / 1000;
        for (int i10 = 0; i10 < strArr.length; i10++) {
            long j11 = f8244a[i10];
            if (currentTimeMillis < j11) {
                if (currentTimeMillis <= 0) {
                    return z10 ? "just now" : "now";
                }
                String str2 = "";
                if (!z10 || currentTimeMillis <= 1) {
                    str = "";
                } else {
                    str = "s";
                }
                if (z10) {
                    str2 = " ago";
                }
                return String.format("%d%s%s%s", Long.valueOf(currentTimeMillis), strArr[i10], str, str2);
            }
            currentTimeMillis /= j11;
        }
        return z10 ? "just now" : "now";
    }

    public static WebView b(Context context, String str) {
        return a(context, str, false);
    }

    public static double a(String str, double d10) {
        try {
            return Double.parseDouble(str);
        } catch (Throwable th2) {
            com.applovin.impl.sdk.o.c("Utils", "Failed to parse double from String: " + str, th2);
            return d10;
        }
    }

    public static String a(Uri uri, String str, com.applovin.impl.sdk.k kVar) {
        List c10 = kVar.c(v4.G0);
        String lastPathSegment = uri.getLastPathSegment();
        if (c10.contains(lastPathSegment)) {
            return lastPathSegment;
        }
        ArrayList arrayList = new ArrayList();
        for (String str2 : uri.getQueryParameterNames()) {
            String queryParameter = uri.getQueryParameter(str2);
            if (StringUtils.isValidString(queryParameter)) {
                arrayList.add(queryParameter);
            }
        }
        arrayList.addAll(uri.getPathSegments());
        String encodeUriString = StringUtils.encodeUriString(TextUtils.join("_", arrayList));
        Integer num = (Integer) kVar.a(v4.H0);
        int length = StringUtils.emptyIfNull(encodeUriString).length() + StringUtils.emptyIfNull(str).length();
        if (length > num.intValue() && StringUtils.isValidString(encodeUriString)) {
            encodeUriString = encodeUriString.substring(length - num.intValue());
        }
        if (StringUtils.isValidString(encodeUriString) && StringUtils.isValidString(str)) {
            return str + encodeUriString;
        }
        return encodeUriString;
    }

    public static void a(String str, MaxAdFormat maxAdFormat, JSONObject jSONObject, com.applovin.impl.sdk.k kVar) {
        if (jSONObject.has("no_fill_reason")) {
            Object object = JsonUtils.getObject(jSONObject, "no_fill_reason", new Object());
            StringBuilder sb2 = new StringBuilder();
            sb2.append("\n**************************************************\nNO FILL received:\n..ID: \"");
            sb2.append(str);
            sb2.append("\"\n..FORMAT: \"");
            sb2.append(maxAdFormat != null ? maxAdFormat.getLabel() : "None");
            sb2.append("\"\n..SDK KEY: \"");
            sb2.append(kVar.j0());
            sb2.append("\"\n..PACKAGE NAME: \"");
            sb2.append(com.applovin.impl.sdk.k.o().getPackageName());
            sb2.append("\"\n..Reason: ");
            sb2.append(object);
            sb2.append("\n**************************************************\n");
            String sb3 = sb2.toString();
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                kVar.O().b("AppLovinSdk", sb3);
            }
        }
    }

    public static AppLovinAd a(AppLovinAd appLovinAd, com.applovin.impl.sdk.k kVar) {
        if (appLovinAd instanceof com.applovin.impl.sdk.ad.c) {
            com.applovin.impl.sdk.ad.c cVar = (com.applovin.impl.sdk.ad.c) appLovinAd;
            AppLovinAd dequeueAd = kVar.k().dequeueAd(cVar.getAdZone());
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O = kVar.O();
                O.a("Utils", "Dequeued ad for dummy ad: " + dequeueAd);
            }
            if (dequeueAd != null) {
                cVar.a(dequeueAd);
                ((AppLovinAdImpl) dequeueAd).setDummyAd(cVar);
                return dequeueAd;
            }
            return cVar.f();
        }
        return appLovinAd;
    }

    public static u a(JSONObject jSONObject, com.applovin.impl.sdk.k kVar) {
        return u.a(AppLovinAdSize.fromString(JsonUtils.getString(jSONObject, "ad_size", null)), AppLovinAdType.fromString(JsonUtils.getString(jSONObject, "ad_type", null)), JsonUtils.getString(jSONObject, AppLovinUtils.ServerParameterKeys.ZONE_ID, null), true, JsonUtils.getBoolean(jSONObject, "is_direct_sold", Boolean.FALSE).booleanValue());
    }

    public static Field a(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Class superclass = cls.getSuperclass();
            if (superclass == null) {
                return null;
            }
            return a(superclass, str);
        }
    }

    public static List a(JSONObject jSONObject, String str, String str2, com.applovin.impl.sdk.k kVar) {
        return a(jSONObject, str, null, str2, null, false, kVar);
    }

    public static List a(JSONObject jSONObject, String str, Map map, String str2, Map map2, boolean z10, com.applovin.impl.sdk.k kVar) {
        if (map == null) {
            map = new HashMap(1);
        }
        Map map3 = map;
        map3.put("{CLCODE}", str);
        return a(jSONObject, map3, str2, map2, z10, kVar);
    }

    public static List a(JSONObject jSONObject, Map map, String str, Map map2, boolean z10, com.applovin.impl.sdk.k kVar) {
        ArrayList arrayList = new ArrayList(jSONObject.length() + 1);
        if (StringUtils.isValidString(str)) {
            arrayList.add(new e(str, null, map2, z10));
        }
        if (jSONObject.length() <= 0) {
            return arrayList;
        }
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            try {
                String next = keys.next();
                if (!TextUtils.isEmpty(next)) {
                    String optString = jSONObject.optString(next);
                    String replace = StringUtils.replace(next, map);
                    if (AppLovinSdkUtils.isValidString(optString)) {
                        optString = StringUtils.replace(optString, map);
                    }
                    arrayList.add(new e(replace, optString, map2, z10));
                }
            } catch (Throwable th2) {
                kVar.O();
                if (com.applovin.impl.sdk.o.a()) {
                    kVar.O().a("Utils", "Failed to create and add postback url.", th2);
                }
            }
        }
        return arrayList;
    }

    public static void a(com.applovin.impl.sdk.k kVar, String str) {
        String j02 = kVar.j0();
        if (((Boolean) kVar.a(v4.f10393y)).booleanValue()) {
            if (j02 == null || j02.length() != 86) {
                a(TextUtils.isEmpty(j02) ? "Empty SDK key" : "Invalid SDK key length", str, kVar);
            }
        }
    }

    private static void a(String str, String str2, com.applovin.impl.sdk.k kVar) {
        a(str, (AppLovinAdBase) null, str2, kVar);
    }

    private static void a(String str, AppLovinAdBase appLovinAdBase, String str2, com.applovin.impl.sdk.k kVar) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("sdkKey=");
        sb2.append(kVar.j0());
        if (appLovinAdBase != null) {
            sb2.append(",adSdkKey=");
            sb2.append(appLovinAdBase.getSdk().j0());
        }
        HashMap hashMap = new HashMap();
        CollectionUtils.putStringIfValid("details", sb2.toString(), hashMap);
        CollectionUtils.putStringIfValid("error_message", str, hashMap);
        kVar.E().a(c2.E0, str2, hashMap);
    }

    public static Map a(Map map, com.applovin.impl.sdk.k kVar) {
        Map map2 = CollectionUtils.map(map);
        for (String str : map2.keySet()) {
            String str2 = (String) map2.get(str);
            if (str2 != null) {
                map2.put(str, StringUtils.encodeUriString(str2));
            }
        }
        return map2;
    }

    public static String a(Context context, String str, com.applovin.impl.sdk.k kVar) {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.setPackage(context.getPackageName());
        try {
            List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 0);
            if (queryIntentActivities.isEmpty()) {
                return null;
            }
            return queryIntentActivities.get(0).activityInfo.name;
        } catch (Throwable th2) {
            kVar.E().a(str, th2);
            return null;
        }
    }

    private static String a(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        return "unknown";
                    }
                    return "portrait";
                }
                return "landscape_left";
            }
            return "portrait_upside_down";
        }
        return "landscape_right";
    }

    public static boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            Class.forName(str);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean a(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (a((String) it.next())) {
                return true;
            }
        }
        return false;
    }

    public static void a(Runnable runnable) {
        Thread thread = new Thread(runnable);
        thread.setPriority(1);
        thread.start();
    }

    public static void a(Closeable closeable, com.applovin.impl.sdk.k kVar) {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (Throwable th2) {
            if (kVar != null) {
                kVar.O();
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o O = kVar.O();
                    O.a("Utils", "Unable to close stream: " + closeable, th2);
                }
            }
        }
    }

    public static void a(HttpURLConnection httpURLConnection, com.applovin.impl.sdk.k kVar) {
        if (httpURLConnection == null) {
            return;
        }
        try {
            httpURLConnection.disconnect();
        } catch (Throwable th2) {
            if (kVar != null) {
                kVar.O();
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o O = kVar.O();
                    O.a("Utils", "Unable to disconnect connection: " + httpURLConnection, th2);
                }
            }
        }
    }

    public static void a(final String str, final Context context) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.ub
            @Override // java.lang.Runnable
            public final void run() {
                k7.a(context, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(Context context, String str) {
        Toast makeText = Toast.makeText(context, str, 0);
        makeText.setMargin(0.0f, 0.1f);
        makeText.show();
    }

    public static void a(String str, MaxAd maxAd, Context context) {
        Toast.makeText(context, maxAd.getFormat().getLabel() + ": " + str, 1).show();
    }

    public static boolean a(AppLovinAdSize appLovinAdSize) {
        return appLovinAdSize == AppLovinAdSize.BANNER || appLovinAdSize == AppLovinAdSize.MREC || appLovinAdSize == AppLovinAdSize.LEADER;
    }

    public static String a(Object obj) {
        if (obj instanceof v2) {
            return ((v2) obj).P();
        }
        if (t3.a(obj)) {
            return ((com.applovin.impl.sdk.ad.b) obj).getMediationServeId();
        }
        return null;
    }

    public static List a(boolean z10, com.applovin.impl.sdk.ad.b bVar, com.applovin.impl.sdk.k kVar, Context context) {
        boolean z11;
        if (bVar instanceof l7) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = new ArrayList(bVar.l()).iterator();
        while (true) {
            z11 = false;
            if (!it.hasNext()) {
                break;
            }
            Uri uri = (Uri) it.next();
            boolean c10 = kVar.H().c(uri.getLastPathSegment(), context);
            if (((Boolean) kVar.a(v4.I5)).booleanValue() && b(uri.getPath()) == 0) {
                z11 = true;
            }
            if (!c10 || z11) {
                kVar.O();
                if (com.applovin.impl.sdk.o.a()) {
                    kVar.O().b("Utils", "Cached HTML asset missing: " + uri);
                }
                arrayList.add(uri);
            }
        }
        Uri v02 = bVar.v0();
        if (z10 && v02 != null) {
            boolean c11 = kVar.H().c(v02.getLastPathSegment(), context);
            if (((Boolean) kVar.a(v4.I5)).booleanValue() && b(v02.getPath()) == 0) {
                z11 = true;
            }
            if (!c11 || z11) {
                kVar.O();
                if (com.applovin.impl.sdk.o.a()) {
                    kVar.O().b("Utils", "Cached video missing: " + v02);
                }
                arrayList.add(v02);
            }
        }
        return arrayList;
    }

    public static void a(MaxError maxError, String str, Context context) {
        StringBuilder sb2 = new StringBuilder();
        if (maxError.getCode() == -5001) {
            for (MaxNetworkResponseInfo maxNetworkResponseInfo : maxError.getWaterfall().getNetworkResponses()) {
                MaxError error = maxNetworkResponseInfo.getError();
                String name = maxNetworkResponseInfo.getMediatedNetwork().getName();
                sb2.append("\nFailed to load " + str + " from " + name + ":\n");
                sb2.append("\nMAX Error " + error.getCode() + ": " + error.getMessage() + "\n");
                sb2.append("\n" + name + " Error " + error.getMediatedNetworkErrorCode() + ": " + error.getMediatedNetworkErrorMessage() + "\n\n");
            }
        } else {
            sb2.append("Failed to load " + str + " with error " + maxError.getCode() + ": " + maxError.getMessage());
        }
        a("", sb2.toString(), context);
    }

    public static void a(String str, String str2, Context context) {
        new AlertDialog.Builder(context).setTitle(str).setMessage(str2).setNegativeButton(17039370, (DialogInterface.OnClickListener) null).create().show();
    }

    public static boolean a(double d10) {
        if (d10 >= 100.0d) {
            return true;
        }
        return d10 > 0.0d && ((double) f8248e.nextFloat()) < d10 / 100.0d;
    }

    public static byte[] a(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(bArr.length);
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
        gZIPOutputStream.write(bArr);
        gZIPOutputStream.close();
        return byteArrayOutputStream.toByteArray();
    }

    public static long a(byte[] bArr, int i10) {
        int i11 = i10 + 8;
        if (bArr.length >= i11) {
            long j10 = 0;
            while (i10 < i11) {
                j10 |= (bArr[i10] & 255) << (i10 * 8);
                i10++;
            }
            return j10;
        }
        throw new IllegalArgumentException("byte array must be at least 8 bytes long");
    }

    public static int a(Context context) {
        return Settings.System.getInt(context.getContentResolver(), "always_finish_activities", 0);
    }

    public static String a(String str, int i10) {
        String[] split = StringUtils.toDigitsOnlyVersionString(str).split("\\.");
        if (split.length == i10) {
            return sb.a(".", split);
        }
        if (split.length > i10) {
            return tb.a(".", new ArrayList(Arrays.asList(split)).subList(0, i10));
        }
        ArrayList arrayList = new ArrayList(Arrays.asList(split));
        arrayList.addAll(Collections.nCopies(i10 - arrayList.size(), MBridgeConstans.ENDCARD_URL_TYPE_PL));
        return tb.a(".", arrayList);
    }

    public static int a(String str, String str2) {
        if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
            return 0;
        }
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (TextUtils.isEmpty(str2)) {
            return 1;
        }
        String digitsOnlyVersionString = StringUtils.toDigitsOnlyVersionString(str);
        String digitsOnlyVersionString2 = StringUtils.toDigitsOnlyVersionString(str2);
        try {
            String[] split = digitsOnlyVersionString.split("\\.");
            String[] split2 = digitsOnlyVersionString2.split("\\.");
            int max = Math.max(split.length, split2.length);
            int i10 = 0;
            while (i10 < max) {
                int length = split.length;
                String str3 = MBridgeConstans.ENDCARD_URL_TYPE_PL;
                String str4 = i10 < length ? split[i10] : MBridgeConstans.ENDCARD_URL_TYPE_PL;
                if (i10 < split2.length) {
                    str3 = split2[i10];
                }
                int parseInt = Integer.parseInt(str4);
                int parseInt2 = Integer.parseInt(str3);
                if (parseInt < parseInt2) {
                    return -1;
                }
                if (parseInt > parseInt2) {
                    return 1;
                }
                i10++;
            }
            return 0;
        } catch (Throwable th2) {
            com.applovin.impl.sdk.o.c("Utils", "Failed to process version string.", th2);
            return 0;
        }
    }

    public static WebView a(Context context, String str, boolean z10) {
        try {
            WebView webView = new WebView(context);
            if (z10) {
                webView.setWebViewClient(new b(str));
            }
            return webView;
        } catch (Throwable th2) {
            com.applovin.impl.sdk.o.c("Utils", "Failed to initialize WebView for " + str + ".", th2);
            return null;
        }
    }

    public static void a(Uri uri, Activity activity, com.applovin.impl.sdk.k kVar) {
        if (activity == null) {
            activity = kVar.v0();
        }
        Intent intent = new Intent(activity, AppLovinWebViewActivity.class);
        intent.putExtra(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, kVar.j0());
        intent.putExtra(AppLovinWebViewActivity.INTENT_EXTRA_KEY_LOAD_URL, uri.toString());
        activity.startActivity(intent);
    }

    public static String a(int i10, Context context, com.applovin.impl.sdk.k kVar) {
        if (i10 == 0) {
            return "";
        }
        try {
            InputStream openRawResource = context.getResources().openRawResource(i10);
            try {
                byte[] bArr = new byte[openRawResource.available()];
                openRawResource.read(bArr);
                return new String(bArr);
            } catch (IOException e10) {
                if (kVar != null) {
                    kVar.O();
                    if (com.applovin.impl.sdk.o.a()) {
                        kVar.O().a("Utils", "Opening raw resource file threw exception", e10);
                    }
                }
                return "";
            } finally {
                a(openRawResource, kVar);
            }
        } catch (Throwable th2) {
            if (kVar != null) {
                kVar.O();
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o O = kVar.O();
                    O.a("Utils", "Failed to retrieve resource " + i10, th2);
                }
            }
            return "";
        }
    }

    public static boolean a(MaxAdFormat maxAdFormat, MaxAdFormat maxAdFormat2) {
        return (maxAdFormat == null || maxAdFormat2 == null || (maxAdFormat != maxAdFormat2 && ((!maxAdFormat.isAdViewAd() || !maxAdFormat2.isAdViewAd()) && (!maxAdFormat.isFullscreenAd() || !maxAdFormat2.isFullscreenAd())))) ? false : true;
    }

    public static boolean a(String str, com.applovin.impl.sdk.k kVar) {
        if (str == null) {
            return false;
        }
        return StringUtils.containsAtLeastOneSubstring(str, kVar.c(v4.f10378w0));
    }

    public static ActivityManager.MemoryInfo a(ActivityManager activityManager) {
        if (activityManager == null) {
            return null;
        }
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        try {
            activityManager.getMemoryInfo(memoryInfo);
            return memoryInfo;
        } catch (Throwable th2) {
            com.applovin.impl.sdk.o.b("Utils", "Unable to collect memory info.", th2);
            return null;
        }
    }

    public static String a(AppLovinSdkSettings appLovinSdkSettings) {
        String emptyIfNull = StringUtils.emptyIfNull(appLovinSdkSettings.getExtraParameters().get("applovin_unity_metadata"));
        if (TextUtils.isEmpty(emptyIfNull)) {
            return null;
        }
        Map<String, String> tryToStringMap = JsonUtils.tryToStringMap(JsonUtils.jsonObjectFromJsonString(emptyIfNull, new JSONObject()));
        if (CollectionUtils.isEmpty(tryToStringMap)) {
            return null;
        }
        return tryToStringMap.get("UnityVersion");
    }

    public static void a(String str, int i10, int i11, q1 q1Var) {
        if (i10 > i11) {
            q1Var.a(c2.G0, str, CollectionUtils.hashMap("details", i10 + " Leaking Instances"));
        }
    }

    public static void a(float f10, long j10, com.applovin.impl.sdk.o oVar) {
        VibrationEffect createOneShot;
        Vibrator vibrator = (Vibrator) com.applovin.impl.sdk.k.o().getSystemService("vibrator");
        if (vibrator == null || !vibrator.hasVibrator()) {
            return;
        }
        try {
            if (com.applovin.impl.sdk.o.a()) {
                oVar.a("Utils", "Vibrating with intensity: " + f10 + " for duration: " + j10 + "ms");
            }
            if (o0.h()) {
                createOneShot = VibrationEffect.createOneShot(j10, Math.max(1, Math.min(255, (int) (f10 * 255.0f))));
                vibrator.vibrate(createOneShot);
                return;
            }
            vibrator.vibrate(j10);
        } catch (Throwable th2) {
            if (com.applovin.impl.sdk.o.a()) {
                oVar.a("Utils", "Failed to vibrate", th2);
            }
        }
    }
}
