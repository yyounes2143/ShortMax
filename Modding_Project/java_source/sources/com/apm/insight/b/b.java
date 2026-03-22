package com.apm.insight.b;

import android.content.Context;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apm.insight.CrashType;
import com.apm.insight.ICrashCallback;
import com.apm.insight.Npth;
import com.apm.insight.nativecrash.NativeImpl;
import com.apm.insight.runtime.l;
import com.apm.insight.runtime.n;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: ANRManager.java */
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: z  reason: collision with root package name */
    private static volatile boolean f6719z = true;

    /* renamed from: a  reason: collision with root package name */
    private c f6720a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f6721b;

    /* renamed from: c  reason: collision with root package name */
    private volatile boolean f6722c;

    /* renamed from: g  reason: collision with root package name */
    private JSONObject f6726g;

    /* renamed from: h  reason: collision with root package name */
    private JSONObject f6727h;

    /* renamed from: m  reason: collision with root package name */
    private JSONArray f6732m;

    /* renamed from: n  reason: collision with root package name */
    private JSONObject f6733n;

    /* renamed from: q  reason: collision with root package name */
    private JSONArray f6736q;

    /* renamed from: r  reason: collision with root package name */
    private JSONArray f6737r;

    /* renamed from: s  reason: collision with root package name */
    private JSONObject f6738s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f6739t;

    /* renamed from: v  reason: collision with root package name */
    private volatile boolean f6741v;

    /* renamed from: d  reason: collision with root package name */
    private long f6723d = -1;

    /* renamed from: e  reason: collision with root package name */
    private File f6724e = null;

    /* renamed from: f  reason: collision with root package name */
    private boolean f6725f = true;

    /* renamed from: i  reason: collision with root package name */
    private String f6728i = "unknown";

    /* renamed from: j  reason: collision with root package name */
    private String f6729j = "unknown";

    /* renamed from: k  reason: collision with root package name */
    private String f6730k = "unknown";

    /* renamed from: l  reason: collision with root package name */
    private String f6731l = "npth_inner_default";

    /* renamed from: o  reason: collision with root package name */
    private int f6734o = 0;

    /* renamed from: p  reason: collision with root package name */
    private long f6735p = -1;

    /* renamed from: u  reason: collision with root package name */
    private final Object f6740u = new Object();

    /* renamed from: w  reason: collision with root package name */
    private long f6742w = -1;

    /* renamed from: x  reason: collision with root package name */
    private long f6743x = 0;

    /* renamed from: y  reason: collision with root package name */
    private final Runnable f6744y = new Runnable() { // from class: com.apm.insight.b.b.1
        @Override // java.lang.Runnable
        public final void run() {
            try {
                b.this.g();
            } catch (Throwable th2) {
                com.apm.insight.c.a();
                com.apm.insight.runtime.j.a(th2, "NPTH_CATCH");
            }
        }
    };
    private int A = 0;
    private List<Pattern> B = null;
    private Pattern C = null;
    private File D = null;

    public b(Context context) {
        this.f6721b = context;
    }

    private static boolean h() {
        boolean a10 = com.apm.insight.l.a.a();
        boolean z10 = !a10;
        if (!a10 && com.apm.insight.runtime.a.b.d().e() <= 2000) {
            return false;
        }
        return z10;
    }

    private File i() {
        if (this.D == null) {
            File filesDir = this.f6721b.getFilesDir();
            this.D = new File(filesDir, "has_anr_signal_" + com.apm.insight.l.a.b().replaceAll(":", "_"));
        }
        return this.D;
    }

    public final void b() {
        if (this.f6722c) {
            this.f6722c = false;
            c cVar = this.f6720a;
            if (cVar != null) {
                cVar.b();
            }
            this.f6720a = null;
        }
    }

    public final void c() {
        c cVar = this.f6720a;
        if (cVar != null) {
            cVar.a();
        }
    }

    public final void d() {
        synchronized (this.f6740u) {
        }
        this.f6744y.run();
    }

    public final void e() {
        if (NativeImpl.h()) {
            try {
                com.apm.insight.l.f.a(i(), String.valueOf(this.A + 1), false);
            } catch (Throwable th2) {
                com.apm.insight.c.a();
                com.apm.insight.runtime.j.a(th2, "NPTH_CATCH");
            }
        }
        this.f6742w = SystemClock.uptimeMillis();
        this.f6741v = true;
    }

    public final void f() {
        File i10 = i();
        try {
            int intValue = Integer.decode(com.apm.insight.l.f.a(i10.getAbsolutePath(), "\n")).intValue();
            this.A = intValue;
            if (intValue >= 2) {
                NativeImpl.a(false);
            } else {
                NativeImpl.a(true);
            }
        } catch (IOException unused) {
            NativeImpl.a(true);
        } catch (Throwable unused2) {
            com.apm.insight.l.f.a(i10);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x035c  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0360  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0383  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0387  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x03b9 A[Catch: all -> 0x0244, TRY_LEAVE, TryCatch #5 {all -> 0x0244, blocks: (B:75:0x023e, B:78:0x0248, B:100:0x02b4, B:104:0x0362, B:108:0x0389, B:110:0x03b9, B:111:0x03c2), top: B:141:0x023e }] */
    /* JADX WARN: Removed duplicated region for block: B:121:0x03e8 A[Catch: all -> 0x03f0, TRY_LEAVE, TryCatch #10 {all -> 0x03f0, blocks: (B:119:0x03da, B:121:0x03e8), top: B:149:0x03da }] */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0417 A[Catch: all -> 0x0422, TRY_LEAVE, TryCatch #4 {all -> 0x0422, blocks: (B:122:0x03f0, B:124:0x0417), top: B:139:0x03f0 }] */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0239 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01a1 A[Catch: all -> 0x01b1, TryCatch #3 {all -> 0x01b1, blocks: (B:57:0x0152, B:59:0x01a1, B:62:0x01b4, B:64:0x01d7, B:65:0x01dc, B:67:0x01e2, B:70:0x01ea, B:72:0x01f1, B:118:0x03d2, B:125:0x0422, B:71:0x01ed), top: B:137:0x0152 }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01d7 A[Catch: all -> 0x01b1, TryCatch #3 {all -> 0x01b1, blocks: (B:57:0x0152, B:59:0x01a1, B:62:0x01b4, B:64:0x01d7, B:65:0x01dc, B:67:0x01e2, B:70:0x01ea, B:72:0x01f1, B:118:0x03d2, B:125:0x0422, B:71:0x01ed), top: B:137:0x0152 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0247  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0273  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0276  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final boolean g() {
        /*
            Method dump skipped, instructions count: 1095
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apm.insight.b.b.g():boolean");
    }

    public final void a() {
        if (this.f6722c) {
            return;
        }
        this.f6720a = new c(this);
        this.f6723d = com.apm.insight.e.j();
        this.f6722c = true;
    }

    private JSONObject c(@NonNull JSONArray jSONArray) {
        JSONObject jSONObject = new JSONObject();
        JSONArray b10 = com.apm.insight.a.b(jSONArray);
        if (b10.length() != jSONArray.length()) {
            this.f6734o++;
        }
        try {
            jSONObject.put("thread_number", 1);
            StringBuilder sb2 = new StringBuilder();
            for (int i10 = 0; i10 < b10.length(); i10++) {
                sb2.append(b10.getString(i10));
                sb2.append('\n');
            }
            jSONObject.put("mainStackFromTrace", sb2.toString());
            return jSONObject;
        } catch (JSONException unused) {
            return null;
        }
    }

    private boolean a(long j10) {
        if (this.f6741v) {
            this.f6741v = false;
            b(j10);
        }
        return false;
    }

    private void b(long j10) {
        if (this.f6743x != this.f6742w) {
            try {
                this.f6735p = System.currentTimeMillis();
                if (com.apm.insight.e.x()) {
                    this.f6737r = f.b().b();
                    this.f6736q = j.a(j10);
                    this.f6727h = f.b().a(j10).a();
                }
                JSONObject jSONObject = new JSONObject();
                this.f6738s = jSONObject;
                com.apm.insight.l.a.a(this.f6721b, jSONObject);
                this.f6739t = h();
                this.f6725f = !Npth.hasCrash();
            } catch (Throwable unused) {
            }
            try {
                this.f6723d = this.f6735p;
                String b10 = com.apm.insight.l.j.b();
                File file = new File(com.apm.insight.l.j.f(this.f6721b), b10);
                File file2 = new File(file, "trace_" + com.apm.insight.l.a.b().replace(':', '_') + ".txt");
                file2.getParentFile().mkdirs();
                com.apm.insight.l.f.a(file2, com.apm.insight.l.b.a().format(new Date(System.currentTimeMillis())) + "\n", false);
                n.a("anr_trace", b10);
                NativeImpl.i(file2.getAbsolutePath());
                try {
                    JSONArray a10 = com.apm.insight.l.f.a(file2.getAbsolutePath());
                    this.f6732m = a10;
                    a(a10);
                } catch (IOException unused2) {
                } catch (Throwable th2) {
                    com.apm.insight.c.a();
                    com.apm.insight.runtime.j.a(th2, "NPTH_CATCH");
                }
                if (this.f6726g == null) {
                    this.f6726g = d.a();
                }
            } catch (Throwable th3) {
                com.apm.insight.c.a();
                com.apm.insight.runtime.j.a(th3, "NPTH_CATCH");
            }
            com.apm.insight.a.d();
        } else {
            try {
                this.f6723d = this.f6735p;
                String b11 = com.apm.insight.l.j.b();
                File file3 = new File(com.apm.insight.l.j.f(this.f6721b), b11);
                File file4 = new File(file3, "trace" + com.apm.insight.l.a.b().replace(':', '_') + ".txt");
                file4.getParentFile().mkdirs();
                com.apm.insight.l.f.a(file4, com.apm.insight.l.b.a().format(new Date(System.currentTimeMillis())) + "\n", false);
                n.a("anr_trace", b11);
                NativeImpl.i(file4.getAbsolutePath());
                try {
                    JSONArray a11 = com.apm.insight.l.f.a(file4.getAbsolutePath());
                    this.f6732m = a11;
                    a(a11);
                } catch (IOException unused3) {
                } catch (Throwable th4) {
                    com.apm.insight.c.a();
                    com.apm.insight.runtime.j.a(th4, "NPTH_CATCH");
                }
                if (this.f6726g == null) {
                    this.f6726g = d.a();
                }
            } catch (Throwable th5) {
                com.apm.insight.c.a();
                com.apm.insight.runtime.j.a(th5, "NPTH_CATCH");
            }
        }
        long j11 = this.f6742w;
        this.f6743x = j11;
        this.f6742w = -1L;
        if (j11 == -1) {
            this.f6743x = (-1) - 1;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x017d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(org.json.JSONArray r17) {
        /*
            Method dump skipped, instructions count: 477
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apm.insight.b.b.a(org.json.JSONArray):void");
    }

    @Nullable
    private int[] b(@NonNull JSONArray jSONArray) throws IllegalArgumentException {
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            String optString = jSONArray.optString(i10);
            int indexOf = (optString == null || optString.isEmpty()) ? -1 : optString.indexOf("utm=");
            if (indexOf > 0) {
                if (this.C == null) {
                    this.C = Pattern.compile("[^0-9]+");
                }
                String[] split = this.C.split(optString.substring(indexOf));
                if (split == null || split.length < 2) {
                    return null;
                }
                int intValue = Integer.decode(split[1]).intValue();
                int intValue2 = Integer.decode(split[2]).intValue();
                return new int[]{intValue, intValue2, intValue + intValue2};
            }
        }
        return null;
    }

    private static String b(float f10) {
        return a(f10 / 100.0f);
    }

    private static void b(String str, JSONArray jSONArray) {
        for (ICrashCallback iCrashCallback : l.a().e()) {
            try {
                if (iCrashCallback instanceof com.apm.insight.b) {
                    ((com.apm.insight.b) iCrashCallback).a(CrashType.ANR, str, (Thread) null, jSONArray);
                } else {
                    iCrashCallback.onCrash(CrashType.ANR, str, null);
                }
            } catch (Throwable th2) {
                com.apm.insight.c.a();
                com.apm.insight.runtime.j.a(th2, "NPTH_CATCH");
            }
        }
    }

    private boolean a(String str) {
        if (this.B == null) {
            JSONArray b10 = com.apm.insight.runtime.a.b();
            if (b10 != null) {
                this.B = new LinkedList();
                this.f6731l = b10.optString(0);
                for (int i10 = 1; i10 < b10.length(); i10++) {
                    try {
                        this.B.add(Pattern.compile(b10.optString(i10)));
                    } catch (Throwable unused) {
                    }
                }
            }
            if (this.B == null) {
                LinkedList linkedList = new LinkedList();
                this.B = linkedList;
                linkedList.add(Pattern.compile("^main$"));
                this.B.add(Pattern.compile("^default_npth_thread$"));
                this.B.add(Pattern.compile("^RenderThread$"));
                this.B.add(Pattern.compile("^Jit thread pool worker thread.*$"));
            }
        }
        for (Pattern pattern : this.B) {
            if (pattern.matcher(str).matches()) {
                return true;
            }
        }
        return false;
    }

    private JSONObject a(String str, JSONArray jSONArray) {
        JSONObject jSONObject = new JSONObject();
        JSONArray b10 = com.apm.insight.a.b(jSONArray);
        if (b10.length() != jSONArray.length()) {
            this.f6734o++;
        }
        try {
            jSONObject.put(CrashHianalyticsData.THREAD_NAME, str);
            jSONObject.put("thread_stack", b10);
            return jSONObject;
        } catch (JSONException unused) {
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:113:0x01fd, code lost:
        if (r3 != 5) goto L134;
     */
    /* JADX WARN: Removed duplicated region for block: B:102:0x01ea  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0234  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0241  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x024c  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0256  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x025d  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x02ad  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x02b4 A[LOOP:2: B:100:0x01e7->B:154:0x02b4, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:183:0x035a  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0369  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0391  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x03d0 A[EDGE_INSN: B:240:0x03d0->B:205:0x03d0 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:242:0x03e6 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:243:0x02bc A[EDGE_INSN: B:243:0x02bc->B:155:0x02bc ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(java.lang.String r29, org.json.JSONObject r30) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 1142
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apm.insight.b.b.a(java.lang.String, org.json.JSONObject):void");
    }

    private static void a(HashMap<String, Float> hashMap, JSONObject jSONObject, String str) throws JSONException {
        String concat = "npth_anr_".concat(String.valueOf(str));
        if (hashMap.isEmpty()) {
            jSONObject.put(concat + "_total", "not found");
            return;
        }
        float f10 = 0.0f;
        float f11 = 0.0f;
        float f12 = 0.0f;
        float f13 = 0.0f;
        float f14 = 0.0f;
        for (Map.Entry<String, Float> entry : hashMap.entrySet()) {
            String key = entry.getKey();
            if (key.endsWith("user")) {
                f10 += entry.getValue().floatValue();
            } else if (key.endsWith("kernel")) {
                f11 += entry.getValue().floatValue();
            } else if (key.endsWith("iowait")) {
                f12 += entry.getValue().floatValue();
            } else if (key.endsWith("irq")) {
                f13 += entry.getValue().floatValue();
            } else if (key.endsWith("softirq")) {
                f14 += entry.getValue().floatValue();
            }
        }
        float f15 = f10 + f11 + f12 + f13 + f14;
        jSONObject.put(concat + "_total", b(f15));
        jSONObject.put(concat + "_kernel_user_ratio", a(f11, f15));
        jSONObject.put(concat + "_iowait_user_ratio", a(f12, f15));
    }

    private static String a(float f10, float f11) {
        if (f11 > 0.0f) {
            return a(f10 / f11);
        }
        return f10 > 0.0f ? "100%" : "0%";
    }

    private static String a(float f10) {
        if (f10 <= 0.0f) {
            return "0%";
        }
        if (f10 <= 0.1f) {
            return "0% - 10%";
        }
        if (f10 <= 0.3f) {
            return "10% - 30%";
        }
        if (f10 <= 0.6f) {
            return "30% - 60%";
        }
        if (f10 <= 0.9f) {
            return "60% - 90%";
        }
        return "90% - 100%";
    }
}
