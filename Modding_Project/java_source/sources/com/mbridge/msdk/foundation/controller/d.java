package com.mbridge.msdk.foundation.controller;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.MBridgeSDK;
import com.mbridge.msdk.foundation.controller.a;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.same.report.h;
import com.mbridge.msdk.foundation.tools.FastKV;
import com.mbridge.msdk.foundation.tools.f;
import com.mbridge.msdk.foundation.tools.j0;
import com.mbridge.msdk.foundation.tools.l0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.interstitialvideo.out.MBInterstitialVideoHandler;
import com.mbridge.msdk.out.MBRewardVideoHandler;
import com.mbridge.msdk.out.MBridgeSDKFactory;
import com.mbridge.msdk.setting.g;
import com.mbridge.msdk.setting.j;
import com.unity3d.services.core.fid.Constants;
import java.util.List;
import java.util.Map;
/* compiled from: SDKController.java */
/* loaded from: classes5.dex */
public class d {

    /* renamed from: l  reason: collision with root package name */
    private static volatile d f26725l;

    /* renamed from: a  reason: collision with root package name */
    private int f26726a;

    /* renamed from: b  reason: collision with root package name */
    private Map<String, Object> f26727b;

    /* renamed from: c  reason: collision with root package name */
    private FastKV f26728c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f26729d = false;

    /* renamed from: e  reason: collision with root package name */
    private String f26730e;

    /* renamed from: f  reason: collision with root package name */
    private String f26731f;

    /* renamed from: g  reason: collision with root package name */
    private String f26732g;

    /* renamed from: h  reason: collision with root package name */
    private Context f26733h;

    /* renamed from: i  reason: collision with root package name */
    private String f26734i;

    /* renamed from: j  reason: collision with root package name */
    private com.mbridge.msdk.preload.a f26735j;

    /* renamed from: k  reason: collision with root package name */
    private String f26736k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SDKController.java */
    /* loaded from: classes5.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f26737a;

        a(Context context) {
            this.f26737a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.h(this.f26737a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SDKController.java */
    /* loaded from: classes5.dex */
    public class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Looper.prepare();
            d.this.g();
            d.this.d();
            Looper.loop();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SDKController.java */
    /* loaded from: classes5.dex */
    public class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d dVar = d.this;
            dVar.a(dVar.f26730e);
            new h(d.this.f26733h).a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SDKController.java */
    /* renamed from: com.mbridge.msdk.foundation.controller.d$d  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public class C0366d implements a.e {
        C0366d() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SDKController.java */
    /* loaded from: classes5.dex */
    public class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f26742a;

        e(String str) {
            this.f26742a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Thread.sleep(350L);
            } catch (InterruptedException e10) {
                p0.b("SDKController", e10.getMessage());
            }
            new j().b(d.this.f26733h, this.f26742a, d.this.f26731f);
        }
    }

    private d() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        try {
            com.mbridge.msdk.timer.b.class.getDeclaredMethod("start", new Class[0]).invoke(com.mbridge.msdk.timer.b.class.getMethod(Constants.GET_INSTANCE, new Class[0]).invoke(null, new Object[0]), new Object[0]);
        } catch (Throwable th2) {
            p0.b("SDKController", th2.getMessage(), th2);
        }
    }

    public boolean e() {
        return true;
    }

    private void c() {
        com.mbridge.msdk.foundation.controller.c.m().b(this.f26733h);
        com.mbridge.msdk.foundation.controller.c.m().e(this.f26730e);
        com.mbridge.msdk.foundation.controller.c.m().f(this.f26731f);
        com.mbridge.msdk.foundation.controller.c.m().d(this.f26736k);
        com.mbridge.msdk.foundation.controller.c.m().b(this.f26732g);
        com.mbridge.msdk.foundation.controller.c.m().c(new C0366d());
        try {
            com.mbridge.msdk.foundation.same.net.utils.d.h().j();
        } catch (Throwable th2) {
            p0.b("SDKController", th2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        List<com.mbridge.msdk.foundation.entity.a> g10;
        Object newInstance;
        Object newInstance2;
        try {
            g d10 = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
            if (d10 == null || (g10 = d10.g()) == null || g10.size() <= 0) {
                return;
            }
            for (com.mbridge.msdk.foundation.entity.a aVar : g10) {
                if (aVar.a() == 287) {
                    if (this.f26733h != null && (newInstance = MBInterstitialVideoHandler.class.getConstructor(String.class, String.class).newInstance("", aVar.b())) != null) {
                        MBInterstitialVideoHandler.class.getMethod("loadFormSelfFilling", new Class[0]).invoke(newInstance, new Object[0]);
                    }
                } else if (aVar.a() == 94 && (newInstance2 = MBRewardVideoHandler.class.getConstructor(String.class, String.class).newInstance("", aVar.b())) != null) {
                    MBRewardVideoHandler.class.getMethod("loadFormSelfFilling", new Class[0]).invoke(newInstance2, new Object[0]);
                }
            }
        } catch (Throwable th2) {
            p0.b("SDKController", th2.getMessage());
        }
    }

    public void b() {
        a(this.f26733h.getApplicationContext());
        try {
            com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new b());
            com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new c());
            com.mbridge.msdk.foundation.same.report.j.b();
        } catch (Exception unused) {
            p0.b("SDKController", "get app setting failed");
        }
        this.f26729d = true;
    }

    public static d a() {
        if (f26725l == null) {
            synchronized (d.class) {
                try {
                    if (f26725l == null) {
                        f26725l = new d();
                    }
                } finally {
                }
            }
        }
        return f26725l;
    }

    public void b(String str) {
        if (this.f26735j == null) {
            this.f26735j = new com.mbridge.msdk.preload.a();
        }
        try {
            Map<String, Object> map = this.f26727b;
            if (map == null || map.size() <= 0 || !this.f26727b.containsKey(MBridgeConstans.PROPERTIES_LAYOUT_TYPE)) {
                return;
            }
            int intValue = ((Integer) this.f26727b.get(MBridgeConstans.PROPERTIES_LAYOUT_TYPE)).intValue();
            if (intValue == 0) {
                this.f26735j.a(this.f26727b, this.f26726a);
            } else if (1 == intValue) {
                this.f26735j.a(this.f26727b);
            } else if (2 != intValue) {
                p0.b("SDKController", "unknow layout type in preload");
            } else {
                this.f26735j.b(this.f26727b);
            }
        } catch (Exception e10) {
            p0.b("SDKController", e10.getMessage());
        }
    }

    public void a(Map map, Context context) {
        Object obj;
        if (context != null) {
            if (!TextUtils.isEmpty(MBridgeConstans.DEVELOPER_CUSTOM_PACKAGE)) {
                com.mbridge.msdk.foundation.controller.c.m().c(MBridgeConstans.DEVELOPER_CUSTOM_PACKAGE);
            } else if (map.containsKey(MBridgeConstans.KEY_MBRIDGE_CUSTOM_PACKAGE_NAME) && (obj = map.get(MBridgeConstans.KEY_MBRIDGE_CUSTOM_PACKAGE_NAME)) != null) {
                String str = (String) obj;
                if (!TextUtils.isEmpty(str)) {
                    com.mbridge.msdk.foundation.controller.c.m().c(str);
                }
            }
            if (map != null) {
                if (map.containsKey(MBridgeConstans.ID_MBRIDGE_APPID)) {
                    this.f26730e = (String) map.get(MBridgeConstans.ID_MBRIDGE_APPID);
                }
                if (map.containsKey(MBridgeConstans.ID_MBRIDGE_APPKEY)) {
                    this.f26731f = (String) map.get(MBridgeConstans.ID_MBRIDGE_APPKEY);
                }
                if (map.containsKey(MBridgeConstans.ID_MBRIDGE_WX_APPID)) {
                    this.f26736k = (String) map.get(MBridgeConstans.ID_MBRIDGE_WX_APPID);
                }
                if (map.containsKey(MBridgeConstans.PACKAGE_NAME_MANIFEST)) {
                    this.f26732g = (String) map.get(MBridgeConstans.PACKAGE_NAME_MANIFEST);
                }
                if (map.containsKey(MBridgeConstans.ID_MBRIDGE_STARTUPCRASH)) {
                    this.f26734i = (String) map.get(MBridgeConstans.ID_MBRIDGE_STARTUPCRASH);
                }
            }
            this.f26733h = context.getApplicationContext();
            c();
            if (this.f26729d) {
                return;
            }
            b();
            l0.l(context);
            long x02 = com.mbridge.msdk.setting.h.b().b(this.f26730e).x0();
            if (x02 != 1300) {
                new Handler(Looper.getMainLooper()).postDelayed(new a(context), x02);
            }
        }
    }

    public void f() {
    }

    private void a(Context context) {
        String str;
        try {
            if (e() && this.f26728c == null) {
                try {
                    this.f26728c = new FastKV.Builder(com.mbridge.msdk.foundation.same.directory.e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_700_CONFIG), j0.a("H+tU+FeXHM==")).build();
                } catch (Exception unused) {
                    this.f26728c = null;
                }
            }
            FastKV fastKV = this.f26728c;
            String str2 = "";
            if (fastKV != null) {
                String string = fastKV.getString(j0.a("H+tU+bfPhM=="), "");
                String string2 = this.f26728c.getString(j0.a("H+tU+Fz8"), "");
                if (TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.V) && TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.f27025g)) {
                    com.mbridge.msdk.foundation.same.a.V = com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B);
                    com.mbridge.msdk.foundation.same.a.f27025g = com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("c");
                }
                if (TextUtils.isEmpty(string) && TextUtils.isEmpty(string2)) {
                    if (TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.V) && TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.f27025g)) {
                        return;
                    }
                    this.f26728c.putString(j0.a("H+tU+bfPhM=="), com.mbridge.msdk.foundation.same.a.V);
                    this.f26728c.putString(j0.a("H+tU+Fz8"), com.mbridge.msdk.foundation.same.a.f27025g);
                    return;
                }
                com.mbridge.msdk.foundation.same.a.V = string;
                com.mbridge.msdk.foundation.same.a.f27025g = string2;
                com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, com.mbridge.msdk.foundation.same.a.V);
                com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("c", com.mbridge.msdk.foundation.same.a.f27025g);
                return;
            }
            SharedPreferences sharedPreferences = context.getSharedPreferences(j0.a("H+tU+FeXHM=="), 0);
            if (sharedPreferences != null) {
                str2 = sharedPreferences.getString(j0.a("H+tU+bfPhM=="), "");
                str = sharedPreferences.getString(j0.a("H+tU+Fz8"), "");
            } else {
                str = "";
            }
            if (TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.V) && TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.f27025g)) {
                com.mbridge.msdk.foundation.same.a.V = com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B);
                com.mbridge.msdk.foundation.same.a.f27025g = com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("c");
            }
            if (TextUtils.isEmpty(str2) && TextUtils.isEmpty(str)) {
                if ((TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.V) && TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.f27025g)) || sharedPreferences == null) {
                    return;
                }
                SharedPreferences.Editor edit = sharedPreferences.edit();
                edit.putString(j0.a("H+tU+bfPhM=="), com.mbridge.msdk.foundation.same.a.V);
                edit.putString(j0.a("H+tU+Fz8"), com.mbridge.msdk.foundation.same.a.f27025g);
                edit.apply();
                return;
            }
            com.mbridge.msdk.foundation.same.a.V = str2;
            com.mbridge.msdk.foundation.same.a.f27025g = str;
            com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, com.mbridge.msdk.foundation.same.a.V);
            com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("c", com.mbridge.msdk.foundation.same.a.f27025g);
        } catch (Throwable th2) {
            p0.b("SDKController", th2.getMessage(), th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        if (com.mbridge.msdk.setting.h.b() == null) {
            return;
        }
        com.mbridge.msdk.setting.h b10 = com.mbridge.msdk.setting.h.b();
        if (b10 != null) {
            g d10 = b10.d(str);
            if (d10 != null) {
                MBridgeConstans.OMID_JS_SERVICE_URL = d10.U();
                MBridgeConstans.OMID_JS_H5_URL = d10.T();
                if (!TextUtils.isEmpty(d10.u())) {
                    com.mbridge.msdk.foundation.same.net.utils.d.h().f27166i = d10.u();
                    com.mbridge.msdk.foundation.same.net.utils.d.h().e();
                }
                if (!TextUtils.isEmpty(d10.v())) {
                    com.mbridge.msdk.foundation.same.net.utils.d.h().f27170m = d10.v();
                    com.mbridge.msdk.foundation.same.net.utils.d.h().f();
                }
            } else {
                MBridgeConstans.OMID_JS_SERVICE_URL = com.mbridge.msdk.setting.net.b.f29035b;
                MBridgeConstans.OMID_JS_H5_URL = com.mbridge.msdk.setting.net.b.f29034a;
            }
        }
        if (com.mbridge.msdk.setting.h.b().f(str) && com.mbridge.msdk.setting.h.b().a(str, 1, (String) null)) {
            if (com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("is_first_init", 0) == 0) {
                try {
                    com.mbridge.msdk.foundation.buffer.sharedperference.a.b().b("is_first_init", 1);
                    if (TextUtils.isEmpty(f.d())) {
                        com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new e(str));
                    } else {
                        new j().b(this.f26733h, str, this.f26731f);
                    }
                    return;
                } catch (Throwable unused) {
                    new j().b(this.f26733h, str, this.f26731f);
                    return;
                }
            }
            new j().b(this.f26733h, str, this.f26731f);
        }
    }

    public void a(Map<String, Object> map, int i10) {
        if (MBridgeSDKFactory.getMBridgeSDK().getStatus() != MBridgeSDK.PLUGIN_LOAD_STATUS.COMPLETED) {
            p0.b("SDKController", "preloaad failed,sdk do not inited");
            return;
        }
        this.f26727b = map;
        this.f26726a = i10;
        String b10 = com.mbridge.msdk.foundation.controller.c.m().b();
        if (map != null) {
            b(b10);
        }
    }
}
