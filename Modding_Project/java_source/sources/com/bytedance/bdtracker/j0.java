package com.bytedance.bdtracker;

import android.os.Bundle;
import android.text.TextUtils;
import com.bytedance.applog.IAppLogInstance;
import com.bytedance.applog.log.EventBus;
import com.bytedance.applog.log.LogUtils;
import com.bytedance.bdtracker.l0;
import java.util.Calendar;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class j0 {

    /* renamed from: o  reason: collision with root package name */
    public static final AtomicLong f12078o = new AtomicLong(1000);

    /* renamed from: p  reason: collision with root package name */
    public static b f12079p;

    /* renamed from: a  reason: collision with root package name */
    public long f12080a;

    /* renamed from: b  reason: collision with root package name */
    public final e0 f12081b;

    /* renamed from: c  reason: collision with root package name */
    public e4 f12082c;

    /* renamed from: d  reason: collision with root package name */
    public e4 f12083d;

    /* renamed from: e  reason: collision with root package name */
    public String f12084e;

    /* renamed from: f  reason: collision with root package name */
    public volatile long f12085f;

    /* renamed from: g  reason: collision with root package name */
    public int f12086g;

    /* renamed from: i  reason: collision with root package name */
    public volatile boolean f12088i;

    /* renamed from: j  reason: collision with root package name */
    public long f12089j;

    /* renamed from: k  reason: collision with root package name */
    public int f12090k;

    /* renamed from: l  reason: collision with root package name */
    public String f12091l;

    /* renamed from: m  reason: collision with root package name */
    public volatile String f12092m;

    /* renamed from: h  reason: collision with root package name */
    public long f12087h = -1;

    /* renamed from: n  reason: collision with root package name */
    public volatile boolean f12093n = false;

    /* loaded from: classes3.dex */
    public class a implements EventBus.DataFetcher {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ d f12094a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ boolean f12095b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ long f12096c;

        public a(d dVar, boolean z10, long j10) {
            this.f12094a = dVar;
            this.f12095b = z10;
            this.f12096c = j10;
        }

        @Override // com.bytedance.applog.log.EventBus.DataFetcher
        public Object fetch() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("appId", this.f12094a.f11913m);
                jSONObject.put("sessionId", j0.this.f12084e);
                boolean z10 = true;
                jSONObject.put("isBackground", !this.f12095b);
                if (this.f12096c == -1) {
                    z10 = false;
                }
                jSONObject.put("newLaunch", z10);
            } catch (Throwable unused) {
            }
            return jSONObject;
        }
    }

    /* loaded from: classes3.dex */
    public static class b extends h4 {
        public /* synthetic */ b(a aVar) {
        }
    }

    public j0(e0 e0Var) {
        this.f12081b = e0Var;
    }

    public String a() {
        return this.f12084e;
    }

    public String b() {
        return this.f12092m;
    }

    public boolean c() {
        if (this.f12088i && this.f12089j == 0) {
            return true;
        }
        return false;
    }

    public static boolean a(u3 u3Var) {
        if (u3Var instanceof e4) {
            return ((e4) u3Var).k();
        }
        return false;
    }

    public void a(IAppLogInstance iAppLogInstance, u3 u3Var) {
        JSONObject jSONObject;
        if (u3Var != null) {
            r1 r1Var = this.f12081b.f11960i;
            u3Var.f12456m = iAppLogInstance.getAppId();
            u3Var.f12449f = this.f12080a;
            u3Var.f12450g = r1Var.k();
            u3Var.f12451h = r1Var.l();
            u3Var.f12452i = r1Var.i();
            u3Var.f12448e = this.f12084e;
            u3Var.f12447d = f12078o.incrementAndGet();
            String str = u3Var.f12453j;
            String a10 = r1Var.a();
            if (TextUtils.isEmpty(str)) {
                str = a10;
            } else if (!TextUtils.isEmpty(a10)) {
                Set<String> c10 = r1Var.c(a10);
                c10.addAll(r1Var.c(str));
                str = r1Var.a(c10);
            }
            u3Var.f12453j = str;
            u3Var.f12454k = t4.b(this.f12081b.b(), true).f12424a;
            if (!(u3Var instanceof b4) || this.f12087h <= 0 || !l0.b.a(((b4) u3Var).f11880u, "$crash") || (jSONObject = u3Var.f12458o) == null) {
                return;
            }
            try {
                jSONObject.put("$session_duration", System.currentTimeMillis() - this.f12087h);
            } catch (Throwable unused) {
            }
        }
    }

    public synchronized Bundle a(long j10, long j11) {
        Bundle bundle;
        long j12 = this.f12085f;
        if (this.f12081b.f11956e.f12304c.isPlayEnable() && c() && j12 > 0) {
            long j13 = j10 - j12;
            if (j13 > j11) {
                bundle = new Bundle();
                bundle.putInt("session_no", this.f12090k);
                int i10 = this.f12086g + 1;
                this.f12086g = i10;
                bundle.putInt("send_times", i10);
                bundle.putLong("current_duration", j13 / 1000);
                bundle.putString("session_start_time", u3.b(this.f12087h));
                this.f12085f = j10;
            }
        }
        bundle = null;
        return bundle;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0057, code lost:
        if (r16.f12087h > (r18.f12446c + 7200000)) goto L46;
     */
    /* JADX WARN: Removed duplicated region for block: B:23:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00c4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean a(com.bytedance.bdtracker.d r17, com.bytedance.bdtracker.u3 r18, java.util.List<com.bytedance.bdtracker.u3> r19) {
        /*
            Method dump skipped, instructions count: 207
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.bdtracker.j0.a(com.bytedance.bdtracker.d, com.bytedance.bdtracker.u3, java.util.List):boolean");
    }

    public synchronized c4 a(d dVar, u3 u3Var, List<u3> list, boolean z10) {
        c4 c4Var;
        try {
            long j10 = u3Var instanceof b ? -1L : u3Var.f12446c;
            this.f12084e = UUID.randomUUID().toString();
            LogUtils.sendJsonFetcher("session_start", new a(dVar, z10, j10));
            if (z10 && !this.f12081b.f11973v && TextUtils.isEmpty(this.f12092m)) {
                this.f12092m = this.f12084e;
            }
            AtomicLong atomicLong = f12078o;
            atomicLong.set(1000L);
            this.f12087h = j10;
            this.f12088i = z10;
            this.f12089j = 0L;
            this.f12085f = 0L;
            if (z10) {
                Calendar calendar = Calendar.getInstance();
                StringBuilder a10 = com.bytedance.bdtracker.a.a("");
                a10.append(calendar.get(1));
                a10.append(calendar.get(2));
                a10.append(calendar.get(5));
                String sb2 = a10.toString();
                p1 p1Var = this.f12081b.f11956e;
                if (TextUtils.isEmpty(this.f12091l)) {
                    this.f12091l = p1Var.f12306e.getString("session_last_day", "");
                    this.f12090k = p1Var.f12306e.getInt("session_order", 0);
                }
                if (sb2.equals(this.f12091l)) {
                    this.f12090k++;
                } else {
                    this.f12091l = sb2;
                    this.f12090k = 1;
                }
                p1Var.f12306e.edit().putString("session_last_day", sb2).putInt("session_order", this.f12090k).apply();
                this.f12086g = 0;
                this.f12085f = u3Var.f12446c;
            }
            if (j10 != -1) {
                c4Var = new c4();
                c4Var.f12456m = u3Var.f12456m;
                c4Var.f12448e = this.f12084e;
                c4Var.f11892u = !this.f12088i;
                c4Var.f12447d = atomicLong.incrementAndGet();
                c4Var.a(this.f12087h);
                c4Var.f11891t = this.f12081b.f11960i.n();
                c4Var.f11890s = this.f12081b.f11960i.m();
                c4Var.f12449f = this.f12080a;
                c4Var.f12450g = this.f12081b.f11960i.k();
                c4Var.f12451h = this.f12081b.f11960i.l();
                c4Var.f12452i = dVar.getSsid();
                c4Var.f12453j = dVar.getAbSdkVersion();
                int i10 = z10 ? this.f12081b.f11956e.f12307f.getInt("is_first_time_launch", 1) : 0;
                c4Var.f11894w = i10;
                if (z10 && i10 == 1) {
                    this.f12081b.f11956e.f12307f.edit().putInt("is_first_time_launch", 0).apply();
                }
                e4 a11 = w.a();
                if (a11 != null) {
                    c4Var.f11896y = a11.f11996u;
                    c4Var.f11895x = a11.f11997v;
                }
                if (this.f12088i && this.f12093n) {
                    c4Var.f11897z = this.f12093n;
                    this.f12093n = false;
                }
                list.add(c4Var);
            } else {
                c4Var = null;
            }
            d dVar2 = this.f12081b.f11955d;
            if (dVar2.f11912l <= 0) {
                dVar2.f11912l = 6;
            }
            dVar.D.debug("Start new session:{} with background:{}", this.f12084e, Boolean.valueOf(!this.f12088i));
        } catch (Throwable th2) {
            throw th2;
        }
        return c4Var;
    }
}
