package com.mbridge.msdk.foundation.tools;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.WindowManager;
import android.webkit.WebView;
import android.widget.ImageView;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.MBDownloadConfig;
import com.mbridge.msdk.foundation.download.MBDownloadManager;
import com.mbridge.msdk.foundation.download.database.IDatabaseOpenHelper;
import com.mbridge.msdk.foundation.download.resource.ResourceConfig;
import com.mbridge.msdk.foundation.download.utils.ILogger;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.lang.reflect.InvocationTargetException;
import java.net.URLEncoder;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: SameTool.java */
/* loaded from: classes5.dex */
public class u0 extends x {

    /* renamed from: a  reason: collision with root package name */
    private static int f27513a = 1;

    /* renamed from: b  reason: collision with root package name */
    private static volatile Boolean f27514b;

    /* renamed from: c  reason: collision with root package name */
    private static final Pattern f27515c = Pattern.compile("[一-龥]");

    /* renamed from: d  reason: collision with root package name */
    private static Map<String, String> f27516d;

    /* renamed from: e  reason: collision with root package name */
    private static Map<String, String> f27517e;

    /* compiled from: SameTool.java */
    /* loaded from: classes5.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ImageView f27518a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ CampaignEx f27519b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.foundation.feedback.a f27520c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f27521d;

        a(ImageView imageView, CampaignEx campaignEx, com.mbridge.msdk.foundation.feedback.a aVar, int i10) {
            this.f27518a = imageView;
            this.f27519b = campaignEx;
            this.f27520c = aVar;
            this.f27521d = i10;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                u0.a(this.f27519b, this.f27520c, this.f27521d, (String) this.f27518a.getTag());
            } catch (Exception e10) {
                p0.b("SameTools", e10.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SameTool.java */
    /* loaded from: classes5.dex */
    public class b implements IDatabaseOpenHelper {
        b() {
        }

        @Override // com.mbridge.msdk.foundation.download.database.IDatabaseOpenHelper
        public SQLiteDatabase getReadableDatabase() {
            return com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d()).c();
        }

        @Override // com.mbridge.msdk.foundation.download.database.IDatabaseOpenHelper
        public SQLiteDatabase getWritableDatabase() {
            return com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d()).d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SameTool.java */
    /* loaded from: classes5.dex */
    public class c implements ILogger {
        c() {
        }

        @Override // com.mbridge.msdk.foundation.download.utils.ILogger
        public void log(String str, String str2) {
            p0.a(str, str2);
        }

        @Override // com.mbridge.msdk.foundation.download.utils.ILogger
        public void log(String str, Exception exc) {
            p0.a(str, exc.getMessage());
        }
    }

    public static int a(int i10) {
        if ((i10 <= 100 || i10 >= 199) && i10 != 2) {
            if ((i10 <= 200 || i10 >= 299) && i10 != 4) {
                return (i10 <= 500 || i10 >= 599) ? -1 : 5;
            }
            return 2;
        }
        return 1;
    }

    public static int b(Context context) {
        PackageInfo packageInfo;
        if (context == null) {
            return 0;
        }
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                packageInfo = WebView.getCurrentWebViewPackage();
            } else {
                packageInfo = context.getPackageManager().getPackageInfo("com.google.android.webview", 1);
            }
            com.mbridge.msdk.setting.g d10 = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
            if (d10 == null) {
                d10 = com.mbridge.msdk.setting.h.b().a();
            }
            if (packageInfo == null || TextUtils.isEmpty(packageInfo.versionName) || !packageInfo.versionName.equals("77.0.3865.92")) {
                return d10.z0();
            }
            return 5;
        } catch (Exception unused) {
            return 0;
        }
    }

    public static int c(Context context) {
        if (context != null) {
            return 0;
        }
        try {
            if (context.getResources().getIdentifier("config_showNavigationBar", "bool", "android") != 0) {
                return context.getResources().getDimensionPixelSize(context.getResources().getIdentifier("navigation_bar_height", "dimen", "android"));
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return 0;
    }

    public static float d(Context context) {
        if (context != null) {
            try {
                float f10 = context.getResources().getDisplayMetrics().density;
                if (f10 == 0.0f) {
                    return 2.5f;
                }
                return f10;
            } catch (Exception e10) {
                e10.printStackTrace();
                return 2.5f;
            }
        }
        return 2.5f;
    }

    public static DisplayMetrics e(Context context) {
        if (context == null) {
            return null;
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        try {
            ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRealMetrics(displayMetrics);
            return displayMetrics;
        } catch (Throwable th2) {
            th2.printStackTrace();
            return context.getResources().getDisplayMetrics();
        }
    }

    public static int f(Context context) {
        if (context == null) {
            return 0;
        }
        try {
            return e(context).heightPixels;
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public static int g(Context context) {
        if (context == null) {
            return 0;
        }
        try {
            return e(context).widthPixels;
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public static int h(Context context) {
        if (context == null) {
            return 0;
        }
        try {
            return context.getResources().getDisplayMetrics().heightPixels;
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public static int i(Context context) {
        if (context == null) {
            return 0;
        }
        try {
            return context.getResources().getDisplayMetrics().widthPixels;
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public static float j(Context context) {
        return context.getResources().getDisplayMetrics().widthPixels;
    }

    public static int k(Context context) {
        try {
            Class<?> cls = Class.forName("com.android.internal.R$dimen");
            return context.getResources().getDimensionPixelSize(Integer.parseInt(cls.getField("status_bar_height").get(cls.newInstance()).toString()));
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public static boolean l(Context context) {
        try {
            return ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo() != null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean m(Context context) {
        if (context == null) {
            return false;
        }
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                return activeNetworkInfo.isConnected();
            }
            return false;
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                p0.b("SameTools", "isNetworkAvailable", e10);
            }
            return false;
        }
    }

    public static boolean n(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                return "wifi".equals(activeNetworkInfo.getTypeName().toLowerCase(Locale.US));
            }
            return false;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static String a(String str, String str2, String str3) {
        try {
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
                HashMap hashMap = new HashMap();
                hashMap.put(str2, str3);
                return a(str, hashMap);
            }
            return str;
        } catch (Exception e10) {
            p0.b("SameTools", e10.getMessage());
            return str;
        }
    }

    public static synchronized String d(String str) {
        synchronized (u0.class) {
            String str2 = com.mbridge.msdk.foundation.controller.c.m().b() + "_" + str;
            Map<String, String> map = f27517e;
            if (map == null || !map.containsKey(str2)) {
                return null;
            }
            return f27517e.get(str2);
        }
    }

    public static <T extends String> boolean j(T t10) {
        return t10 != null && t10.length() > 0;
    }

    public static int f(String str) {
        try {
            return ((Integer) Class.forName("com.tencent.mm.opensdk.openapi.IWXAPI").getMethod("getWXAppSupportAPI", new Class[0]).invoke(l0.d(str), new Object[0])).intValue();
        } catch (Throwable th2) {
            p0.b("SameTools", th2.getMessage());
            return 0;
        }
    }

    public static Object g(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return Class.forName("com.tencent.mm.opensdk.openapi.WXAPIFactory").getMethod("createWXAPI", Context.class, String.class).invoke(null, com.mbridge.msdk.foundation.controller.c.m().d(), str);
        } catch (ClassNotFoundException e10) {
            p0.b("SameTools", e10.getMessage());
            return null;
        } catch (IllegalAccessException e11) {
            p0.b("SameTools", e11.getMessage());
            return null;
        } catch (NoSuchMethodException e12) {
            p0.b("SameTools", e12.getMessage());
            return null;
        } catch (InvocationTargetException e13) {
            p0.b("SameTools", e13.getMessage());
            return null;
        }
    }

    public static boolean h(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            Uri parse = Uri.parse(str);
            if (parse != null) {
                String queryParameter = parse.getQueryParameter(MBridgeConstans.DYNAMIC_VIEW_CAN_ANIM);
                if (TextUtils.isEmpty(queryParameter)) {
                    return false;
                }
                return queryParameter.equals("1");
            }
            return false;
        } catch (Exception e10) {
            p0.b("SameTools", e10.getMessage());
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0039  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean i(java.lang.String r4) {
        /*
            boolean r0 = android.text.TextUtils.isEmpty(r4)
            r1 = 0
            if (r0 == 0) goto L8
            return r1
        L8:
            android.net.Uri r4 = android.net.Uri.parse(r4)     // Catch: java.lang.Exception -> L27 java.lang.Throwable -> L49
            if (r4 == 0) goto L3f
            java.lang.String r0 = "dyview"
            java.lang.String r0 = r4.getQueryParameter(r0)     // Catch: java.lang.Exception -> L27 java.lang.Throwable -> L49
            boolean r2 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Exception -> L27 java.lang.Throwable -> L49
            r3 = 1
            if (r2 != 0) goto L2a
            int r0 = java.lang.Integer.parseInt(r0)     // Catch: java.lang.Exception -> L20 java.lang.Throwable -> L49
            goto L21
        L20:
            r0 = -1
        L21:
            int r0 = r0 % 2
            if (r0 != 0) goto L2a
            r0 = r3
            goto L2b
        L27:
            r4 = move-exception
            r0 = r1
            goto L40
        L2a:
            r0 = r1
        L2b:
            java.lang.String r2 = "natmp"
            java.lang.String r4 = r4.getQueryParameter(r2)     // Catch: java.lang.Exception -> L3b java.lang.Throwable -> L3d
            boolean r4 = android.text.TextUtils.isEmpty(r4)     // Catch: java.lang.Exception -> L3b java.lang.Throwable -> L3d
            if (r4 != 0) goto L39
            r1 = r3
            goto L3f
        L39:
            r1 = r0
            goto L3f
        L3b:
            r4 = move-exception
            goto L40
        L3d:
            r1 = r0
            goto L49
        L3f:
            return r1
        L40:
            java.lang.String r2 = "SameTools"
            java.lang.String r4 = r4.getMessage()     // Catch: java.lang.Throwable -> L3d
            com.mbridge.msdk.foundation.tools.p0.b(r2, r4)     // Catch: java.lang.Throwable -> L3d
        L49:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.tools.u0.i(java.lang.String):boolean");
    }

    public static boolean j() {
        try {
            if (com.mbridge.msdk.foundation.controller.c.m().d() == null) {
                return false;
            }
            String property = System.getProperty("http.proxyHost");
            String property2 = System.getProperty("http.proxyPort");
            if (property2 == null) {
                property2 = "-1";
            }
            int parseInt = Integer.parseInt(property2);
            p0.a("address = ", property + "~");
            p0.a("port = ", parseInt + "~");
            return (TextUtils.isEmpty(property) || parseInt == -1) ? false : true;
        } catch (Throwable th2) {
            p0.b("SameTools", th2.getMessage());
            return false;
        }
    }

    public static boolean l(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            Uri parse = Uri.parse(str);
            if (parse != null) {
                String queryParameter = parse.getQueryParameter(MBridgeConstans.ENDCARD_URL_IS_PLAYABLE);
                if (TextUtils.isEmpty(queryParameter)) {
                    return false;
                }
                return queryParameter.equals(MBridgeConstans.ENDCARD_URL_TYPE_PL);
            }
            return false;
        } catch (Exception e10) {
            p0.b("SameTools", e10.getMessage());
            return false;
        }
    }

    public static String c(String str) {
        ConcurrentHashMap<String, com.mbridge.msdk.foundation.entity.c> c10;
        List<String> c11;
        if (TextUtils.isEmpty(str) || (c10 = com.mbridge.msdk.foundation.same.buffer.b.c(str)) == null || c10.size() <= 0) {
            return "";
        }
        ArrayList arrayList = new ArrayList();
        for (com.mbridge.msdk.foundation.entity.c cVar : c10.values()) {
            if (cVar != null && a(cVar.e(), cVar.f()) && (c11 = cVar.c()) != null && c11.size() > 0) {
                arrayList.addAll(c11);
            }
        }
        if (arrayList.size() > 0) {
            HashSet hashSet = new HashSet(arrayList);
            arrayList.clear();
            arrayList.addAll(hashSet);
            return arrayList.toString();
        }
        return "";
    }

    public static BitmapDrawable n(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            byte[] decode = Base64.decode(str, 0);
            Bitmap decodeByteArray = BitmapFactory.decodeByteArray(decode, 0, decode.length);
            if (decodeByteArray != null) {
                BitmapDrawable bitmapDrawable = new BitmapDrawable(decodeByteArray);
                Shader.TileMode tileMode = Shader.TileMode.REPEAT;
                bitmapDrawable.setTileModeXY(tileMode, tileMode);
                return bitmapDrawable;
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        return null;
    }

    public static String d() {
        String str;
        try {
            str = UUID.randomUUID().toString() + System.currentTimeMillis();
        } catch (Throwable th2) {
            th2.printStackTrace();
            str = "";
        }
        if (z0.a(str)) {
            return System.currentTimeMillis() + "";
        }
        return str;
    }

    public static double m(String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                return Double.parseDouble(str);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return 0.0d;
    }

    public static String a(String str, Map<String, String> map) {
        try {
            if (!TextUtils.isEmpty(str) && map != null) {
                StringBuilder sb2 = new StringBuilder(str);
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    if (entry != null && !TextUtils.isEmpty(entry.getKey()) && !TextUtils.isEmpty(entry.getValue())) {
                        String value = entry.getValue();
                        if (str.contains(entry.getKey())) {
                            if (value.equals(MBridgeConstans.ENDCARD_URL_TYPE_PL)) {
                                sb2 = new StringBuilder(str.replaceAll("(" + entry.getKey() + "[^&]*)", ""));
                            } else {
                                sb2 = new StringBuilder(str.replaceAll("(" + entry.getKey() + "[^&]*)", entry.getKey() + entry.getValue()));
                            }
                        } else if (!value.equals(MBridgeConstans.ENDCARD_URL_TYPE_PL)) {
                            sb2.append(entry.getKey() + entry.getValue());
                        }
                    }
                }
                return sb2.toString();
            }
            return str;
        } catch (Exception e10) {
            p0.b("SameTools", e10.getMessage());
            return str;
        }
    }

    public static final synchronized String e(String str) {
        String str2;
        int i10;
        boolean z10;
        int i11;
        boolean z11;
        JSONObject jSONObject;
        Map<String, String> map;
        synchronized (u0.class) {
            try {
                str2 = com.mbridge.msdk.foundation.controller.c.m().b() + "_" + str;
                com.mbridge.msdk.setting.g d10 = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
                if (d10 != null) {
                    z10 = d10.A0();
                    z11 = d10.H0();
                    i11 = Math.max(0, d10.b0());
                } else {
                    z10 = true;
                    i11 = 3;
                    z11 = false;
                }
            } catch (Exception e10) {
                p0.b("SameTools", e10.getMessage());
            } finally {
            }
            if (z11 && i11 != 0) {
                if (z10 && (map = f27516d) != null && map.containsKey(str2)) {
                    return f27516d.get(str2);
                }
                StringBuilder sb2 = new StringBuilder("");
                StackTraceElement[] stackTrace = new Exception().getStackTrace();
                if (stackTrace != null && stackTrace.length > 0) {
                    List<String> a10 = a(stackTrace);
                    Collections.reverse(a10);
                    ArrayList arrayList = new ArrayList();
                    for (String str3 : a10) {
                        if (!str3.startsWith(MBridgeConstans.APPLICATION_STACK_COM_ANDROID) && !str3.startsWith(MBridgeConstans.APPLICATION_STACK_ANDROID_OS) && !str3.startsWith(MBridgeConstans.APPLICATION_STACK_ANDROID_APP) && !str3.startsWith(MBridgeConstans.APPLICATION_STACK_REFLECT_METHOD) && !str3.startsWith(MBridgeConstans.APPLICATION_STACK_ANDROID_VIEW) && !arrayList.contains(str3)) {
                            arrayList.add(str3);
                        }
                    }
                    int min = Math.min(arrayList.size(), i11);
                    if (min > 0) {
                        for (i10 = 0; i10 < min; i10++) {
                            sb2.append((String) arrayList.get(i10));
                            if (i10 < min - 1) {
                                sb2.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
                            }
                        }
                    }
                    if (TextUtils.isEmpty(sb2.toString())) {
                        jSONObject = null;
                    } else {
                        jSONObject = new JSONObject();
                        jSONObject.put("1", sb2.toString());
                    }
                    if (jSONObject != null && jSONObject.length() > 0) {
                        String b10 = com.mbridge.msdk.foundation.tools.a.b(jSONObject.toString());
                        if (z10 && !TextUtils.isEmpty(b10)) {
                            if (f27516d == null) {
                                f27516d = new HashMap();
                            }
                            f27516d.put(str2, b10);
                        }
                        return b10;
                    }
                    return "";
                }
                return "";
            }
            return "";
        }
    }

    public static <T extends String> boolean k(T t10) {
        return t10 == null || t10.length() == 0;
    }

    public static int b(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        try {
            Uri parse = Uri.parse(str);
            if (parse != null) {
                String queryParameter = parse.getQueryParameter(MBridgeConstans.DYNAMIC_VIEW_KEY_DY_VIEW);
                if (TextUtils.isEmpty(queryParameter)) {
                    queryParameter = parse.getQueryParameter(MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW);
                }
                if (TextUtils.isEmpty(queryParameter)) {
                    return -1;
                }
                try {
                    return Integer.parseInt(queryParameter);
                } catch (Exception unused) {
                    return -1;
                }
            }
            return -1;
        } catch (Exception e10) {
            p0.b("SameTools", e10.getMessage());
            return -1;
        }
    }

    public static void f() {
        try {
            HandlerThread handlerThread = new HandlerThread("mb_db_thread");
            handlerThread.start();
            Handler handler = new Handler(handlerThread.getLooper());
            MBDownloadConfig.Builder builder = new MBDownloadConfig.Builder();
            builder.setDatabaseHandler(handler);
            builder.setDatabaseOpenHelper(new b());
            builder.setLogger(new c());
            MBDownloadManager.getInstance().initialize(com.mbridge.msdk.foundation.controller.c.m().d(), builder.build(), new ResourceConfig.Builder().setMaxStorageSpace(100L).setMaxStorageTime(259200000L).build());
        } catch (Throwable th2) {
            p0.b("SameTools", th2.getMessage());
        }
    }

    public static boolean h() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static synchronized int d(Context context, String str) {
        int i10;
        synchronized (u0.class) {
            if (context != null) {
                if (!TextUtils.isEmpty(str)) {
                    try {
                        i10 = a(str, context);
                    } catch (Exception unused) {
                        i10 = 3;
                    }
                }
            }
            if (context == null) {
                i10 = 5;
            } else {
                i10 = TextUtils.isEmpty(str) ? 2 : 4;
            }
        }
        return i10;
    }

    public static boolean g() {
        if (TextUtils.isEmpty(com.mbridge.msdk.foundation.controller.c.m().i())) {
            return false;
        }
        try {
            Class.forName("com.tencent.mm.opensdk.openapi.WXAPIFactory");
            Class.forName("com.tencent.mm.opensdk.modelbiz.WXLaunchMiniProgram");
            return true;
        } catch (ClassNotFoundException e10) {
            p0.b("SameTools", e10.getMessage());
            return false;
        }
    }

    public static boolean i() {
        NetworkInfo networkInfo;
        try {
            ConnectivityManager a10 = g0.a();
            if (a10 != null && (networkInfo = a10.getNetworkInfo(17)) != null) {
                return networkInfo.isConnected();
            }
            return false;
        } catch (Exception e10) {
            p0.b("SameTools", e10.getMessage());
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0041 A[Catch: Exception -> 0x001b, LOOP:0: B:19:0x003f->B:20:0x0041, LOOP_END, TryCatch #0 {Exception -> 0x001b, blocks: (B:2:0x0000, B:4:0x0012, B:7:0x001d, B:9:0x0024, B:11:0x002b, B:13:0x0035, B:17:0x003b, B:20:0x0041, B:21:0x0049, B:23:0x004f), top: B:28:0x0000 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String b(int r4) {
        /*
            com.mbridge.msdk.setting.h r0 = com.mbridge.msdk.setting.h.b()     // Catch: java.lang.Exception -> L1b
            com.mbridge.msdk.foundation.controller.c r1 = com.mbridge.msdk.foundation.controller.c.m()     // Catch: java.lang.Exception -> L1b
            java.lang.String r1 = r1.b()     // Catch: java.lang.Exception -> L1b
            com.mbridge.msdk.setting.g r0 = r0.d(r1)     // Catch: java.lang.Exception -> L1b
            if (r0 != 0) goto L1d
            com.mbridge.msdk.setting.h r0 = com.mbridge.msdk.setting.h.b()     // Catch: java.lang.Exception -> L1b
            com.mbridge.msdk.setting.g r0 = r0.a()     // Catch: java.lang.Exception -> L1b
            goto L1d
        L1b:
            r4 = move-exception
            goto L54
        L1d:
            org.json.JSONArray r1 = new org.json.JSONArray     // Catch: java.lang.Exception -> L1b
            r1.<init>()     // Catch: java.lang.Exception -> L1b
            if (r0 == 0) goto L49
            int r0 = r0.m()     // Catch: java.lang.Exception -> L1b
            r2 = 1
            if (r0 != r2) goto L49
            com.mbridge.msdk.foundation.db.middle.a r0 = com.mbridge.msdk.foundation.db.middle.a.b()     // Catch: java.lang.Exception -> L1b
            java.lang.String[] r0 = r0.a()     // Catch: java.lang.Exception -> L1b
            if (r0 == 0) goto L49
            int r2 = r0.length     // Catch: java.lang.Exception -> L1b
            if (r2 <= r4) goto L3e
            if (r4 != 0) goto L3b
            goto L3e
        L3b:
            int r4 = r2 - r4
            goto L3f
        L3e:
            r4 = 0
        L3f:
            if (r4 >= r2) goto L49
            r3 = r0[r4]     // Catch: java.lang.Exception -> L1b
            r1.put(r3)     // Catch: java.lang.Exception -> L1b
            int r4 = r4 + 1
            goto L3f
        L49:
            int r4 = r1.length()     // Catch: java.lang.Exception -> L1b
            if (r4 <= 0) goto L57
            java.lang.String r4 = a(r1)     // Catch: java.lang.Exception -> L1b
            goto L59
        L54:
            r4.printStackTrace()
        L57:
            java.lang.String r4 = ""
        L59:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.tools.u0.b(int):java.lang.String");
    }

    public static String a(String str) {
        try {
            if (z0.b(str)) {
                return URLEncoder.encode(str, "utf-8");
            }
            return "";
        } catch (Throwable th2) {
            p0.b("SameTools", th2.getMessage(), th2);
            return "";
        }
    }

    public static final String c() {
        return MIMManager.b().d();
    }

    public static synchronized boolean c(Context context, String str) {
        synchronized (u0.class) {
            if (context != null) {
                if (!TextUtils.isEmpty(str)) {
                    return a(str, context);
                }
            }
            return false;
        }
    }

    public static void a(ImageView imageView) {
        if (imageView == null) {
            return;
        }
        try {
            imageView.setImageResource(0);
            imageView.setImageDrawable(null);
            imageView.setImageURI(null);
            imageView.setImageBitmap(null);
        } catch (Throwable th2) {
            if (MBridgeConstans.DEBUG) {
                th2.printStackTrace();
            }
        }
    }

    public static boolean c(CampaignEx campaignEx) {
        if (campaignEx != null) {
            try {
                return campaignEx.getRetarget_offer() == 1;
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return false;
    }

    public static JSONArray b(Context context, String str) {
        JSONArray jSONArray = new JSONArray();
        try {
            com.mbridge.msdk.setting.g d10 = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
            if (d10 == null) {
                d10 = com.mbridge.msdk.setting.h.b().a();
            }
            if (d10 != null && d10.m() == 1) {
                p0.c("SameTools", "fqci cfc:" + d10.m());
                String[] a10 = com.mbridge.msdk.foundation.db.middle.a.b().a();
                if (a10 != null) {
                    for (String str2 : a10) {
                        p0.c("SameTools", "cfc campaignIds:" + a10);
                        jSONArray.put(str2);
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return jSONArray;
    }

    public static int c(String str, String str2) {
        return a(str, str2, 0);
    }

    public static final void a(int i10, ImageView imageView, CampaignEx campaignEx, Context context, boolean z10, com.mbridge.msdk.foundation.feedback.a aVar) {
        if (imageView == null || campaignEx == null) {
            return;
        }
        p0.a("configPrivacyButton", "configPrivacyButton");
        boolean z11 = campaignEx.getPrivacyButtonTemplateVisibility() == 0;
        p0.a("configPrivacyButton", "privacyButtonVisibilityGone: " + z11 + " isIgnoreCampaignPrivacyConfig: " + z10);
        if (!z10 && z11) {
            try {
                imageView.setVisibility(8);
            } catch (Exception e10) {
                p0.b("SameTools", e10.getMessage());
            }
        } else if (TextUtils.isEmpty(a(campaignEx))) {
            try {
                imageView.setVisibility(8);
            } catch (Exception e11) {
                p0.b("SameTools", e11.getMessage());
            }
        } else {
            try {
                imageView.setVisibility(0);
            } catch (Exception e12) {
                p0.b("SameTools", e12.getMessage());
            }
            imageView.setOnClickListener(new a(imageView, campaignEx, aVar, i10));
        }
    }

    public static int b() {
        int i10 = f27513a;
        f27513a = i10 + 1;
        return i10;
    }

    public static boolean b(CampaignEx campaignEx) {
        if (campaignEx != null) {
            return !TextUtils.isEmpty(campaignEx.getDeepLinkURL());
        }
        return false;
    }

    public static boolean b(String str, Context context) {
        try {
            return context.getPackageManager().checkPermission(str, context.getPackageName()) == 0;
        } catch (Exception unused) {
            return false;
        }
    }

    public static String a(CampaignEx campaignEx) {
        com.mbridge.msdk.setting.g d10;
        CampaignEx.a adchoice;
        String str = "";
        if (campaignEx != null) {
            try {
                str = campaignEx.getPrivacyUrl();
            } catch (Exception e10) {
                p0.b("SameTools", e10.getMessage());
                return "";
            }
        }
        if (TextUtils.isEmpty(str) && campaignEx != null && (adchoice = campaignEx.getAdchoice()) != null) {
            str = adchoice.c();
        }
        if (TextUtils.isEmpty(str) && (d10 = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b())) != null) {
            str = d10.c();
        }
        return TextUtils.isEmpty(str) ? com.mbridge.msdk.foundation.same.net.utils.d.h().f27164g : str;
    }

    public static List<String> b(JSONArray jSONArray) {
        if (jSONArray != null) {
            try {
                if (jSONArray.length() > 0) {
                    ArrayList arrayList = new ArrayList();
                    for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                        String optString = jSONArray.optString(i10);
                        if (z0.b(optString)) {
                            arrayList.add(optString);
                        }
                    }
                    return arrayList;
                }
                return null;
            } catch (Throwable th2) {
                p0.b("SameTools", th2.getMessage(), th2);
                return null;
            }
        }
        return null;
    }

    public static int e() {
        try {
            return ((Integer) Class.forName("com.tencent.mm.opensdk.constants.Build").getField("SDK_INT").get(null)).intValue();
        } catch (Throwable th2) {
            p0.b("SameTools", th2.getMessage());
            return 0;
        }
    }

    public static synchronized void b(String str, String str2) {
        synchronized (u0.class) {
            try {
                if (f27517e == null) {
                    f27517e = new HashMap();
                }
                f27517e.put(com.mbridge.msdk.foundation.controller.c.m().b() + "_" + str, str2);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void a(CampaignEx campaignEx, com.mbridge.msdk.foundation.feedback.a aVar, int i10, String str) {
        if (campaignEx == null) {
            return;
        }
        try {
            String str2 = campaignEx.getCampaignUnitId() + "_" + i10;
            com.mbridge.msdk.foundation.feedback.b.b().d(str2);
            com.mbridge.msdk.foundation.feedback.b.b().a(str2, campaignEx);
            com.mbridge.msdk.foundation.feedback.b.b().a(str2, aVar);
            com.mbridge.msdk.foundation.feedback.b.b().a(str2, i10);
            com.mbridge.msdk.foundation.feedback.b.b().a(str2, str);
            com.mbridge.msdk.foundation.feedback.b.b().b(str2).p();
        } catch (Throwable th2) {
            p0.b("SameTools", "feedback error", th2);
        }
    }

    public static int b(Context context, float f10) {
        float f11 = 2.5f;
        if (context != null) {
            try {
                float f12 = context.getResources().getDisplayMetrics().density;
                if (f12 != 0.0f) {
                    f11 = f12;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return (int) ((f10 / f11) + 0.5f);
    }

    public static String b(String str, String str2, String str3) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                JSONObject jSONObject2 = jSONObject.getJSONObject("device");
                if (jSONObject2 == null) {
                    return str;
                }
                if (jSONObject2.has(str2)) {
                    if (str3.equals(MBridgeConstans.ENDCARD_URL_TYPE_PL)) {
                        jSONObject2.remove(str2);
                    } else {
                        jSONObject2.put(str2, str3);
                    }
                } else if (str3.equals(MBridgeConstans.ENDCARD_URL_TYPE_PL)) {
                    return str;
                } else {
                    jSONObject2.put(str2, str3);
                }
                return jSONObject.toString();
            } catch (Exception e10) {
                p0.b("SameTools", e10.getMessage());
            }
        }
        return str;
    }

    public static int a(Context context, float f10) {
        Resources resources;
        if (context == null || (resources = context.getResources()) == null) {
            return 0;
        }
        return (int) ((f10 * resources.getDisplayMetrics().density) + 0.5f);
    }

    public static double a(Double d10) {
        try {
            String format = new DecimalFormat("0.00", DecimalFormatSymbols.getInstance(Locale.US)).format(d10);
            if (z0.b(format)) {
                return Double.parseDouble(format);
            }
            return 0.0d;
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0.0d;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x001f, code lost:
        if (r2 != null) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0028, code lost:
        if (r2 == null) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x002a, code lost:
        r2.close();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long a(java.io.File r4) throws java.lang.Exception {
        /*
            r0 = 0
            r2 = 0
            boolean r3 = r4.exists()     // Catch: java.lang.Throwable -> L1a java.lang.Exception -> L28
            if (r3 == 0) goto L1c
            java.io.FileInputStream r3 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L1a java.lang.Exception -> L28
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L1a java.lang.Exception -> L28
            int r4 = r3.available()     // Catch: java.lang.Throwable -> L15 java.lang.Exception -> L18
            long r0 = (long) r4
            r2 = r3
            goto L1f
        L15:
            r4 = move-exception
            r2 = r3
            goto L22
        L18:
            r2 = r3
            goto L28
        L1a:
            r4 = move-exception
            goto L22
        L1c:
            r4.createNewFile()     // Catch: java.lang.Throwable -> L1a java.lang.Exception -> L28
        L1f:
            if (r2 == 0) goto L2d
            goto L2a
        L22:
            if (r2 == 0) goto L27
            r2.close()     // Catch: java.lang.Exception -> L27
        L27:
            throw r4
        L28:
            if (r2 == 0) goto L2d
        L2a:
            r2.close()     // Catch: java.lang.Exception -> L2d
        L2d:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.tools.u0.a(java.io.File):long");
    }

    public static String a(JSONArray jSONArray) {
        if (jSONArray == null) {
            return "";
        }
        com.mbridge.msdk.setting.g d10 = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        if (d10 == null) {
            d10 = com.mbridge.msdk.setting.h.b().a();
        }
        int W = d10.W();
        if (jSONArray.length() > W) {
            JSONArray jSONArray2 = new JSONArray();
            for (int i10 = 0; i10 < W; i10++) {
                try {
                    jSONArray2.put(jSONArray.get(i10));
                } catch (JSONException e10) {
                    e10.printStackTrace();
                }
            }
            return jSONArray2.toString();
        }
        return jSONArray.toString();
    }

    public static String a(Context context, String str) {
        String str2 = "";
        try {
            JSONArray b10 = b(context, str);
            if (b10.length() > 0) {
                str2 = a(b10);
            }
            p0.c("SameTools", "get excludes:" + str2);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return str2;
    }

    private static boolean a(long j10, long j11) {
        long currentTimeMillis = System.currentTimeMillis();
        if (j10 > 0) {
            return j11 + (j10 * 1000) >= currentTimeMillis;
        }
        com.mbridge.msdk.setting.g d10 = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        if (d10 == null) {
            d10 = com.mbridge.msdk.setting.h.b().a();
        }
        return j11 + (d10.a0() * 1000) >= currentTimeMillis;
    }

    public static final int a() {
        if (f27514b == null) {
            try {
                f27514b = MIMManager.b().e();
            } catch (Exception e10) {
                p0.b("SameTools", e10.getMessage());
            }
        }
        if (f27514b != null) {
            return f27514b.booleanValue() ? 1 : 0;
        }
        return -1;
    }

    public static synchronized String a(Context context, String str, String str2) {
        String sb2;
        synchronized (u0.class) {
            StringBuilder sb3 = new StringBuilder(str2);
            try {
                sb3.append(a(str2, context, str));
            } catch (Exception unused) {
            }
            sb2 = sb3.toString();
        }
        return sb2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v4, types: [boolean] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0025 -> B:26:0x002c). Please submit an issue!!! */
    private static synchronized String a(String str, Context context, String str2) {
        StringBuilder sb2;
        Context context2;
        String sb3;
        synchronized (u0.class) {
            try {
                try {
                    Set<String> queryParameterNames = Uri.parse(str).getQueryParameterNames();
                    if (queryParameterNames != null && queryParameterNames.size() > 0) {
                        sb2 = new StringBuilder("&rtins_type=");
                        context2 = context;
                    } else {
                        sb2 = new StringBuilder("?rtins_type=");
                        context2 = context;
                    }
                } catch (Exception unused) {
                    sb2 = new StringBuilder("&rtins_type=");
                    context2 = context;
                }
                try {
                    context = a(str2, context2);
                    if (context != 0) {
                        sb2.append(1);
                    } else {
                        sb2.append(2);
                    }
                } catch (Exception unused2) {
                    sb2.append(0);
                }
                sb3 = sb2.toString();
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return sb3;
    }

    static boolean a(String str, Context context) {
        if (context != null && !TextUtils.isEmpty(str)) {
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager == null) {
                    return false;
                }
                if (packageManager.getPackageInfo(str, 1) != null) {
                    return true;
                }
            } catch (Throwable th2) {
                if (MBridgeConstans.DEBUG) {
                    p0.a("SameTools", th2.getMessage());
                }
            }
        }
        return false;
    }

    public static List<String> a(StackTraceElement[] stackTraceElementArr) {
        ArrayList arrayList = new ArrayList();
        if (stackTraceElementArr != null && stackTraceElementArr.length > 0) {
            for (StackTraceElement stackTraceElement : stackTraceElementArr) {
                arrayList.add(stackTraceElement.getClassName());
            }
        }
        return arrayList;
    }

    public static ImageView a(ImageView imageView, BitmapDrawable bitmapDrawable, DisplayMetrics displayMetrics) {
        try {
            bitmapDrawable.setTargetDensity(displayMetrics);
            imageView.setBackground(bitmapDrawable);
            imageView.setClickable(false);
            imageView.setFocusable(false);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return imageView;
    }

    public static void a(View view) {
        if (view == null) {
            return;
        }
        try {
            view.setSystemUiVisibility(4102);
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    public static void a(String str, CampaignEx campaignEx, int i10) {
        try {
            if (TextUtils.isEmpty(str) || campaignEx == null || com.mbridge.msdk.foundation.controller.c.m().d() == null) {
                return;
            }
            com.mbridge.msdk.foundation.db.i a10 = com.mbridge.msdk.foundation.db.i.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
            com.mbridge.msdk.foundation.entity.f fVar = new com.mbridge.msdk.foundation.entity.f();
            fVar.a(System.currentTimeMillis());
            fVar.b(str);
            fVar.a(campaignEx.getId());
            fVar.a(i10);
            a10.a(fVar);
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                p0.b("SameTools", e10.getMessage());
            }
        }
    }

    public static boolean a(JSONObject jSONObject) {
        return (jSONObject == null || jSONObject.length() == 0 || jSONObject.optInt("v", -1) != -1) ? false : true;
    }

    public static boolean a(String str, String str2) {
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str)) {
            try {
                try {
                    Uri parse = Uri.parse(str2);
                    if (parse != null) {
                        return !TextUtils.isEmpty(parse.getQueryParameter(str));
                    }
                    return false;
                } catch (Exception e10) {
                    p0.b("SameTools", e10.getMessage());
                }
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    public static int a(Object obj) {
        if (obj != null) {
            try {
                if (obj instanceof String) {
                    return Integer.parseInt((String) obj);
                }
            } catch (Throwable th2) {
                p0.b("SameTools", th2.getMessage(), th2);
            }
        }
        return 0;
    }

    public static int a(String str, String str2, int i10) {
        if (TextUtils.isEmpty(str)) {
            return i10;
        }
        try {
            Uri parse = Uri.parse(str);
            if (parse != null) {
                String queryParameter = parse.getQueryParameter(str2);
                return TextUtils.isEmpty(queryParameter) ? i10 : (int) Math.round(Double.valueOf(String.valueOf(queryParameter)).doubleValue());
            }
        } catch (Exception e10) {
            p0.b("SameTools", e10.getMessage());
        }
        return i10;
    }
}
