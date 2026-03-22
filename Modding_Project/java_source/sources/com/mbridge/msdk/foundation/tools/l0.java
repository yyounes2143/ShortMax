package com.mbridge.msdk.foundation.tools;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import androidx.autofill.HintConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridge;
import java.lang.reflect.Constructor;
import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.Locale;
import java.util.TimeZone;
import org.json.JSONObject;
/* compiled from: SameDiTool.java */
/* loaded from: classes5.dex */
public class l0 extends u {
    private static int A = 0;
    private static String B = "";
    private static Object C = null;
    private static int D = 0;
    private static int E = 0;
    private static long F = -1;
    private static long G = -1;
    private static String H = "";
    private static String I = "";

    /* renamed from: j  reason: collision with root package name */
    private static String f27449j = "";

    /* renamed from: k  reason: collision with root package name */
    private static String f27450k = "";

    /* renamed from: l  reason: collision with root package name */
    private static int f27451l = -1;

    /* renamed from: m  reason: collision with root package name */
    private static String f27452m = "";

    /* renamed from: n  reason: collision with root package name */
    private static int f27453n = -1;

    /* renamed from: o  reason: collision with root package name */
    private static int f27454o = 0;

    /* renamed from: p  reason: collision with root package name */
    private static String f27455p = "";

    /* renamed from: q  reason: collision with root package name */
    private static int f27456q = -1;

    /* renamed from: r  reason: collision with root package name */
    private static String f27457r = "";

    /* renamed from: s  reason: collision with root package name */
    private static String f27458s = "";

    /* renamed from: t  reason: collision with root package name */
    private static volatile int f27459t = -1;

    /* renamed from: u  reason: collision with root package name */
    private static String f27460u = "";

    /* renamed from: v  reason: collision with root package name */
    private static String f27461v = "";

    /* renamed from: w  reason: collision with root package name */
    private static int f27462w = 0;

    /* renamed from: x  reason: collision with root package name */
    private static String f27463x = "";

    /* renamed from: y  reason: collision with root package name */
    private static String f27464y = "";

    /* renamed from: z  reason: collision with root package name */
    private static int f27465z = -1;

    /* compiled from: SameDiTool.java */
    /* loaded from: classes5.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f27466a;

        a(Context context) {
            this.f27466a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.mbridge.msdk.foundation.tools.f.c(this.f27466a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SameDiTool.java */
    /* loaded from: classes5.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f27467a;

        b(Context context) {
            this.f27467a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            String str;
            try {
                str = WebSettings.getDefaultUserAgent(this.f27467a);
            } catch (Throwable unused) {
                str = null;
            }
            try {
                if (!TextUtils.isEmpty(str) && !str.equals(l0.f27464y)) {
                    String unused2 = l0.f27464y = str;
                    l0.G(this.f27467a);
                }
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SameDiTool.java */
    /* loaded from: classes5.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f27468a;

        c(Context context) {
            this.f27468a = context;
        }

        @Override // java.lang.Runnable
        @SuppressLint({"MissingPermission"})
        public void run() {
            try {
                ConnectivityManager connectivityManager = (ConnectivityManager) this.f27468a.getSystemService("connectivity");
                if (connectivityManager != null && com.mbridge.msdk.foundation.same.a.f27044z) {
                    NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                    if (activeNetworkInfo == null) {
                        int unused = l0.f27459t = 0;
                    } else if (activeNetworkInfo.getType() == 1) {
                        int unused2 = l0.f27459t = 9;
                    } else {
                        TelephonyManager telephonyManager = (TelephonyManager) this.f27468a.getSystemService(HintConstants.AUTOFILL_HINT_PHONE);
                        if (telephonyManager == null) {
                            int unused3 = l0.f27459t = 0;
                        } else {
                            int unused4 = l0.f27459t = l0.c(telephonyManager.getNetworkType());
                        }
                    }
                }
            } catch (Exception unused5) {
                int unused6 = l0.f27459t = 0;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SameDiTool.java */
    /* loaded from: classes5.dex */
    public class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                String unused = l0.f27463x = TimeZone.getDefault().getDisplayName(false, 0, Locale.ENGLISH);
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SameDiTool.java */
    /* loaded from: classes5.dex */
    public class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                com.mbridge.msdk.util.c.a();
            } catch (Exception e10) {
                p0.b("SameDiTool", e10.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SameDiTool.java */
    /* loaded from: classes5.dex */
    public class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Context d10 = com.mbridge.msdk.foundation.controller.c.m().d();
            if (d10 != null) {
                ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
                ((ActivityManager) d10.getSystemService("activity")).getMemoryInfo(memoryInfo);
                long unused = l0.G = memoryInfo.totalMem;
                long unused2 = l0.F = memoryInfo.availMem;
            }
        }
    }

    public static int A() {
        return f27465z;
    }

    public static int B() {
        if (D == 0) {
            D = u0.e();
        }
        return D;
    }

    public static void C(Context context) {
        try {
            u.e(context);
            o();
            q();
            t(context);
            B(context);
            A(context);
            F(context);
            n();
            s();
            p(context);
            w();
            com.mbridge.msdk.foundation.same.a.B = false;
            com.mbridge.msdk.foundation.same.a.f27044z = u0.b("android.permission.ACCESS_NETWORK_STATE", context);
            w(context);
            l();
            com.mbridge.msdk.foundation.tools.f.b();
            g();
        } catch (Throwable th2) {
            p0.b("SameDiTool", th2.getMessage());
        }
    }

    public static int D(Context context) {
        if (f27451l == -1) {
            f27451l = u0.c(context, "com.tencent.mm") ? 1 : 0;
        }
        return f27451l;
    }

    private static void E() {
        String str = Build.VERSION.RELEASE;
        String n10 = n();
        String str2 = Build.DISPLAY;
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(n10)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Mozilla/5.0 (Linux; Android ");
            sb2.append(str);
            sb2.append("; ");
            sb2.append(n10);
            sb2.append(" Build/");
            if (TextUtils.isEmpty(str2)) {
                str2 = "";
            }
            sb2.append(str2);
            sb2.append(") AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.133 Mobile Safari/535.19");
            f27464y = sb2.toString();
            return;
        }
        f27464y = "Mozilla/5.0 (Linux; Android 4.0.4; Galaxy Nexus Build/IMM76B) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.133 Mobile Safari/535.19";
    }

    public static int F(Context context) {
        Configuration configuration;
        if (context == null || context.getResources() == null || (configuration = context.getResources().getConfiguration()) == null || configuration.orientation != 2) {
            return 1;
        }
        return 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void G(Context context) {
        try {
            x0.b(context, "mbridge_ua", f27464y);
        } catch (Throwable th2) {
            p0.b("SameDiTool", th2.getMessage(), th2);
        }
    }

    public static int c(int i10) {
        switch (i10) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
            case 16:
                return 2;
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
            case 17:
                return 3;
            case 13:
            case 18:
            case 19:
                return 4;
            case 20:
                return 5;
            default:
                return 0;
        }
    }

    public static Object d(String str) {
        if (C == null) {
            C = u0.g(str);
        }
        return C;
    }

    public static int e(String str) {
        if (E == 0) {
            E = u0.f(str);
        }
        return E;
    }

    public static void g(Context context) {
        try {
            c cVar = new c(context);
            if (com.mbridge.msdk.foundation.same.threadpool.a.d().getActiveCount() < 1) {
                com.mbridge.msdk.foundation.same.threadpool.a.d().execute(cVar);
            }
        } catch (Throwable th2) {
            p0.b("SameDiTool", th2.getMessage());
        }
    }

    public static void h(Context context) {
        if (context == null) {
            return;
        }
        try {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                com.mbridge.msdk.foundation.tools.f.c(context);
            } else {
                new Handler(context.getMainLooper()).post(new a(context));
            }
        } catch (Exception e10) {
            p0.b("SameDiTool", "", e10);
        }
    }

    public static String i() {
        if (TextUtils.isEmpty(f27464y)) {
            l(com.mbridge.msdk.foundation.controller.c.m().d());
        }
        return f27464y;
    }

    public static String j() {
        com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA);
        return "";
    }

    public static void k() {
        try {
            Object a10 = x0.a(com.mbridge.msdk.foundation.controller.c.m().d(), MBridgeConstans.SP_GA_ID, "");
            Object a11 = x0.a(com.mbridge.msdk.foundation.controller.c.m().d(), MBridgeConstans.SP_GA_ID_LIMIT, 0);
            if (a10 instanceof String) {
                String str = (String) a10;
                if (!TextUtils.isEmpty(str)) {
                    com.mbridge.msdk.foundation.tools.f.a(str);
                }
                if (a11 instanceof Integer) {
                    com.mbridge.msdk.foundation.tools.f.a(((Integer) a11).intValue());
                }
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                p0.b("SameDiTool", e10.getMessage());
            }
        }
    }

    public static String l(Context context) {
        if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
            i(context);
            try {
                if (Looper.myLooper() == Looper.getMainLooper() && !MBridgeConstans.DNT_GUA_ON_UI) {
                    if (TextUtils.isEmpty(f27464y)) {
                        try {
                            f27464y = WebSettings.getDefaultUserAgent(context);
                        } catch (Throwable unused) {
                        }
                        if (TextUtils.isEmpty(f27464y)) {
                            Constructor declaredConstructor = WebSettings.class.getDeclaredConstructor(Context.class, WebView.class);
                            declaredConstructor.setAccessible(true);
                            f27464y = ((WebSettings) declaredConstructor.newInstance(context, null)).getUserAgentString();
                            declaredConstructor.setAccessible(false);
                            if (TextUtils.isEmpty(f27464y)) {
                                f27464y = new WebView(context).getSettings().getUserAgentString();
                            }
                            if (TextUtils.isEmpty(f27464y)) {
                                E();
                            }
                        }
                    } else {
                        z(context);
                    }
                } else {
                    if (TextUtils.isEmpty(f27464y)) {
                        E();
                    }
                    z(context);
                }
            } catch (Throwable th2) {
                p0.b("SameDiTool", th2.getMessage(), th2);
            }
            G(context);
            return f27464y;
        }
        return null;
    }

    public static int m(Context context) {
        if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA) && context != null) {
            try {
                DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
                HashMap v10 = v(context);
                return v10.get("height") == null ? displayMetrics.heightPixels : ((Integer) v10.get("height")).intValue();
            } catch (Exception e10) {
                e10.printStackTrace();
                return 0;
            }
        }
        return 0;
    }

    public static String n() {
        if (!com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
            return "";
        }
        return Build.MODEL;
    }

    private static void o() {
        try {
            com.mbridge.msdk.foundation.same.threadpool.a.e().execute(new f());
        } catch (Throwable th2) {
            p0.b("SameDiTool", th2.getMessage());
        }
    }

    public static String p() {
        if (!com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
            return "";
        }
        return Build.MANUFACTURER;
    }

    public static String q(Context context) {
        try {
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                if (TextUtils.isEmpty(f27457r)) {
                    if (context == null) {
                        f27457r = "";
                        return "";
                    }
                    String simOperator = ((TelephonyManager) context.getSystemService(HintConstants.AUTOFILL_HINT_PHONE)).getSimOperator();
                    if (u0.j(simOperator)) {
                        f27457r = simOperator.substring(0, Math.min(3, simOperator.length()));
                    }
                }
            } else {
                f27457r = "";
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            f27457r = "";
        }
        return f27457r;
    }

    public static String r(Context context) {
        try {
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                if (TextUtils.isEmpty(f27458s)) {
                    if (context == null) {
                        f27458s = "";
                        return f27457r;
                    }
                    String simOperator = ((TelephonyManager) context.getSystemService(HintConstants.AUTOFILL_HINT_PHONE)).getSimOperator();
                    if (u0.j(simOperator)) {
                        f27458s = simOperator.substring(Math.min(3, simOperator.length()));
                    }
                }
            } else {
                f27458s = "";
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            f27458s = "";
        }
        return f27458s;
    }

    @SuppressLint({"MissingPermission"})
    public static int s(Context context) {
        try {
            Context d10 = com.mbridge.msdk.foundation.controller.c.m().d();
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                if (d10 == null) {
                    return f27459t;
                }
                if (f27459t != -1) {
                    g(d10);
                    return f27459t;
                }
                f27459t = 0;
                return f27459t;
            }
            return f27459t;
        } catch (Exception e10) {
            p0.b("SameDiTool", e10.getMessage(), e10);
            f27459t = 0;
            return f27459t;
        }
    }

    public static String t(Context context) {
        if (context == null) {
            return f27461v;
        }
        try {
            if (TextUtils.isEmpty(f27461v)) {
                String str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).packageName;
                f27461v = str;
                return str;
            }
            return f27461v;
        } catch (Exception e10) {
            e10.printStackTrace();
            return "";
        }
    }

    public static String u() {
        try {
            if (TextUtils.isEmpty(I)) {
                Context d10 = com.mbridge.msdk.foundation.controller.c.m().d();
                long a10 = k0.a();
                String j10 = j(d10);
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("1", j10);
                    jSONObject.put("2", String.valueOf(G));
                    jSONObject.put("3", String.valueOf(a10));
                    jSONObject.put("4", "");
                    jSONObject.put("5", "");
                } catch (Exception e10) {
                    p0.b("SameDiTool", e10.getMessage());
                }
                String b10 = com.mbridge.msdk.foundation.tools.a.b(jSONObject.toString());
                I = b10;
                if (b10 == null) {
                    I = "";
                }
            }
        } catch (Exception e11) {
            p0.b("SameDiTool", e11.getMessage());
        }
        return I;
    }

    public static HashMap v(Context context) {
        HashMap hashMap = new HashMap();
        if (context == null) {
            return hashMap;
        }
        try {
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            DisplayMetrics displayMetrics = new DisplayMetrics();
            defaultDisplay.getRealMetrics(displayMetrics);
            hashMap.put("height", Integer.valueOf(displayMetrics.heightPixels));
            hashMap.put("width", Integer.valueOf(displayMetrics.widthPixels));
        } catch (Exception e10) {
            p0.b("SameDiTool", e10.getMessage(), e10);
        }
        return hashMap;
    }

    public static String w() {
        try {
        } catch (Throwable th2) {
            p0.b("SameDiTool", th2.getMessage(), th2);
        }
        if (!com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_OTHER)) {
            return "";
        }
        if (TextUtils.isEmpty(f27463x)) {
            new Thread(new d()).start();
            return f27463x;
        }
        return f27463x;
    }

    public static String x(Context context) {
        if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA) && context != null) {
            try {
                return Settings.System.getString(context.getContentResolver(), "time_12_24");
            } catch (Exception e10) {
                p0.b("SameDiTool", e10.getMessage(), e10);
                return "";
            } catch (Throwable th2) {
                p0.b("SameDiTool", th2.getMessage(), th2);
                return "";
            }
        }
        return "";
    }

    public static String y(Context context) {
        return (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA) && context != null) ? String.valueOf(G) : "";
    }

    private static void z(Context context) {
        try {
            new Thread(new b(context)).start();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static int A(Context context) {
        if (context == null) {
            return A;
        }
        int i10 = A;
        if (i10 == 0) {
            try {
                int i11 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
                A = i11;
                return i11;
            } catch (Exception e10) {
                e10.printStackTrace();
                return -1;
            }
        }
        return i10;
    }

    public static String a(Context context, int i10) {
        TelephonyManager telephonyManager;
        if (i10 == 0 || i10 == 9) {
            return "";
        }
        try {
            if (!com.mbridge.msdk.foundation.same.a.f27044z || (telephonyManager = (TelephonyManager) context.getSystemService(HintConstants.AUTOFILL_HINT_PHONE)) == null) {
                return "";
            }
            return String.valueOf(telephonyManager.getNetworkType());
        } catch (Throwable th2) {
            p0.b("SameDiTool", th2.getMessage(), th2);
            return "";
        }
    }

    public static String j(Context context) {
        try {
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                if (TextUtils.isEmpty(f27450k)) {
                    f27450k = ((TelephonyManager) context.getSystemService(HintConstants.AUTOFILL_HINT_PHONE)).getSimOperatorName();
                }
            } else {
                f27450k = "";
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            f27450k = "";
        }
        return f27450k;
    }

    public static float o(Context context) {
        Resources resources;
        try {
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_OTHER) && context != null && (resources = context.getResources()) != null) {
                return resources.getConfiguration().fontScale;
            }
        } catch (Throwable th2) {
            p0.b("SameDiTool", th2.getMessage());
        }
        return -1.0f;
    }

    public static int y() {
        try {
        } catch (Exception e10) {
            f27454o = 0;
            p0.b("SameDiTool", e10.getMessage());
        }
        if (r0.a().a("v_a_d_p", false)) {
            if (u0.i()) {
                f27454o = 1;
            } else if (u0.j()) {
                f27454o = 2;
            } else {
                f27454o = 0;
            }
            return f27454o;
        }
        return 0;
    }

    public static String B(Context context) {
        if (context == null) {
            return B;
        }
        try {
            if (TextUtils.isEmpty(B)) {
                String str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
                B = str;
                return str;
            }
            return B;
        } catch (Exception e10) {
            e10.printStackTrace();
            return "";
        }
    }

    public static int D() {
        if (f27453n == -1) {
            f27453n = u0.g() ? 1 : 0;
        }
        return f27453n;
    }

    public static void d(int i10) {
        f27456q = i10;
    }

    private static void i(Context context) {
        if (TextUtils.isEmpty(f27464y)) {
            try {
                f27464y = x0.a(context, "mbridge_ua", "").toString();
            } catch (Throwable th2) {
                p0.b("SameDiTool", th2.getMessage(), th2);
            }
        }
    }

    public static int n(Context context) {
        if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA) && context != null) {
            try {
                DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
                HashMap v10 = v(context);
                return v10.get("width") == null ? displayMetrics.widthPixels : ((Integer) v10.get("width")).intValue();
            } catch (Exception e10) {
                e10.printStackTrace();
                return 0;
            }
        }
        return 0;
    }

    public static String p(Context context) {
        Locale locale;
        if (!com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
            return "";
        }
        if (TextUtils.isEmpty(f27455p)) {
            if (context == null) {
                return "en-US";
            }
            try {
                if (context.getResources() == null || context.getResources().getConfiguration() == null || (locale = context.getResources().getConfiguration().locale) == null) {
                    return "en-US";
                }
                String languageTag = locale.toLanguageTag();
                f27455p = languageTag;
                return languageTag;
            } catch (Throwable th2) {
                p0.a("SameDiTool", th2.getMessage());
                f27455p = "en-US";
            }
        }
        return f27455p;
    }

    public static int z() {
        try {
            if (u0.i()) {
                return 1;
            }
            return u0.j() ? 2 : 0;
        } catch (Exception e10) {
            p0.b("SameDiTool", e10.getMessage());
            return 0;
        }
    }

    public static void g() {
        try {
            com.mbridge.msdk.foundation.same.threadpool.a.e().execute(new e());
        } catch (Throwable th2) {
            p0.b("SameDiTool", th2.getMessage());
        }
    }

    public static int h() {
        try {
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                long j10 = F;
                if (j10 > 0) {
                    return Long.valueOf((j10 / 1000) / 1000).intValue();
                }
                return -1;
            }
            return 0;
        } catch (Throwable th2) {
            p0.b("SameDiTool", th2.getMessage(), th2);
            return -1;
        }
    }

    public static int m() {
        if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
            return Build.VERSION.SDK_INT;
        }
        return -1;
    }

    public static String x() {
        if (!com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
            return "";
        }
        if (TextUtils.isEmpty(H)) {
            long j10 = G;
            if (j10 > 0) {
                double ceil = Math.ceil(Float.valueOf(((float) j10) / 1.07374182E9f).doubleValue());
                H = ceil + "GB";
            }
        }
        return H;
    }

    public static boolean E(Context context) {
        return (context.getResources().getConfiguration().screenLayout & 15) >= 3;
    }

    public static String a(String str, Context context) {
        try {
        } catch (Exception e10) {
            p0.b("SameDiTool", e10.getMessage(), e10);
        }
        if (!TextUtils.isEmpty(f27449j)) {
            return f27449j;
        }
        if (!TextUtils.isEmpty(str) && context != null) {
            f27449j = context.getPackageManager().getInstallerPackageName(str);
            p0.a("SameDiTool", "PKGSource:" + f27449j);
        }
        return f27449j;
    }

    public static String t() {
        if (!com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
            return "";
        }
        return Build.MANUFACTURER + " " + Build.MODEL;
    }

    public static int v() {
        if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
            long j10 = G;
            if (j10 > 0) {
                return Long.valueOf((j10 / 1000) / 1000).intValue();
            }
            return -1;
        }
        return 0;
    }

    public static int w(Context context) {
        if (context == null) {
            return f27462w;
        }
        if (f27462w == 0) {
            try {
                f27462w = context.getApplicationInfo().targetSdkVersion;
            } catch (Exception e10) {
                p0.b("SameDiTool", e10.getMessage());
            }
        }
        return f27462w;
    }

    public static String k(Context context) {
        try {
            if (!com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_OTHER) || context == null) {
                return "-1";
            }
            AudioManager audioManager = (AudioManager) context.getApplicationContext().getSystemService("audio");
            String format = new DecimalFormat("0.0").format((audioManager != null ? audioManager.getStreamVolume(3) : -1) / (audioManager != null ? audioManager.getStreamMaxVolume(3) : -1));
            return TextUtils.isEmpty(format) ? "-1" : format;
        } catch (Throwable th2) {
            p0.b("SameDiTool", th2.getMessage());
            return "-1";
        }
    }

    public static String q() {
        if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
            if (TextUtils.isEmpty(f27460u)) {
                int r10 = r();
                f27460u = r10 + "";
            }
            return f27460u;
        }
        return "";
    }

    public static int r() {
        try {
            return Build.VERSION.SDK_INT;
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public static String s() {
        if (!com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
            return "";
        }
        return Build.BRAND;
    }

    public static int u(Context context) {
        try {
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_OTHER) && context != null) {
                return ((PowerManager) context.getSystemService("power")).isPowerSaveMode() ? 1 : 0;
            }
            return -1;
        } catch (Throwable th2) {
            p0.b("SameDiTool", th2.getMessage());
            return -1;
        }
    }

    public static int C() {
        return f27456q;
    }

    public static String l() {
        String str;
        if (TextUtils.isEmpty(f27452m)) {
            JSONObject jSONObject = new JSONObject();
            try {
                Class<?> cls = Class.forName("com.huawei.system.BuildEx");
                str = (String) cls.getMethod("getOsBrand", new Class[0]).invoke(cls, new Object[0]);
            } catch (Throwable th2) {
                p0.b("SameDiTool", th2.getMessage());
                str = null;
            }
            try {
                if (!TextUtils.isEmpty(str) && str.equals("harmony")) {
                    jSONObject.put("osType", str);
                    Class<?> cls2 = Class.forName("ohos.system.version.SystemVersion");
                    jSONObject.put("version", (String) cls2.getMethod(MobileAdsBridge.versionMethodName, new Class[0]).invoke(cls2, new Object[0]));
                    jSONObject.put("pure_state", Settings.Secure.getInt(com.mbridge.msdk.foundation.controller.c.m().d().getContentResolver(), "pure_mode_state", -1));
                    String jSONObject2 = jSONObject.toString();
                    if (!TextUtils.isEmpty(jSONObject2)) {
                        jSONObject2 = j0.b(jSONObject2);
                    }
                    f27452m = jSONObject2;
                } else {
                    f27452m = "android";
                }
            } catch (Throwable th3) {
                p0.b("SameDiTool", th3.getMessage());
            }
            return f27452m;
        }
        return f27452m;
    }
}
