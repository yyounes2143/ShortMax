package com.bytedance.bdtracker;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import com.appsflyer.AppsFlyerProperties;
import com.bytedance.applog.IHeaderCustomTimelyCallback;
import com.bytedance.applog.IPullAbTestConfigCallback;
import com.bytedance.applog.InitConfig;
import com.bytedance.applog.UriConfig;
import com.bytedance.applog.aggregation.MetricsSQLiteCacheKt;
import com.bytedance.applog.log.EventBus;
import com.bytedance.applog.log.LogUtils;
import com.bytedance.applog.log.LoggerImpl;
import com.bytedance.applog.util.UriConstants;
import com.bytedance.bdtracker.j0;
import com.bytedance.bdtracker.l0;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class e0 implements Handler.Callback, Comparator<u3> {
    public final k3 A;
    public final j B;
    public final j1 C;
    public long D;
    public final e3 F;

    /* renamed from: b  reason: collision with root package name */
    public b0 f11953b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f11954c;

    /* renamed from: d  reason: collision with root package name */
    public final com.bytedance.bdtracker.d f11955d;

    /* renamed from: e  reason: collision with root package name */
    public final p1 f11956e;

    /* renamed from: f  reason: collision with root package name */
    public d0 f11957f;

    /* renamed from: h  reason: collision with root package name */
    public volatile a4 f11959h;

    /* renamed from: i  reason: collision with root package name */
    public final r1 f11960i;

    /* renamed from: j  reason: collision with root package name */
    public volatile Handler f11961j;

    /* renamed from: k  reason: collision with root package name */
    public h0 f11962k;

    /* renamed from: l  reason: collision with root package name */
    public i0 f11963l;

    /* renamed from: m  reason: collision with root package name */
    public volatile a0 f11964m;

    /* renamed from: o  reason: collision with root package name */
    public UriConfig f11966o;

    /* renamed from: p  reason: collision with root package name */
    public final Handler f11967p;

    /* renamed from: q  reason: collision with root package name */
    public h2 f11968q;

    /* renamed from: r  reason: collision with root package name */
    public volatile boolean f11969r;

    /* renamed from: s  reason: collision with root package name */
    public c0 f11970s;

    /* renamed from: t  reason: collision with root package name */
    public volatile g0 f11971t;

    /* renamed from: v  reason: collision with root package name */
    public volatile boolean f11973v;

    /* renamed from: w  reason: collision with root package name */
    public volatile long f11974w;

    /* renamed from: y  reason: collision with root package name */
    public volatile a1 f11976y;

    /* renamed from: z  reason: collision with root package name */
    public volatile InitConfig.IpcDataChecker f11977z;

    /* renamed from: a  reason: collision with root package name */
    public long f11952a = 10000;

    /* renamed from: g  reason: collision with root package name */
    public final ArrayList<u3> f11958g = new ArrayList<>(32);

    /* renamed from: u  reason: collision with root package name */
    public final CopyOnWriteArrayList<c0> f11972u = new CopyOnWriteArrayList<>();

    /* renamed from: x  reason: collision with root package name */
    public final List<d> f11975x = new ArrayList();

    /* renamed from: n  reason: collision with root package name */
    public final j0 f11965n = new j0(this);
    public final f0 E = new f0(this);

    /* loaded from: classes3.dex */
    public class a implements EventBus.DataFetcher {
        public a() {
        }

        @Override // com.bytedance.applog.log.EventBus.DataFetcher
        public Object fetch() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("appId", e0.this.f11955d.f11913m);
                jSONObject.put("isMainProcess", e0.this.f11956e.h());
            } catch (Throwable unused) {
            }
            return jSONObject;
        }
    }

    /* loaded from: classes3.dex */
    public class b implements g {
        public b() {
        }

        public void a(Map<String, String> map) {
            if (e0.this.f11960i.e() != null && e0.this.f11960i.e().opt("oaid") == null && map != null) {
                e0.this.f11961j.obtainMessage(17, map).sendToTarget();
            }
        }
    }

    /* loaded from: classes3.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ List f11980a;

        public c(List list) {
            this.f11980a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            List list = this.f11980a;
            if (list != null && list.size() > 0) {
                d4 d4Var = new d4();
                e0 e0Var = e0.this;
                i0 i0Var = e0Var.f11963l;
                JSONObject a10 = l0.b.a(e0Var.f11960i.e());
                IHeaderCustomTimelyCallback headerCustomCallback = i0Var.f11889f.getHeaderCustomCallback();
                if (headerCustomCallback != null) {
                    headerCustomCallback.updateHeader(a10);
                }
                d4Var.f11945y = a10;
                d4Var.f12456m = e0.this.f11955d.f11913m;
                ArrayList arrayList = new ArrayList();
                for (u3 u3Var : this.f11980a) {
                    if (u3Var instanceof b4) {
                        arrayList.add((b4) u3Var);
                    }
                }
                d4Var.f11939s = arrayList;
                d4Var.m();
                d4Var.n();
                d4Var.f11946z = d4Var.o();
                if (e0.this.f11963l.a(d4Var)) {
                    e0 e0Var2 = e0.this;
                    e0Var2.D = 0L;
                    a4 c10 = e0Var2.c();
                    c10.f11871c.a(this.f11980a);
                    return;
                }
                e0.this.D = System.currentTimeMillis();
                e0.this.f11967p.obtainMessage(8, this.f11980a).sendToTarget();
            }
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class d<T> {

        /* renamed from: a  reason: collision with root package name */
        public T f11982a;

        public d(T t10) {
            this.f11982a = t10;
        }
    }

    /* loaded from: classes3.dex */
    public class e extends d<String> {
        public e(String str) {
            super(str);
        }
    }

    public e0(com.bytedance.bdtracker.d dVar, p1 p1Var, r1 r1Var, j1 j1Var) {
        this.f11955d = dVar;
        this.f11956e = p1Var;
        this.f11960i = r1Var;
        this.C = j1Var;
        StringBuilder a10 = com.bytedance.bdtracker.a.a("bd_tracker_w:");
        a10.append(dVar.f11913m);
        HandlerThread handlerThread = new HandlerThread(a10.toString());
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper(), this);
        this.f11967p = handler;
        j jVar = new j(this);
        this.B = jVar;
        if (p1Var.f12304c.isDeferredALinkEnabled()) {
            dVar.addDataObserver(jVar);
        }
        ((n4) r1Var.f12365h).f12258b.a(handler);
        if (r1Var.f12360c.f12304c.isMigrateEnabled()) {
            Context context = r1Var.f12359b;
            try {
                try {
                    if (g2.a(context).f12021c) {
                        p1 p1Var2 = r1Var.f12360c;
                        if (p1Var2 != null) {
                            p1Var2.f12307f.edit().remove("google_aid").apply();
                        }
                        SharedPreferences sharedPreferences = r1Var.f12364g;
                        String b10 = ((n4) r1Var.f12365h).b();
                        if (sharedPreferences != null) {
                            SharedPreferences.Editor edit = sharedPreferences.edit();
                            edit.putString("old_did", b10);
                            edit.putBoolean("is_migrate", true);
                            edit.apply();
                        }
                        ((n4) r1Var.f12365h).a("openudid");
                        ((n4) r1Var.f12365h).a("clientudid");
                        ((n4) r1Var.f12365h).a("serial_number");
                        ((n4) r1Var.f12365h).a("sim_serial_number");
                        ((n4) r1Var.f12365h).a("udid");
                        ((n4) r1Var.f12365h).a("udid_list");
                        ((n4) r1Var.f12365h).a("device_id");
                        r1Var.b("clearMigrationInfo");
                    }
                } catch (Exception e10) {
                    LoggerImpl.global().debug("detect migrate is error, ", e10);
                }
                try {
                    g2.a(context).a();
                } catch (Throwable unused) {
                }
            } catch (Throwable th2) {
                try {
                    g2.a(context).a();
                } catch (Throwable unused2) {
                }
                throw th2;
            }
        }
        this.A = new k3(this);
        if (this.f11956e.f12304c.isClearDidAndIid()) {
            this.f11960i.b(this.f11956e.f12304c.getClearKey());
        }
        if (this.f11956e.f12304c.getIpcDataChecker() != null && !this.f11956e.h()) {
            this.f11977z = this.f11956e.f12304c.getIpcDataChecker();
        }
        if (this.f11956e.i()) {
            this.f11968q = new m2(this);
        }
        this.f11967p.sendEmptyMessage(10);
        if (this.f11956e.f12304c.autoStart()) {
            i();
        }
        this.F = new e3(this);
    }

    public void a() {
        h5.a(new b());
    }

    public void b(JSONObject jSONObject) {
        if (jSONObject == null || jSONObject.length() == 0) {
            return;
        }
        this.A.a(jSONObject);
    }

    public void c(JSONObject jSONObject) {
        if (jSONObject == null || jSONObject.length() == 0) {
            return;
        }
        this.A.b(jSONObject);
    }

    @Override // java.util.Comparator
    public int compare(u3 u3Var, u3 u3Var2) {
        int i10 = ((u3Var.f12446c - u3Var2.f12446c) > 0L ? 1 : ((u3Var.f12446c - u3Var2.f12446c) == 0L ? 0 : -1));
        if (i10 < 0) {
            return -1;
        }
        if (i10 > 0) {
            return 1;
        }
        return 0;
    }

    public void d(JSONObject jSONObject) {
        if (jSONObject == null || jSONObject.length() == 0) {
            return;
        }
        this.A.c(jSONObject);
    }

    public void e(JSONObject jSONObject) {
        if (jSONObject == null || jSONObject.length() == 0) {
            return;
        }
        this.A.d(jSONObject);
    }

    public void f(JSONObject jSONObject) {
        if (jSONObject == null || jSONObject.length() == 0) {
            return;
        }
        this.A.e(jSONObject);
    }

    public boolean g() {
        p1 p1Var = this.f11956e;
        if (p1Var.f12320s == 1 && p1Var.f12304c.isAutoTrackEnabled()) {
            return true;
        }
        return false;
    }

    public boolean h() {
        if (this.f11960i.f12364g.getInt(TTVideoEngineInterface.PLAY_API_KEY_VERSIONCODE, 0) == this.f11960i.m() && TextUtils.equals(this.f11956e.f12307f.getString(AppsFlyerProperties.CHANNEL, ""), this.f11956e.b())) {
            return false;
        }
        return true;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        Map<String, ?> map;
        a1 b1Var;
        Set set;
        Set set2;
        String str;
        String str2;
        a1 a1Var = null;
        String str3 = null;
        String[] strArr = null;
        a1Var = null;
        a1Var = null;
        switch (message.what) {
            case 1:
                this.f11955d.D.info("AppLog is starting...", new Object[0]);
                p1 p1Var = this.f11956e;
                p1Var.f12320s = p1Var.f12307f.getBoolean("bav_log_collect", p1Var.f12304c.isAutoTrackEnabled()) ? 1 : 0;
                if (this.f11960i.q()) {
                    if (this.f11956e.h()) {
                        StringBuilder a10 = com.bytedance.bdtracker.a.a("bd_tracker_n:");
                        a10.append(this.f11955d.f11913m);
                        HandlerThread handlerThread = new HandlerThread(a10.toString());
                        handlerThread.start();
                        this.f11961j = new Handler(handlerThread.getLooper(), this);
                        this.f11961j.sendEmptyMessage(2);
                        if (this.f11958g.size() > 0) {
                            this.f11967p.removeMessages(4);
                            this.f11967p.sendEmptyMessageDelayed(4, 1000L);
                        }
                        w4.a(this.f11955d.f11914n);
                        this.f11955d.D.info("AppLog started on main process.", new Object[0]);
                    } else {
                        this.f11955d.D.info("AppLog started on secondary process.", new Object[0]);
                    }
                    LogUtils.sendJsonFetcher("start_end", new a());
                    break;
                } else {
                    this.f11955d.D.info("AppLog is not ready, will try start again after 1 second...", new Object[0]);
                    this.f11967p.removeMessages(1);
                    this.f11967p.sendEmptyMessageDelayed(1, 1000L);
                    break;
                }
            case 2:
                h0 h0Var = new h0(this);
                this.f11962k = h0Var;
                this.f11972u.add(h0Var);
                InitConfig initConfig = this.f11956e.f12304c;
                if (initConfig == null || initConfig.isTrackEventEnabled()) {
                    i0 i0Var = new i0(this);
                    this.f11963l = i0Var;
                    this.f11972u.add(i0Var);
                }
                UriConfig e10 = e();
                if (!TextUtils.isEmpty(e10.getSettingUri())) {
                    d0 d0Var = new d0(this);
                    this.f11957f = d0Var;
                    this.f11972u.add(d0Var);
                }
                if (!TextUtils.isEmpty(e10.getProfileUri())) {
                    Handler handler = this.A.f12144b;
                    handler.sendMessage(handler.obtainMessage(106));
                }
                this.f11961j.removeMessages(13);
                this.f11961j.sendEmptyMessage(13);
                String a11 = com.bytedance.bdtracker.b.a(this.f11955d, "sp_filter_name");
                if (h()) {
                    h0 h0Var2 = this.f11962k;
                    if (h0Var2 != null) {
                        h0Var2.f11885b = true;
                    }
                    d0 d0Var2 = this.f11957f;
                    if (d0Var2 != null) {
                        d0Var2.f11885b = true;
                    }
                    if (this.f11956e.f12304c.isEventFilterEnable()) {
                        this.f11976y = a1.a(this.f11955d.f11914n, a11, null);
                    }
                } else if (this.f11956e.f12304c.isEventFilterEnable()) {
                    try {
                        SharedPreferences a12 = g4.a(this.f11955d.f11914n, a11, 0);
                        HashSet hashSet = new HashSet();
                        HashMap hashMap = new HashMap();
                        try {
                            map = a12.getAll();
                        } catch (Throwable unused) {
                            map = null;
                        }
                        if (map != null && map.size() > 0) {
                            int i10 = 0;
                            for (Map.Entry<String, ?> entry : map.entrySet()) {
                                if (entry != null) {
                                    String key = entry.getKey();
                                    if ("is_block".equals(key)) {
                                        i10 = a12.getInt("is_block", 0);
                                    } else if ("events".equals(key)) {
                                        try {
                                            set2 = (Set) entry.getValue();
                                        } catch (Throwable unused2) {
                                            set2 = null;
                                        }
                                        if (set2 != null && set2.size() > 0) {
                                            hashSet.addAll(set2);
                                        }
                                    } else if (!TextUtils.isEmpty(key)) {
                                        HashSet hashSet2 = new HashSet();
                                        try {
                                            set = (Set) entry.getValue();
                                        } catch (Throwable unused3) {
                                            set = null;
                                        }
                                        if (set != null && set.size() > 0) {
                                            hashSet2.addAll(set);
                                        }
                                        if (hashSet2.size() > 0) {
                                            hashMap.put(key, hashSet2);
                                        }
                                    }
                                }
                            }
                            if (i10 > 0) {
                                b1Var = new c1(hashSet, hashMap);
                            } else {
                                b1Var = new b1(hashSet, hashMap);
                            }
                            a1Var = b1Var;
                        }
                    } catch (Throwable unused4) {
                    }
                    this.f11976y = a1Var;
                }
                this.f11961j.removeMessages(6);
                this.f11961j.sendEmptyMessage(6);
                h2 h2Var = this.f11968q;
                if (h2Var != null) {
                    m2 m2Var = (m2) h2Var;
                    p1 p1Var2 = m2Var.f12213c.f11956e;
                    Intrinsics.checkExpressionValueIsNotNull(p1Var2, "mEngine.config");
                    if (p1Var2.i()) {
                        m2Var.f12212b.a(new l2(m2Var));
                        break;
                    }
                }
                break;
            case 3:
            case 5:
            default:
                this.f11955d.D.error("Unknown handler message type", new Object[0]);
                break;
            case 4:
                a((String[]) message.obj, false);
                break;
            case 6:
                this.f11961j.removeMessages(6);
                long j10 = 5000;
                if (!this.f11955d.f11924x && (!this.f11956e.f12304c.isSilenceInBackground() || this.f11965n.c())) {
                    Iterator<c0> it = this.f11972u.iterator();
                    long j11 = Long.MAX_VALUE;
                    while (it.hasNext()) {
                        c0 next = it.next();
                        if (!next.f11887d) {
                            long a13 = next.a();
                            if (a13 < j11) {
                                j11 = a13;
                            }
                        }
                    }
                    long currentTimeMillis = j11 - System.currentTimeMillis();
                    if (currentTimeMillis <= 5000) {
                        j10 = currentTimeMillis;
                    }
                }
                this.f11961j.sendEmptyMessageDelayed(6, j10);
                if (this.f11975x.size() > 0) {
                    synchronized (this.f11975x) {
                        try {
                            for (d dVar : this.f11975x) {
                                if (dVar != null) {
                                    e eVar = (e) dVar;
                                    e0.this.a((String) eVar.f11982a);
                                }
                            }
                            this.f11975x.clear();
                        } finally {
                        }
                    }
                    break;
                }
                break;
            case 7:
                synchronized (this.f11958g) {
                    try {
                        ArrayList<u3> arrayList = this.f11958g;
                        if (j0.f12079p == null) {
                            j0.f12079p = new j0.b(null);
                        }
                        j0.f12079p.a(0L);
                        arrayList.add(j0.f12079p);
                    } finally {
                    }
                }
                a((String[]) null, false);
                break;
            case 8:
                c().f11871c.b((ArrayList) message.obj);
                break;
            case 9:
                c0 c0Var = this.f11970s;
                if (!c0Var.f11887d) {
                    long a14 = c0Var.a();
                    if (!c0Var.f11887d) {
                        this.f11961j.sendEmptyMessageDelayed(9, a14 - System.currentTimeMillis());
                        break;
                    }
                }
                break;
            case 10:
                synchronized (this.f11958g) {
                    this.C.a(this.f11958g);
                }
                j1 j1Var = this.C;
                int size = j1Var.f12099b.size();
                if (size > 0) {
                    strArr = new String[size];
                    j1Var.f12099b.toArray(strArr);
                    j1Var.f12099b.clear();
                }
                a(strArr, false);
                break;
            case 11:
                b0 b0Var = this.f11953b;
                if (b0Var == null) {
                    b0 b0Var2 = new b0(this);
                    this.f11953b = b0Var2;
                    this.f11972u.add(b0Var2);
                } else {
                    b0Var.f11887d = false;
                }
                a(this.f11953b);
                break;
            case 12:
                Object obj = message.obj;
                if (obj != null) {
                    str3 = obj.toString();
                }
                a(str3);
                break;
            case 13:
                if (f()) {
                    if (this.f11964m == null) {
                        this.f11964m = new a0(this);
                    }
                    if (!this.f11972u.contains(this.f11964m)) {
                        this.f11972u.add(this.f11964m);
                    }
                    a(this.f11964m);
                    break;
                } else {
                    if (this.f11964m != null) {
                        this.f11964m.f11887d = true;
                        this.f11972u.remove(this.f11964m);
                        this.f11964m = null;
                    }
                    r1 r1Var = this.f11960i;
                    r1Var.e(null);
                    r1Var.f("");
                    r1Var.a((JSONObject) null);
                    break;
                }
            case 14:
                a((String[]) null, true);
                break;
            case 15:
                Object[] objArr = (Object[]) message.obj;
                boolean booleanValue = ((Boolean) objArr[0]).booleanValue();
                String str4 = (String) objArr[1];
                if (this.f11971t != null) {
                    this.f11971t.f11887d = true;
                    this.f11972u.remove(this.f11971t);
                    this.f11971t = null;
                }
                if (booleanValue) {
                    this.f11971t = new g0(this, str4);
                    this.f11972u.add(this.f11971t);
                    this.f11961j.removeMessages(6);
                    this.f11961j.sendEmptyMessage(6);
                    break;
                }
                break;
            case 16:
                b((u3) message.obj);
                break;
            case 17:
                Map map2 = (Map) message.obj;
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("oaid", new JSONObject(map2));
                    String c10 = this.f11960i.c();
                    String f10 = this.f11960i.f();
                    jSONObject.put("bd_did", c10);
                    jSONObject.put("install_id", f10);
                    if (y4.f12534c.b(new Object[0]).booleanValue()) {
                        str = "os";
                        str2 = "Harmony";
                    } else {
                        str = "os";
                        str2 = "Android";
                    }
                    jSONObject.put(str, str2);
                    jSONObject.put(TTVideoEngineInterface.PLAY_API_KEY_APPID, this.f11960i.b());
                    this.f11955d.D.debug("Report oaid success: {}", this.f11962k.c(jSONObject));
                    break;
                } catch (Throwable th2) {
                    this.f11955d.D.error("Report oaid failed", th2, new Object[0]);
                    break;
                }
            case 18:
                Object obj2 = message.obj;
                if (obj2 instanceof IPullAbTestConfigCallback) {
                    int i11 = message.arg1;
                    IPullAbTestConfigCallback iPullAbTestConfigCallback = (IPullAbTestConfigCallback) obj2;
                    if (!f()) {
                        this.f11955d.D.warn("ABTest is not enabled", new Object[0]);
                        break;
                    } else {
                        if (this.f11964m == null) {
                            this.f11964m = new a0(this);
                        }
                        try {
                            JSONObject a15 = this.f11964m.a(i11);
                            if (iPullAbTestConfigCallback != null) {
                                iPullAbTestConfigCallback.onRemoteConfig(a15);
                                break;
                            }
                        } catch (d3 unused5) {
                            if (iPullAbTestConfigCallback != null) {
                                iPullAbTestConfigCallback.onTimeoutError();
                                break;
                            }
                        }
                    }
                } else {
                    a(this.f11964m);
                    break;
                }
                break;
        }
        return true;
    }

    public final void i() {
        this.f11969r = true;
        r1 r1Var = this.f11960i;
        if (r1Var.f12360c.j()) {
            h5.f12045a.b(r1Var.f12359b).a();
        }
        this.f11967p.sendEmptyMessage(1);
    }

    public void a(Long l10) {
        long j10 = 0;
        if (l10 != null && l10.longValue() > 0) {
            j10 = l10.longValue();
        }
        this.f11952a = j10;
    }

    public Context b() {
        return this.f11955d.f11914n;
    }

    public a4 c() {
        if (this.f11959h == null) {
            synchronized (this) {
                try {
                    a4 a4Var = this.f11959h;
                    if (a4Var == null) {
                        a4Var = new a4(this, this.f11956e.f12304c.getDbName());
                    }
                    this.f11959h = a4Var;
                } finally {
                }
            }
        }
        return this.f11959h;
    }

    public String d() {
        j0 j0Var = this.f11965n;
        if (j0Var != null) {
            return j0Var.f12084e;
        }
        return null;
    }

    @NonNull
    public UriConfig e() {
        if (this.f11966o == null) {
            UriConfig uriConfig = this.f11956e.f12304c.getUriConfig();
            this.f11966o = uriConfig;
            if (uriConfig == null) {
                this.f11966o = UriConstants.createUriConfig(1);
            }
        }
        return this.f11966o;
    }

    public final boolean f() {
        return this.f11956e.g() && !TextUtils.isEmpty(e().getAbUri());
    }

    public boolean a(boolean z10) {
        if ((!this.f11954c || z10) && this.f11961j != null) {
            this.f11954c = true;
            this.f11961j.removeMessages(11);
            this.f11961j.sendEmptyMessage(11);
        }
        return this.f11954c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0038, code lost:
        if (com.bytedance.bdtracker.l0.b.c(r2) != false) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean a(org.json.JSONObject r8) {
        /*
            r7 = this;
            r0 = 0
            if (r8 != 0) goto L4
            return r0
        L4:
            java.lang.String r1 = "ssid"
            java.lang.String r2 = ""
            java.lang.String r3 = r8.optString(r1, r2)
            boolean r3 = com.bytedance.bdtracker.l0.b.d(r3)
            r4 = 1
            if (r3 == 0) goto L14
            return r4
        L14:
            com.bytedance.bdtracker.d r3 = r7.f11955d
            com.bytedance.applog.log.IAppLogLogger r3 = r3.D
            java.lang.Object[] r5 = new java.lang.Object[r0]
            java.lang.String r6 = "Register to get ssid by temp header..."
            r3.debug(r6, r5)
            org.json.JSONObject r3 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L50
            r3.<init>()     // Catch: java.lang.Throwable -> L50
            com.bytedance.bdtracker.l0.b.a(r3, r8)     // Catch: java.lang.Throwable -> L50
            com.bytedance.bdtracker.h0 r5 = r7.f11962k     // Catch: java.lang.Throwable -> L50
            org.json.JSONObject r3 = r5.b(r3)     // Catch: java.lang.Throwable -> L50
            if (r3 != 0) goto L30
            goto L3a
        L30:
            java.lang.String r2 = r3.optString(r1, r2)     // Catch: java.lang.Throwable -> L50
            boolean r3 = com.bytedance.bdtracker.l0.b.c(r2)     // Catch: java.lang.Throwable -> L50
            if (r3 == 0) goto L3b
        L3a:
            r2 = 0
        L3b:
            boolean r3 = com.bytedance.bdtracker.l0.b.d(r2)     // Catch: java.lang.Throwable -> L50
            if (r3 == 0) goto L5c
            com.bytedance.bdtracker.d r3 = r7.f11955d     // Catch: java.lang.Throwable -> L50
            com.bytedance.applog.log.IAppLogLogger r3 = r3.D     // Catch: java.lang.Throwable -> L50
            java.lang.String r5 = "Register to get ssid by header success."
            java.lang.Object[] r6 = new java.lang.Object[r0]     // Catch: java.lang.Throwable -> L50
            r3.debug(r5, r6)     // Catch: java.lang.Throwable -> L50
            r8.put(r1, r2)     // Catch: java.lang.Throwable -> L50
            return r4
        L50:
            r8 = move-exception
            com.bytedance.bdtracker.d r1 = r7.f11955d
            com.bytedance.applog.log.IAppLogLogger r1 = r1.D
            java.lang.Object[] r2 = new java.lang.Object[r0]
            java.lang.String r3 = "JSON handle failed"
            r1.error(r3, r8, r2)
        L5c:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.bdtracker.e0.a(org.json.JSONObject):boolean");
    }

    public void b(u3 u3Var) {
        if (this.f11971t == null) {
            return;
        }
        if ((u3Var instanceof b4) || (((u3Var instanceof e4) && g()) || (u3Var instanceof x3) || (u3Var instanceof f4))) {
            JSONObject h10 = u3Var.h();
            if (u3Var instanceof e4) {
                if (!((e4) u3Var).k()) {
                    return;
                }
                JSONObject optJSONObject = h10.optJSONObject(MetricsSQLiteCacheKt.METRICS_PARAMS);
                if (optJSONObject != null) {
                    try {
                        optJSONObject.remove("duration");
                        h10.put(MetricsSQLiteCacheKt.METRICS_PARAMS, optJSONObject);
                    } catch (Throwable unused) {
                    }
                }
            }
            if ((u3Var instanceof x3) && !h10.has(NotificationCompat.CATEGORY_EVENT)) {
                try {
                    h10.put(NotificationCompat.CATEGORY_EVENT, h10.optString("log_type", ((x3) u3Var).f12525s));
                } catch (Throwable unused2) {
                }
            }
            this.f11955d.f11911k.a(h10, this.f11971t.f12016g);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:98:0x01c2, code lost:
        if (r0.a(r0.f11869a.getWritableDatabase(), "eventv3", "_app_id= ? ", new java.lang.String[]{r10.f11955d.f11913m}) >= r11) goto L119;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(java.lang.String[] r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 613
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.bdtracker.e0.a(java.lang.String[], boolean):void");
    }

    public void a(u3 u3Var) {
        int size;
        if (u3Var.f12446c == 0) {
            this.f11955d.D.warn("Data ts is 0", new Object[0]);
        }
        synchronized (this.f11958g) {
            size = this.f11958g.size();
            this.f11958g.add(u3Var);
        }
        boolean z10 = u3Var instanceof e4;
        if (size % 10 == 0 || z10) {
            this.f11967p.removeMessages(4);
            if (z10 || size != 0) {
                this.f11967p.sendEmptyMessage(4);
            } else {
                this.f11967p.sendEmptyMessageDelayed(4, 200L);
            }
        }
    }

    public final void a(String str) {
        JSONObject jSONObject = new JSONObject();
        l0.b.a(jSONObject, this.f11960i.e());
        try {
            h0 h0Var = this.f11962k;
            if (h0Var == null || !h0Var.a(jSONObject)) {
                return;
            }
            if (l0.b.d(str)) {
                this.f11956e.f12307f.edit().putInt("is_first_time_launch", 1).apply();
            }
            a(true);
        } catch (Throwable th2) {
            this.f11955d.D.error("Register new uuid:{} failed", th2, str);
        }
    }

    public final void a(List<u3> list) {
        x.f12504a.execute(new c(list));
    }

    public final void a(String str, String str2) {
        boolean isEmpty = TextUtils.isEmpty(this.f11960i.k());
        this.f11960i.b(str, str2);
        this.f11960i.g("");
        this.f11960i.d("$tr_web_ssid");
        if (this.f11956e.f12304c.isClearABCacheOnUserChange() && !isEmpty) {
            this.f11960i.e(null);
        }
        this.f11973v = true;
        if (this.f11961j != null) {
            this.f11961j.sendMessage(this.f11961j.obtainMessage(12, str));
            return;
        }
        synchronized (this.f11975x) {
            this.f11975x.add(new e(str));
        }
    }

    public final void a(c0 c0Var) {
        if (this.f11961j == null || c0Var == null || this.f11955d.f11924x) {
            return;
        }
        c0Var.f11885b = true;
        if (Looper.myLooper() == this.f11961j.getLooper()) {
            c0Var.a();
            return;
        }
        this.f11961j.removeMessages(6);
        this.f11961j.sendEmptyMessage(6);
    }
}
