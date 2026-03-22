package com.mbridge.msdk.tracker;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;
/* compiled from: MBridgeTrackManager.java */
/* loaded from: classes6.dex */
public final class m {

    /* renamed from: b  reason: collision with root package name */
    private static final ConcurrentHashMap<String, m> f30244b = new ConcurrentHashMap<>();

    /* renamed from: a  reason: collision with root package name */
    private final k f30245a;

    /* compiled from: MBridgeTrackManager.java */
    /* loaded from: classes6.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                u.a().b();
                m.this.f30245a.p().b();
            } catch (Exception e10) {
                if (com.mbridge.msdk.tracker.a.f30196a) {
                    Log.e("TrackManager", "flush error", e10);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MBridgeTrackManager.java */
    /* loaded from: classes6.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ e f30247a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ JSONObject f30248b;

        b(e eVar, JSONObject jSONObject) {
            this.f30247a = eVar;
            this.f30248b = jSONObject;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                m.this.f30245a.g().a(this.f30247a);
                JSONObject jSONObject = this.f30248b;
                if (jSONObject != null) {
                    jSONObject.put("session_id", m.this.d());
                    long[] e10 = m.this.e();
                    this.f30248b.put("track_time", e10[0]);
                    this.f30248b.put("track_count", e10[1]);
                    this.f30247a.a(this.f30248b);
                }
                this.f30247a.b(m.this.f30245a.b().f30445f);
                m.this.f30245a.g().b(this.f30247a);
            } catch (Exception e11) {
                Log.d("TrackManager", "trackEvent error", e11);
            }
        }
    }

    private m(String str, Context context, x xVar) {
        k kVar = new k(str, this);
        this.f30245a = kVar;
        kVar.a(context);
        kVar.a(xVar);
    }

    public static m[] b() {
        ConcurrentHashMap<String, m> concurrentHashMap = f30244b;
        m[] mVarArr = new m[concurrentHashMap.size()];
        try {
            int i10 = 0;
            for (Map.Entry<String, m> entry : concurrentHashMap.entrySet()) {
                mVarArr[i10] = entry.getValue();
                i10++;
            }
        } catch (Exception e10) {
            if (com.mbridge.msdk.tracker.a.f30196a) {
                Log.e("TrackManager", "getAllTrackManager error", e10);
            }
        }
        return mVarArr;
    }

    public JSONObject c() {
        return this.f30245a.o();
    }

    public String d() {
        return this.f30245a.s();
    }

    public long[] e() {
        return this.f30245a.g().a();
    }

    public String f() {
        return this.f30245a.v();
    }

    public boolean g() {
        return !this.f30245a.w();
    }

    public String h() {
        if (g()) {
            if (com.mbridge.msdk.tracker.a.f30196a) {
                Log.e("TrackManager", "MBridgeTrackManager is already running");
            }
            return d();
        }
        return this.f30245a.x();
    }

    public static m a(String str, Context context, x xVar) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        ConcurrentHashMap<String, m> concurrentHashMap = f30244b;
        m mVar = concurrentHashMap.get(str);
        if (y.b(mVar)) {
            m mVar2 = new m(str, context, xVar);
            concurrentHashMap.put(str, mVar2);
            return mVar2;
        }
        return mVar;
    }

    public void c(e eVar) {
        d(eVar);
    }

    public void d(e eVar) {
        if (this.f30245a.w()) {
            if (com.mbridge.msdk.tracker.a.f30196a) {
                Log.d("TrackManager", "SDK is shutdown, track event will not be processed");
            }
        } else if (eVar != null && b(eVar)) {
            JSONObject d10 = eVar.d();
            if (d10 != null && !d10.has(CampaignEx.JSON_KEY_ST_TS)) {
                try {
                    d10.put(CampaignEx.JSON_KEY_ST_TS, System.currentTimeMillis());
                } catch (Exception e10) {
                    Log.e("TrackManager", "trackEvent error", e10);
                }
            }
            try {
                this.f30245a.h().a(new b(eVar, d10));
            } catch (Exception e11) {
                if (com.mbridge.msdk.tracker.a.f30196a) {
                    Log.e("TrackManager", "trackEvent error", e11);
                }
            }
        }
    }

    private boolean b(e eVar) {
        if (y.b(eVar) || TextUtils.isEmpty(eVar.b())) {
            return false;
        }
        return this.f30245a.a(eVar);
    }

    public void a() {
        try {
            this.f30245a.h().a(new a());
        } catch (Exception e10) {
            if (com.mbridge.msdk.tracker.a.f30196a) {
                Log.e("TrackManager", "flush error", e10);
            }
        }
    }

    public void a(JSONObject jSONObject) {
        this.f30245a.a(jSONObject);
    }

    public boolean a(String str) {
        return a(new e(str));
    }

    public boolean a(e eVar) {
        try {
            return b(eVar);
        } catch (Exception unused) {
            return false;
        }
    }
}
