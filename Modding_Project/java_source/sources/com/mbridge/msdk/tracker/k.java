package com.mbridge.msdk.tracker;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.mbridge.msdk.tracker.x;
import com.ss.ttvideoengine.DataLoaderHelper;
import java.util.List;
import java.util.UUID;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Global.java */
/* loaded from: classes6.dex */
public class k {

    /* renamed from: o  reason: collision with root package name */
    private static volatile String f30229o = "";

    /* renamed from: a  reason: collision with root package name */
    private final String f30230a;

    /* renamed from: b  reason: collision with root package name */
    private final m f30231b;

    /* renamed from: c  reason: collision with root package name */
    private Context f30232c;

    /* renamed from: d  reason: collision with root package name */
    private x f30233d;

    /* renamed from: e  reason: collision with root package name */
    private JSONObject f30234e;

    /* renamed from: f  reason: collision with root package name */
    private List<String> f30235f;

    /* renamed from: g  reason: collision with root package name */
    private List<String> f30236g;

    /* renamed from: h  reason: collision with root package name */
    private volatile c f30237h;

    /* renamed from: i  reason: collision with root package name */
    private volatile l f30238i;

    /* renamed from: j  reason: collision with root package name */
    private volatile d f30239j;

    /* renamed from: k  reason: collision with root package name */
    private volatile j f30240k;

    /* renamed from: l  reason: collision with root package name */
    private volatile s f30241l;

    /* renamed from: m  reason: collision with root package name */
    private volatile boolean f30242m = true;

    /* renamed from: n  reason: collision with root package name */
    private volatile o f30243n;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(String str, m mVar) {
        this.f30230a = str;
        this.f30231b = mVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Context context) {
        this.f30232c = context;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public x b() {
        x xVar = this.f30233d;
        if (xVar == null) {
            x a10 = new x.b().a();
            this.f30233d = a10;
            return a10;
        }
        return xVar;
    }

    Context c() {
        return this.f30232c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c d() {
        if (y.b(this.f30237h)) {
            synchronized (k.class) {
                try {
                    if (y.b(this.f30237h)) {
                        String t10 = t();
                        this.f30237h = new c(new b(c(), e(), t10), t10);
                    }
                } finally {
                }
            }
        }
        return this.f30237h;
    }

    String e() {
        if (TextUtils.isEmpty(v())) {
            return String.format("track_manager_%s.db", DataLoaderHelper.PRELOAD_DEFAULT_SCENE);
        }
        return String.format("track_manager_%s.db", v());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d f() {
        if (y.b(this.f30239j)) {
            this.f30239j = b().f30447h;
        }
        return this.f30239j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public l g() {
        if (y.b(this.f30238i)) {
            synchronized (k.class) {
                try {
                    if (y.b(this.f30238i)) {
                        this.f30238i = new q(new g(d(), p()));
                    }
                } finally {
                }
            }
        }
        return this.f30238i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public j h() {
        if (y.b(this.f30240k)) {
            synchronized (k.class) {
                try {
                    if (y.b(this.f30240k)) {
                        this.f30240k = new j();
                    }
                } finally {
                }
            }
        }
        return this.f30240k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int i() {
        if (b().f30440a < 0) {
            return 50;
        }
        return b().f30440a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int j() {
        return Math.max(b().f30444e, 0);
    }

    int k() {
        if (b().f30443d <= 0) {
            return 2;
        }
        return b().f30443d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int l() {
        return Math.max(b().f30441b, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public o m() {
        if (y.b(this.f30243n)) {
            synchronized (k.class) {
                try {
                    if (y.b(this.f30243n)) {
                        this.f30243n = new o(k(), n(), r(), q());
                    }
                } finally {
                }
            }
        }
        return this.f30243n;
    }

    p n() {
        return b().f30446g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public JSONObject o() {
        JSONObject jSONObject = this.f30234e;
        if (jSONObject == null) {
            JSONObject jSONObject2 = new JSONObject();
            this.f30234e = jSONObject2;
            return jSONObject2;
        }
        return jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public s p() {
        if (y.b(this.f30241l)) {
            synchronized (k.class) {
                try {
                    if (y.b(this.f30241l)) {
                        this.f30241l = new s(this);
                    }
                } finally {
                }
            }
        }
        return this.f30241l;
    }

    int q() {
        return b().f30442c;
    }

    w r() {
        return b().f30448i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String s() {
        if (TextUtils.isEmpty(f30229o)) {
            String uuid = UUID.randomUUID().toString();
            f30229o = uuid;
            return uuid;
        }
        return f30229o;
    }

    String t() {
        return "event_table";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public m u() {
        return this.f30231b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String v() {
        return this.f30230a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean w() {
        return this.f30242m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String x() {
        if (!y.b(this.f30232c) && !y.b(this.f30233d)) {
            try {
                p().j();
                this.f30242m = false;
                if (TextUtils.isEmpty(f30229o)) {
                    f30229o = UUID.randomUUID().toString();
                }
                return f30229o;
            } catch (Exception e10) {
                if (a.f30196a) {
                    Log.e("TrackManager", "start error", e10);
                }
                this.f30242m = true;
            }
        }
        return "";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(x xVar) {
        this.f30233d = xVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(JSONObject jSONObject) {
        this.f30234e = jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(e eVar) {
        if (y.b(eVar)) {
            return false;
        }
        f fVar = b().f30449j;
        if (y.a(fVar)) {
            try {
                return fVar.a(eVar);
            } catch (Exception e10) {
                if (a.f30196a) {
                    Log.e("TrackManager", "event filter apply exception", e10);
                }
            }
        }
        String b10 = eVar.b();
        if (TextUtils.isEmpty(b10)) {
            return false;
        }
        List<String> list = this.f30236g;
        if (list != null) {
            try {
                return !list.contains(b10);
            } catch (Exception e11) {
                if (a.f30196a) {
                    Log.e("TrackManager", "disallowTrackEventNames contains exception", e11);
                }
            }
        }
        List<String> list2 = this.f30235f;
        if (list2 != null) {
            try {
                return list2.contains(b10);
            } catch (Exception e12) {
                if (a.f30196a) {
                    Log.e("TrackManager", "allowTrackEventNames contains exception", e12);
                }
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a() throws IllegalStateException {
        if (!y.b(b())) {
            if (!y.b(f())) {
                if (!y.b(r())) {
                    if (!y.b(n()) && !y.b(n().b())) {
                        if (TextUtils.isEmpty(n().c())) {
                            throw new IllegalStateException("report url is null");
                        }
                        return true;
                    }
                    throw new IllegalStateException("networkStackConfig or stack can not be null");
                }
                throw new IllegalStateException("responseHandler can not be null");
            }
            throw new IllegalStateException("decorate can not be null");
        }
        throw new IllegalStateException("config can not be null");
    }
}
