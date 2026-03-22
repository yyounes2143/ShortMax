package kc;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.applog.IDataObserver;
import com.pandora.common.applog.AppLogWrapper;
import com.pandora.ttlicense2.LicenseManager;
import com.pandora.vod.VodSDK;
import java.lang.reflect.InvocationTargetException;
import mc.b;
import org.json.JSONObject;
/* compiled from: Env.java */
/* loaded from: classes6.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static lc.a f60707a = null;

    /* renamed from: b  reason: collision with root package name */
    private static boolean f60708b = true;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f60709c = true;

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ int f60710d = 0;

    private a() {
    }

    public static String d() {
        return g().b();
    }

    public static String e() {
        return g().c();
    }

    public static String f() {
        return g().d();
    }

    @Nullable
    public static synchronized lc.a g() {
        lc.a aVar;
        synchronized (a.class) {
            aVar = f60707a;
        }
        return aVar;
    }

    private static String h() {
        if (mc.a.c() && AppLogWrapper.getAppLogInstance() != null) {
            String did = AppLogWrapper.getDid();
            if (TextUtils.isEmpty(did)) {
                AppLogWrapper.getAppLogInstance().addDataObserver(new C0845a());
                return did;
            }
            return did;
        }
        return "";
    }

    public static String i() {
        return "1.42.3.107";
    }

    public static void j(@NonNull lc.a aVar) {
        t(aVar);
        b.a("Env", "init TTSDK Version " + i() + " " + aVar);
        l(aVar);
        k(aVar);
        r(aVar);
        m();
    }

    public static void k(lc.a aVar) {
        boolean z10;
        if (!f60709c && !aVar.l()) {
            z10 = false;
        } else {
            z10 = true;
        }
        f60709c = z10;
        if (f60708b && mc.a.c() && aVar != null) {
            mc.a.b(aVar.f(), aVar.b(), aVar.d(), aVar.a(), f60709c, aVar.k());
        }
    }

    private static void l(lc.a aVar) {
        Context f10 = aVar.f();
        String h10 = aVar.h();
        if (f10 == null) {
            return;
        }
        try {
            LicenseManager.init(f10);
            if (!TextUtils.isEmpty(h10)) {
                LicenseManager.getInstance().addLicense(h10, aVar.g());
            }
        } catch (Exception e10) {
            b.a("Env", "initLicense exception:" + e10);
        }
    }

    private static void m() {
        if (!TextUtils.isEmpty(h()) || !mc.a.c()) {
            n();
            o();
            p();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void n() {
        try {
            Class<?> cls = Class.forName("com.pandora.ttlivestrategy.TTLiveStrategySDK");
            cls.getMethod("init", lc.b.class).invoke(cls, g().i());
        } catch (ClassNotFoundException e10) {
            e10.printStackTrace();
        } catch (IllegalAccessException e11) {
            e11.printStackTrace();
        } catch (NoSuchMethodException e12) {
            e12.printStackTrace();
        } catch (InvocationTargetException e13) {
            e13.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void o() {
        try {
            Class<?> cls = Class.forName("com.pandora.live.player.TTVeLivePlayerSDK");
            cls.getMethod("setLogConfig", lc.b.class).invoke(cls, g().i());
        } catch (ClassNotFoundException e10) {
            e10.printStackTrace();
        } catch (IllegalAccessException e11) {
            e11.printStackTrace();
        } catch (NoSuchMethodException e12) {
            e12.printStackTrace();
        } catch (InvocationTargetException e13) {
            e13.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void p() {
        try {
            Class<?> cls = Class.forName("com.pandora.live.TTVeLivePusherSDK");
            cls.getMethod("setLogConfig", lc.b.class).invoke(cls, g().i());
        } catch (ClassNotFoundException e10) {
            e10.printStackTrace();
        } catch (IllegalAccessException e11) {
            e11.printStackTrace();
        } catch (NoSuchMethodException e12) {
            e12.printStackTrace();
        } catch (InvocationTargetException e13) {
            e13.printStackTrace();
        }
    }

    private static void q(lc.a aVar) {
        try {
            VodSDK.class.getMethod("initLog", Context.class, String.class).invoke(VodSDK.class, aVar.f(), "");
        } catch (Exception e10) {
            b.a("Env", "initVodLog " + e10);
            e10.printStackTrace();
        }
    }

    private static void r(lc.a aVar) {
        q(aVar);
        try {
            VodSDK.class.getMethod("init", lc.a.class).invoke(VodSDK.class, aVar);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void s(boolean z10) {
        f60708b = z10;
    }

    private static synchronized void t(lc.a aVar) {
        synchronized (a.class) {
            f60707a = aVar;
        }
    }

    public static void u(@NonNull lc.a aVar) {
        t(aVar);
        b.a("Env", "start TTSDK Version " + i() + " " + aVar);
        l(aVar);
        r(aVar);
        m();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Env.java */
    /* renamed from: kc.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static class C0845a implements IDataObserver {
        C0845a() {
        }

        @Override // com.bytedance.applog.IDataObserver
        public void onIdLoaded(String str, String str2, String str3) {
            b.d("Env", "getDeviceID addDataObserver,onIdLoaded:" + str + ",s1:" + str2 + ",s2:" + str3);
            a.n();
            a.o();
            a.p();
        }

        @Override // com.bytedance.applog.IDataObserver
        public void onRemoteIdGet(boolean z10, String str, String str2, String str3, String str4, String str5, String str6) {
            b.d("Env", "getDeviceID addDataObserver,onRemoteIdGet:" + str + ",s1:" + str2 + ",s2:" + str3);
            a.n();
            a.o();
            a.p();
        }

        @Override // com.bytedance.applog.IDataObserver
        public void onAbVidsChange(String str, String str2) {
        }

        @Override // com.bytedance.applog.IDataObserver
        public void onRemoteAbConfigGet(boolean z10, JSONObject jSONObject) {
        }

        @Override // com.bytedance.applog.IDataObserver
        public void onRemoteConfigGet(boolean z10, JSONObject jSONObject) {
        }
    }
}
