package com.apm.insight.b;

import android.os.Looper;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import com.apm.insight.runtime.p;
import com.bytedance.applog.aggregation.MetricsSQLiteCacheKt;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: LooperDispatchMonitor.java */
/* loaded from: classes2.dex */
public final class g {

    /* renamed from: r  reason: collision with root package name */
    private static int f6766r = 2;

    /* renamed from: a  reason: collision with root package name */
    private c f6767a;

    /* renamed from: b  reason: collision with root package name */
    private int f6768b;

    /* renamed from: c  reason: collision with root package name */
    private volatile int f6769c;

    /* renamed from: d  reason: collision with root package name */
    private int f6770d;

    /* renamed from: e  reason: collision with root package name */
    private int f6771e;

    /* renamed from: f  reason: collision with root package name */
    private f f6772f;

    /* renamed from: g  reason: collision with root package name */
    private long f6773g;

    /* renamed from: h  reason: collision with root package name */
    private long f6774h;

    /* renamed from: i  reason: collision with root package name */
    private int f6775i;

    /* renamed from: j  reason: collision with root package name */
    private long f6776j;

    /* renamed from: k  reason: collision with root package name */
    private String f6777k;

    /* renamed from: l  reason: collision with root package name */
    private String f6778l;

    /* renamed from: m  reason: collision with root package name */
    private com.apm.insight.b.e f6779m;

    /* renamed from: n  reason: collision with root package name */
    private volatile boolean f6780n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f6781o;

    /* renamed from: p  reason: collision with root package name */
    private final p f6782p;

    /* renamed from: q  reason: collision with root package name */
    private volatile boolean f6783q;

    /* renamed from: s  reason: collision with root package name */
    private Runnable f6784s;

    /* compiled from: LooperDispatchMonitor.java */
    /* loaded from: classes2.dex */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        long f6793a;

        /* renamed from: b  reason: collision with root package name */
        long f6794b;

        /* renamed from: c  reason: collision with root package name */
        long f6795c;

        /* renamed from: d  reason: collision with root package name */
        boolean f6796d;

        /* renamed from: e  reason: collision with root package name */
        int f6797e;

        /* renamed from: f  reason: collision with root package name */
        StackTraceElement[] f6798f;

        private a() {
        }

        /* synthetic */ a(byte b10) {
            this();
        }
    }

    /* compiled from: LooperDispatchMonitor.java */
    /* loaded from: classes2.dex */
    static class b {

        /* renamed from: a  reason: collision with root package name */
        a f6799a;

        /* renamed from: b  reason: collision with root package name */
        private int f6800b;

        final void a(a aVar) {
            throw null;
        }
    }

    /* compiled from: LooperDispatchMonitor.java */
    /* loaded from: classes2.dex */
    public interface c {
    }

    /* compiled from: LooperDispatchMonitor.java */
    /* loaded from: classes2.dex */
    public static class d {
    }

    /* compiled from: LooperDispatchMonitor.java */
    /* loaded from: classes2.dex */
    public static class e {

        /* renamed from: a  reason: collision with root package name */
        public long f6801a;

        /* renamed from: b  reason: collision with root package name */
        long f6802b;

        /* renamed from: c  reason: collision with root package name */
        long f6803c;

        /* renamed from: d  reason: collision with root package name */
        int f6804d;

        /* renamed from: e  reason: collision with root package name */
        int f6805e;

        /* renamed from: f  reason: collision with root package name */
        long f6806f;

        /* renamed from: g  reason: collision with root package name */
        long f6807g;

        /* renamed from: h  reason: collision with root package name */
        String f6808h;

        /* renamed from: i  reason: collision with root package name */
        public String f6809i;

        /* renamed from: j  reason: collision with root package name */
        private String f6810j;

        /* renamed from: k  reason: collision with root package name */
        private d f6811k;

        public final JSONObject a() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("msg", g.a(this.f6808h));
                jSONObject.put("cpuDuration", this.f6807g);
                jSONObject.put("duration", this.f6806f);
                jSONObject.put("type", this.f6804d);
                jSONObject.put(MetricsSQLiteCacheKt.METRICS_COUNT, this.f6805e);
                jSONObject.put("messageCount", this.f6805e);
                jSONObject.put("lastDuration", this.f6802b - this.f6803c);
                jSONObject.put("start", this.f6801a);
                jSONObject.put("end", this.f6802b);
                jSONObject.put("block_uuid", (Object) null);
                jSONObject.put("sblock_uuid", (Object) null);
                jSONObject.put("belong_frame", false);
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
            return jSONObject;
        }

        final void b() {
            this.f6804d = -1;
            this.f6805e = -1;
            this.f6806f = -1L;
            this.f6808h = null;
            this.f6810j = null;
            this.f6811k = null;
            this.f6809i = null;
        }
    }

    public g() {
        this((byte) 0);
    }

    static /* synthetic */ b c() {
        return null;
    }

    static /* synthetic */ p e() {
        return null;
    }

    private g(byte b10) {
        this.f6768b = 0;
        this.f6769c = 0;
        this.f6770d = 100;
        this.f6771e = 200;
        this.f6773g = -1L;
        this.f6774h = -1L;
        this.f6775i = -1;
        this.f6776j = -1L;
        this.f6780n = false;
        this.f6781o = false;
        this.f6783q = false;
        this.f6784s = new Runnable() { // from class: com.apm.insight.b.g.2

            /* renamed from: b  reason: collision with root package name */
            private long f6787b;

            /* renamed from: a  reason: collision with root package name */
            private long f6786a = 0;

            /* renamed from: c  reason: collision with root package name */
            private int f6788c = -1;

            /* renamed from: d  reason: collision with root package name */
            private int f6789d = 0;

            /* renamed from: e  reason: collision with root package name */
            private int f6790e = 0;

            @Override // java.lang.Runnable
            public final void run() {
                long uptimeMillis = SystemClock.uptimeMillis();
                if (g.c().f6799a == null) {
                    a aVar = new a((byte) 0);
                    if (this.f6788c == g.this.f6769c) {
                        this.f6789d++;
                    } else {
                        this.f6789d = 0;
                        this.f6790e = 0;
                        this.f6787b = uptimeMillis;
                    }
                    this.f6788c = g.this.f6769c;
                    int i10 = this.f6789d;
                    if (i10 > 0 && i10 - this.f6790e >= g.f6766r && this.f6786a != 0 && uptimeMillis - this.f6787b > 700 && g.this.f6783q) {
                        aVar.f6798f = Looper.getMainLooper().getThread().getStackTrace();
                        this.f6790e = this.f6789d;
                    }
                    aVar.f6796d = g.this.f6783q;
                    aVar.f6795c = (uptimeMillis - this.f6786a) - 300;
                    aVar.f6793a = uptimeMillis;
                    long uptimeMillis2 = SystemClock.uptimeMillis();
                    this.f6786a = uptimeMillis2;
                    aVar.f6794b = uptimeMillis2 - uptimeMillis;
                    aVar.f6797e = g.this.f6769c;
                    g.e().a(g.this.f6784s, 300L);
                    g.c().a(aVar);
                    return;
                }
                throw null;
            }
        };
        this.f6767a = new c() { // from class: com.apm.insight.b.g.1
        };
        this.f6782p = null;
    }

    static /* synthetic */ int d(g gVar) {
        int i10 = gVar.f6768b;
        gVar.f6768b = i10 + 1;
        return i10;
    }

    public final JSONArray b() {
        JSONArray jSONArray = new JSONArray();
        try {
            int i10 = 0;
            for (e eVar : this.f6772f.a()) {
                if (eVar != null) {
                    i10++;
                    jSONArray.put(eVar.a().put("id", i10));
                }
            }
        } catch (Throwable unused) {
        }
        return jSONArray;
    }

    public final void a() {
        if (this.f6780n) {
            return;
        }
        this.f6780n = true;
        this.f6770d = 100;
        this.f6771e = 300;
        this.f6772f = new f(100);
        this.f6779m = new com.apm.insight.b.e() { // from class: com.apm.insight.b.g.3
            @Override // com.apm.insight.b.e
            public final boolean a() {
                return true;
            }

            @Override // com.apm.insight.b.e
            public final void b(String str) {
                super.b(str);
                g.d(g.this);
                g.a(g.this, false, com.apm.insight.b.e.f6760a);
                g gVar = g.this;
                gVar.f6777k = gVar.f6778l;
                g.this.f6778l = "no message running";
                g.this.f6783q = false;
            }

            @Override // com.apm.insight.b.e
            public final void a(String str) {
                g.this.f6783q = true;
                g.this.f6778l = str;
                super.a(str);
                g.a(g.this, true, com.apm.insight.b.e.f6760a);
            }
        };
        h.a();
        h.a(this.f6779m);
        j.a(j.a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LooperDispatchMonitor.java */
    /* loaded from: classes2.dex */
    public static class f {

        /* renamed from: a  reason: collision with root package name */
        private int f6812a;

        /* renamed from: b  reason: collision with root package name */
        private int f6813b;

        /* renamed from: c  reason: collision with root package name */
        private e f6814c;

        /* renamed from: d  reason: collision with root package name */
        private List<e> f6815d = new ArrayList();

        f(int i10) {
            this.f6812a = i10;
        }

        final e a(int i10) {
            e eVar = this.f6814c;
            if (eVar != null) {
                eVar.f6804d = i10;
                this.f6814c = null;
                return eVar;
            }
            e eVar2 = new e();
            eVar2.f6804d = i10;
            return eVar2;
        }

        final void a(e eVar) {
            int size = this.f6815d.size();
            int i10 = this.f6812a;
            if (size < i10) {
                this.f6815d.add(eVar);
                this.f6813b = this.f6815d.size();
                return;
            }
            int i11 = this.f6813b % i10;
            this.f6813b = i11;
            e eVar2 = this.f6815d.set(i11, eVar);
            eVar2.b();
            this.f6814c = eVar2;
            this.f6813b++;
        }

        final List<e> a() {
            ArrayList arrayList = new ArrayList();
            int i10 = 0;
            if (this.f6815d.size() == this.f6812a) {
                for (int i11 = this.f6813b; i11 < this.f6815d.size(); i11++) {
                    arrayList.add(this.f6815d.get(i11));
                }
                while (i10 < this.f6813b - 1) {
                    arrayList.add(this.f6815d.get(i10));
                    i10++;
                }
            } else {
                while (i10 < this.f6815d.size()) {
                    arrayList.add(this.f6815d.get(i10));
                    i10++;
                }
            }
            return arrayList;
        }
    }

    private void a(int i10, long j10, String str) {
        a(i10, j10, str, true);
    }

    private void a(int i10, long j10, String str, boolean z10) {
        this.f6781o = true;
        e a10 = this.f6772f.a(i10);
        a10.f6806f = j10 - this.f6773g;
        if (z10) {
            long currentThreadTimeMillis = SystemClock.currentThreadTimeMillis();
            a10.f6807g = currentThreadTimeMillis - this.f6776j;
            this.f6776j = currentThreadTimeMillis;
        } else {
            a10.f6807g = -1L;
        }
        a10.f6805e = this.f6768b;
        a10.f6808h = str;
        a10.f6809i = this.f6777k;
        a10.f6801a = this.f6773g;
        a10.f6802b = j10;
        a10.f6803c = this.f6774h;
        this.f6772f.a(a10);
        this.f6768b = 0;
        this.f6773g = j10;
    }

    public final e a(long j10) {
        e eVar = new e();
        eVar.f6808h = this.f6778l;
        eVar.f6809i = this.f6777k;
        eVar.f6806f = j10 - this.f6774h;
        eVar.f6807g = 0 - this.f6776j;
        eVar.f6805e = this.f6768b;
        return eVar;
    }

    public static String a(String str) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            return "unknown message";
        }
        try {
            String[] split = str.split(":");
            String str3 = split.length == 2 ? split[1] : "";
            if (str.contains("{") && str.contains("}")) {
                str2 = str.split("\\{")[0];
                try {
                    str = str2 + str.split("\\}")[1];
                } catch (Throwable unused) {
                    return str2;
                }
            } else {
                str2 = str;
            }
            if (str.contains("@")) {
                String[] split2 = str.split("@");
                if (split2.length > 1) {
                    str = split2[0];
                }
            }
            if (str.contains("(") && str.contains(")") && !str.endsWith(" null")) {
                String[] split3 = str.split("\\(");
                if (split3.length > 1) {
                    str = split3[1];
                }
                str = str.replace(")", "");
            }
            if (str.startsWith(" ")) {
                str = str.replace(" ", "");
            }
            return str + str3;
        } catch (Throwable unused2) {
            return str;
        }
    }

    static /* synthetic */ void a(g gVar, boolean z10, long j10) {
        int i10 = gVar.f6769c + 1;
        gVar.f6769c = i10;
        gVar.f6769c = i10 & 65535;
        gVar.f6781o = false;
        if (gVar.f6773g < 0) {
            gVar.f6773g = j10;
        }
        if (gVar.f6774h < 0) {
            gVar.f6774h = j10;
        }
        if (gVar.f6775i < 0) {
            gVar.f6775i = Process.myTid();
            gVar.f6776j = SystemClock.currentThreadTimeMillis();
        }
        int i11 = gVar.f6771e;
        if (j10 - gVar.f6773g > i11) {
            long j11 = gVar.f6774h;
            if (j10 - j11 <= i11) {
                gVar.a(9, j10, gVar.f6778l);
            } else if (z10) {
                if (gVar.f6768b == 0) {
                    gVar.a(1, j10, "no message running");
                } else {
                    gVar.a(9, j11, gVar.f6777k);
                    gVar.a(1, j10, "no message running", false);
                }
            } else if (gVar.f6768b == 0) {
                gVar.a(8, j10, gVar.f6778l, true);
            } else {
                gVar.a(9, j11, gVar.f6777k, false);
                gVar.a(8, j10, gVar.f6778l, true);
            }
        }
        gVar.f6774h = j10;
    }
}
