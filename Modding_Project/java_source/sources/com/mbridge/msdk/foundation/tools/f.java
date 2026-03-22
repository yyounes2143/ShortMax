package com.mbridge.msdk.foundation.tools;

import android.content.ContentResolver;
import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import android.text.TextUtils;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.b;
import com.mbridge.msdk.mbsignalcommon.webEnvCheck.WebEnvCheckEntry;
import org.json.JSONObject;
/* compiled from: BaseSameDiTool.java */
/* loaded from: classes5.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    public static volatile String f27420a = null;

    /* renamed from: b  reason: collision with root package name */
    public static String f27421b = null;

    /* renamed from: c  reason: collision with root package name */
    public static boolean f27422c = false;

    /* renamed from: d  reason: collision with root package name */
    public static int f27423d = 0;

    /* renamed from: e  reason: collision with root package name */
    private static String f27424e = "";

    /* renamed from: f  reason: collision with root package name */
    private static boolean f27425f = false;

    /* renamed from: g  reason: collision with root package name */
    private static String f27426g = "";

    /* renamed from: h  reason: collision with root package name */
    private static boolean f27427h = false;

    /* renamed from: i  reason: collision with root package name */
    private static boolean f27428i = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BaseSameDiTool.java */
    /* loaded from: classes5.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f27429a;

        a(Context context) {
            this.f27429a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_DEVICE_ID) && com.mbridge.msdk.foundation.controller.authoritycontroller.b.i()) {
                try {
                    int i10 = AdvertisingIdClient.f19620a;
                    AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(this.f27429a);
                    f.a(advertisingIdInfo.getId());
                    f.f27423d = advertisingIdInfo.isLimitAdTrackingEnabled() ? 1 : 0;
                    f.b(this.f27429a, advertisingIdInfo.getId(), f.f27423d);
                } catch (Exception unused) {
                    p0.d("DomainSameDiTool", "GET ADID ERROR TRY TO GET FROM GOOGLE PLAY APP");
                    try {
                        b.C0378b a10 = new b().a(this.f27429a);
                        f.a(a10.a());
                        f.f27423d = a10.b() ? 1 : 0;
                        f.b(this.f27429a, a10.a(), f.f27423d);
                    } catch (Exception unused2) {
                        p0.d("DomainSameDiTool", "GET ADID FROM GOOGLE PLAY APP ERROR");
                    }
                } catch (Throwable th2) {
                    p0.b("DomainSameDiTool", th2.getMessage());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Context context, String str, int i10) {
        try {
            if (z0.b(str)) {
                x0.b(context, MBridgeConstans.SP_GA_ID, str);
            }
            x0.b(context, MBridgeConstans.SP_GA_ID_LIMIT, Integer.valueOf(i10));
        } catch (Exception e10) {
            p0.b("DomainSameDiTool", e10.getMessage());
        }
    }

    public static String c() {
        if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.l() && com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_DEVICE_ID)) {
            if (!com.mbridge.msdk.foundation.controller.authoritycontroller.b.i()) {
                return TextUtils.isEmpty(f27421b) ? "" : f27421b;
            } else if (TextUtils.isEmpty(f27421b)) {
                if (!f27422c) {
                    a(com.mbridge.msdk.foundation.controller.c.m().d());
                    f27422c = true;
                }
                return "";
            } else if (com.mbridge.msdk.foundation.controller.authoritycontroller.b.j()) {
                return f27421b;
            } else {
                return f27423d == 0 ? f27421b : "";
            }
        }
        return "";
    }

    public static String d() {
        if (!com.mbridge.msdk.foundation.controller.authoritycontroller.c.l() || !com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_DEVICE_ID)) {
            return "";
        }
        if (!com.mbridge.msdk.foundation.controller.authoritycontroller.b.i()) {
            if (TextUtils.isEmpty(f27420a)) {
                return "";
            }
            return f27420a;
        } else if (TextUtils.isEmpty(f27420a)) {
            l0.k();
            if (!f27422c) {
                a(com.mbridge.msdk.foundation.controller.c.m().d());
                f27422c = true;
            }
            if (TextUtils.isEmpty(f27420a)) {
                return "";
            }
            return f27420a;
        } else if (!com.mbridge.msdk.foundation.controller.authoritycontroller.b.j()) {
            if (f27423d != 0) {
                return "";
            }
            return f27420a;
        } else {
            return f27420a;
        }
    }

    public static String e() {
        if (TextUtils.isEmpty(f27426g) && !f27425f) {
            b();
        }
        return f27426g;
    }

    public static int a() {
        return f27423d;
    }

    public static void a(int i10) {
        f27423d = i10;
    }

    public static void a(Context context) {
        new Thread(new a(context)).start();
    }

    public static String b() {
        if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.l() && com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_DEVICE_ID)) {
            if (f27425f) {
                return f27424e;
            }
            try {
                JSONObject jSONObject = new JSONObject();
                try {
                    ContentResolver contentResolver = com.mbridge.msdk.foundation.controller.c.m().d().getContentResolver();
                    int i10 = Settings.Secure.getInt(contentResolver, "limit_ad_tracking");
                    String string = Settings.Secure.getString(contentResolver, "advertising_id");
                    jSONObject.put("status", i10);
                    jSONObject.put("amazonId", string);
                    String jSONObject2 = jSONObject.toString();
                    if (!TextUtils.isEmpty(jSONObject2)) {
                        f27426g = jSONObject2;
                        f27424e = j0.b(jSONObject2);
                    }
                } catch (Settings.SettingNotFoundException e10) {
                    p0.b("DomainSameDiTool", e10.getMessage());
                }
            } catch (Throwable th2) {
                p0.b("DomainSameDiTool", th2.getMessage());
            }
            f27425f = true;
            return f27424e;
        }
        return "";
    }

    public static void a(String str) {
        f27421b = j0.b(str);
        f27420a = str;
    }

    public static void c(Context context) {
        if (context == null) {
            return;
        }
        try {
            WebEnvCheckEntry.class.getMethod("check", Context.class).invoke(WebEnvCheckEntry.class.newInstance(), context);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static boolean b(Context context) {
        try {
        } catch (Exception unused) {
            f27427h = false;
        }
        if (f27428i) {
            return f27427h;
        }
        if (Build.VERSION.SDK_INT >= 30) {
            f27427h = context.getPackageManager().checkPermission(j0.a("DkP3hrKuHoPMH+zwL+fALkK/WQc5x5zH+TcincKNNVfWNVJcVM=="), context.getPackageName()) == 0;
        } else {
            f27427h = true;
        }
        f27428i = true;
        return f27427h;
    }
}
