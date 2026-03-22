package com.google.firebase.crashlytics.internal.common;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import e8.f0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
/* compiled from: CrashlyticsReportDataCapture.java */
/* loaded from: classes5.dex */
public class a0 {

    /* renamed from: g  reason: collision with root package name */
    private static final Map<String, Integer> f20682g;

    /* renamed from: h  reason: collision with root package name */
    static final String f20683h;

    /* renamed from: a  reason: collision with root package name */
    private final Context f20684a;

    /* renamed from: b  reason: collision with root package name */
    private final i0 f20685b;

    /* renamed from: c  reason: collision with root package name */
    private final a f20686c;

    /* renamed from: d  reason: collision with root package name */
    private final k8.d f20687d;

    /* renamed from: e  reason: collision with root package name */
    private final j8.b f20688e;

    /* renamed from: f  reason: collision with root package name */
    private final z7.j f20689f = z7.j.f71520a;

    static {
        HashMap hashMap = new HashMap();
        f20682g = hashMap;
        hashMap.put("armeabi", 5);
        hashMap.put("armeabi-v7a", 6);
        hashMap.put("arm64-v8a", 9);
        hashMap.put("x86", 0);
        hashMap.put("x86_64", 1);
        f20683h = String.format(Locale.US, "Crashlytics Android SDK/%s", "20.0.3");
    }

    public a0(Context context, i0 i0Var, a aVar, k8.d dVar, j8.b bVar) {
        this.f20684a = context;
        this.f20685b = i0Var;
        this.f20686c = aVar;
        this.f20687d = dVar;
        this.f20688e = bVar;
    }

    private f0.e.d.a.c A(f0.a aVar) {
        return this.f20689f.a(aVar.e(), aVar.d(), aVar.c());
    }

    private f0.a a(f0.a aVar) {
        List<f0.a.AbstractC0718a> list;
        if (this.f20688e.a().f20855b.f20864c && this.f20686c.f20676c.size() > 0) {
            ArrayList arrayList = new ArrayList();
            for (f fVar : this.f20686c.f20676c) {
                arrayList.add(f0.a.AbstractC0718a.a().d(fVar.c()).b(fVar.a()).c(fVar.b()).a());
            }
            list = Collections.unmodifiableList(arrayList);
        } else {
            list = null;
        }
        return f0.a.a().c(aVar.c()).e(aVar.e()).g(aVar.g()).i(aVar.i()).d(aVar.d()).f(aVar.f()).h(aVar.h()).j(aVar.j()).b(list).a();
    }

    private f0.b b() {
        return e8.f0.b().l("20.0.3").h(this.f20686c.f20674a).i(this.f20685b.a().c()).g(this.f20685b.a().e()).f(this.f20685b.a().d()).d(this.f20686c.f20679f).e(this.f20686c.f20680g).k(4);
    }

    private static long f(long j10) {
        if (j10 <= 0) {
            return 0L;
        }
        return j10;
    }

    private static int g() {
        Integer num;
        String str = Build.CPU_ABI;
        if (TextUtils.isEmpty(str) || (num = f20682g.get(str.toLowerCase(Locale.US))) == null) {
            return 7;
        }
        return num.intValue();
    }

    private f0.e.d.a.b.AbstractC0722a h() {
        return f0.e.d.a.b.AbstractC0722a.a().b(0L).d(0L).c(this.f20686c.f20678e).e(this.f20686c.f20675b).a();
    }

    private List<f0.e.d.a.b.AbstractC0722a> i() {
        return Collections.singletonList(h());
    }

    private f0.e.d.a j(int i10, f0.a aVar) {
        boolean z10;
        if (aVar.c() != 100) {
            z10 = true;
        } else {
            z10 = false;
        }
        return f0.e.d.a.a().c(Boolean.valueOf(z10)).d(A(aVar)).h(i10).f(o(aVar)).a();
    }

    private f0.e.d.a k(int i10, k8.e eVar, Thread thread, int i11, int i12, boolean z10) {
        Boolean bool;
        boolean z11;
        f0.e.d.a.c e10 = this.f20689f.e(this.f20684a);
        if (e10.b() > 0) {
            if (e10.b() != 100) {
                z11 = true;
            } else {
                z11 = false;
            }
            bool = Boolean.valueOf(z11);
        } else {
            bool = null;
        }
        return f0.e.d.a.a().c(bool).d(e10).b(this.f20689f.d(this.f20684a)).h(i10).f(p(eVar, thread, i11, i12, z10)).a();
    }

    private f0.e.d.c l(int i10) {
        Double d10;
        e a10 = e.a(this.f20684a);
        Float b10 = a10.b();
        if (b10 != null) {
            d10 = Double.valueOf(b10.doubleValue());
        } else {
            d10 = null;
        }
        int c10 = a10.c();
        boolean n10 = CommonUtils.n(this.f20684a);
        long f10 = f(CommonUtils.b(this.f20684a) - CommonUtils.a(this.f20684a));
        return f0.e.d.c.a().b(d10).c(c10).f(n10).e(i10).g(f10).d(CommonUtils.c(Environment.getDataDirectory().getPath())).a();
    }

    private f0.e.d.a.b.c m(k8.e eVar, int i10, int i11) {
        return n(eVar, i10, i11, 0);
    }

    private f0.e.d.a.b.c n(k8.e eVar, int i10, int i11, int i12) {
        String str = eVar.f60682b;
        String str2 = eVar.f60681a;
        StackTraceElement[] stackTraceElementArr = eVar.f60683c;
        int i13 = 0;
        if (stackTraceElementArr == null) {
            stackTraceElementArr = new StackTraceElement[0];
        }
        k8.e eVar2 = eVar.f60684d;
        if (i12 >= i11) {
            k8.e eVar3 = eVar2;
            while (eVar3 != null) {
                eVar3 = eVar3.f60684d;
                i13++;
            }
        }
        f0.e.d.a.b.c.AbstractC0725a d10 = f0.e.d.a.b.c.a().f(str).e(str2).c(r(stackTraceElementArr, i10)).d(i13);
        if (eVar2 != null && i13 == 0) {
            d10.b(n(eVar2, i10, i11, i12 + 1));
        }
        return d10.a();
    }

    private f0.e.d.a.b o(f0.a aVar) {
        return f0.e.d.a.b.a().b(aVar).e(w()).c(i()).a();
    }

    private f0.e.d.a.b p(k8.e eVar, Thread thread, int i10, int i11, boolean z10) {
        return f0.e.d.a.b.a().f(z(eVar, thread, i10, z10)).d(m(eVar, i10, i11)).e(w()).c(i()).a();
    }

    private f0.e.d.a.b.AbstractC0728e.AbstractC0730b q(StackTraceElement stackTraceElement, f0.e.d.a.b.AbstractC0728e.AbstractC0730b.AbstractC0731a abstractC0731a) {
        long j10;
        long j11 = 0;
        if (stackTraceElement.isNativeMethod()) {
            j10 = Math.max(stackTraceElement.getLineNumber(), 0L);
        } else {
            j10 = 0;
        }
        String str = stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName();
        String fileName = stackTraceElement.getFileName();
        if (!stackTraceElement.isNativeMethod() && stackTraceElement.getLineNumber() > 0) {
            j11 = stackTraceElement.getLineNumber();
        }
        return abstractC0731a.e(j10).f(str).b(fileName).d(j11).a();
    }

    private List<f0.e.d.a.b.AbstractC0728e.AbstractC0730b> r(StackTraceElement[] stackTraceElementArr, int i10) {
        ArrayList arrayList = new ArrayList();
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            arrayList.add(q(stackTraceElement, f0.e.d.a.b.AbstractC0728e.AbstractC0730b.a().c(i10)));
        }
        return Collections.unmodifiableList(arrayList);
    }

    private f0.e.a s() {
        return f0.e.a.a().e(this.f20685b.f()).g(this.f20686c.f20679f).d(this.f20686c.f20680g).f(this.f20685b.a().c()).b(this.f20686c.f20681h.d()).c(this.f20686c.f20681h.e()).a();
    }

    private f0.e t(String str, long j10) {
        return f0.e.a().m(j10).j(str).h(f20683h).b(s()).l(v()).e(u()).i(3).a();
    }

    private f0.e.c u() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        int g10 = g();
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        long b10 = CommonUtils.b(this.f20684a);
        long blockCount = statFs.getBlockCount() * statFs.getBlockSize();
        boolean x10 = CommonUtils.x();
        int l10 = CommonUtils.l();
        String str = Build.MANUFACTURER;
        return f0.e.c.a().b(g10).f(Build.MODEL).c(availableProcessors).h(b10).d(blockCount).i(x10).j(l10).e(str).g(Build.PRODUCT).a();
    }

    private f0.e.AbstractC0735e v() {
        return f0.e.AbstractC0735e.a().d(3).e(Build.VERSION.RELEASE).b(Build.VERSION.CODENAME).c(CommonUtils.y()).a();
    }

    private f0.e.d.a.b.AbstractC0726d w() {
        return f0.e.d.a.b.AbstractC0726d.a().d(MBridgeConstans.ENDCARD_URL_TYPE_PL).c(MBridgeConstans.ENDCARD_URL_TYPE_PL).b(0L).a();
    }

    private f0.e.d.a.b.AbstractC0728e x(Thread thread, StackTraceElement[] stackTraceElementArr) {
        return y(thread, stackTraceElementArr, 0);
    }

    private f0.e.d.a.b.AbstractC0728e y(Thread thread, StackTraceElement[] stackTraceElementArr, int i10) {
        return f0.e.d.a.b.AbstractC0728e.a().d(thread.getName()).c(i10).b(r(stackTraceElementArr, i10)).a();
    }

    private List<f0.e.d.a.b.AbstractC0728e> z(k8.e eVar, Thread thread, int i10, boolean z10) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(y(thread, eVar.f60683c, i10));
        if (z10) {
            for (Map.Entry<Thread, StackTraceElement[]> entry : Thread.getAllStackTraces().entrySet()) {
                Thread key = entry.getKey();
                if (!key.equals(thread)) {
                    arrayList.add(x(key, this.f20687d.a(entry.getValue())));
                }
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    public f0.e.d c(f0.a aVar) {
        int i10 = this.f20684a.getResources().getConfiguration().orientation;
        return f0.e.d.a().g("anr").f(aVar.i()).b(j(i10, a(aVar))).c(l(i10)).a();
    }

    public f0.e.d d(Throwable th2, Thread thread, String str, long j10, int i10, int i11, boolean z10) {
        int i12 = this.f20684a.getResources().getConfiguration().orientation;
        return f0.e.d.a().g(str).f(j10).b(k(i12, k8.e.a(th2, this.f20687d), thread, i10, i11, z10)).c(l(i12)).a();
    }

    public e8.f0 e(String str, long j10) {
        return b().m(t(str, j10)).a();
    }
}
