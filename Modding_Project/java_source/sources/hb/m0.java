package hb;

import android.content.Context;
/* loaded from: classes5.dex */
public final class m0 {

    /* renamed from: b  reason: collision with root package name */
    private static m0 f52727b;

    /* renamed from: c  reason: collision with root package name */
    private static final Object f52728c = new Object();

    /* renamed from: a  reason: collision with root package name */
    private Context f52729a;

    private m0() {
    }

    public static m0 a() {
        if (f52727b == null) {
            d();
        }
        return f52727b;
    }

    private static synchronized void d() {
        synchronized (m0.class) {
            if (f52727b == null) {
                f52727b = new m0();
            }
        }
    }

    public void b(Context context) {
        synchronized (f52728c) {
            try {
                if (this.f52729a != null) {
                    f1.m("hmsSdk", "DataManager already initialized.");
                    return;
                }
                this.f52729a = context;
                z0.e().d().b(this.f52729a);
                z0.e().d().u(context.getPackageName());
                b0.a().d(context);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void c(String str) {
        f1.h("hmsSdk", "HiAnalyticsDataManager.setAppid(String appid) is execute.");
        Context context = this.f52729a;
        if (context == null) {
            f1.l("hmsSdk", "sdk is not init");
            return;
        }
        z0.e().d().s(n.a("appID", str, "[a-zA-Z0-9_][a-zA-Z0-9. _-]{0,255}", context.getPackageName()));
    }
}
