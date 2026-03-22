package com.google.firebase.crashlytics.internal.common;

import android.app.ApplicationExitInfo;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorkers;
import e8.f0;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.SortedSet;
import java.util.concurrent.Executor;
/* compiled from: SessionReportingCoordinator.java */
/* loaded from: classes5.dex */
public class s0 {

    /* renamed from: a  reason: collision with root package name */
    private final a0 f20804a;

    /* renamed from: b  reason: collision with root package name */
    private final h8.e f20805b;

    /* renamed from: c  reason: collision with root package name */
    private final i8.b f20806c;

    /* renamed from: d  reason: collision with root package name */
    private final d8.f f20807d;

    /* renamed from: e  reason: collision with root package name */
    private final d8.p f20808e;

    /* renamed from: f  reason: collision with root package name */
    private final i0 f20809f;

    /* renamed from: g  reason: collision with root package name */
    private final CrashlyticsWorkers f20810g;

    s0(a0 a0Var, h8.e eVar, i8.b bVar, d8.f fVar, d8.p pVar, i0 i0Var, CrashlyticsWorkers crashlyticsWorkers) {
        this.f20804a = a0Var;
        this.f20805b = eVar;
        this.f20806c = bVar;
        this.f20807d = fVar;
        this.f20808e = pVar;
        this.f20809f = i0Var;
        this.f20810g = crashlyticsWorkers;
    }

    private f0.e.d d(f0.e.d dVar, d8.f fVar, d8.p pVar) {
        return e(dVar, fVar, pVar, Collections.emptyMap());
    }

    private f0.e.d e(f0.e.d dVar, d8.f fVar, d8.p pVar, Map<String, String> map) {
        f0.e.d.b h10 = dVar.h();
        String c10 = fVar.c();
        if (c10 != null) {
            h10.d(f0.e.d.AbstractC0733d.a().b(c10).a());
        } else {
            z7.g.f().i("No log data to include with this event.");
        }
        List<f0.c> o10 = o(pVar.g(map));
        List<f0.c> o11 = o(pVar.h());
        if (!o10.isEmpty() || !o11.isEmpty()) {
            h10.b(dVar.b().i().e(o10).g(o11).a());
        }
        return h10.a();
    }

    private f0.e.d f(f0.e.d dVar, Map<String, String> map) {
        return g(e(dVar, this.f20807d, this.f20808e, map), this.f20808e);
    }

    private f0.e.d g(f0.e.d dVar, d8.p pVar) {
        List<f0.e.d.AbstractC0734e> i10 = pVar.i();
        if (i10.isEmpty()) {
            return dVar;
        }
        f0.e.d.b h10 = dVar.h();
        h10.e(f0.e.d.f.a().b(i10).a());
        return h10.a();
    }

    @RequiresApi(api = 30)
    private static f0.a h(ApplicationExitInfo applicationExitInfo) {
        String applicationExitInfo2;
        int importance;
        String processName;
        int reason;
        long timestamp;
        int pid;
        long pss;
        long rss;
        InputStream traceInputStream;
        String str = null;
        try {
            traceInputStream = applicationExitInfo.getTraceInputStream();
            if (traceInputStream != null) {
                str = i(traceInputStream);
            }
        } catch (IOException e10) {
            z7.g f10 = z7.g.f();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Could not get input trace in application exit info: ");
            applicationExitInfo2 = applicationExitInfo.toString();
            sb2.append(applicationExitInfo2);
            sb2.append(" Error: ");
            sb2.append(e10);
            f10.k(sb2.toString());
        }
        f0.a.b a10 = f0.a.a();
        importance = applicationExitInfo.getImportance();
        f0.a.b c10 = a10.c(importance);
        processName = applicationExitInfo.getProcessName();
        f0.a.b e11 = c10.e(processName);
        reason = applicationExitInfo.getReason();
        f0.a.b g10 = e11.g(reason);
        timestamp = applicationExitInfo.getTimestamp();
        f0.a.b i10 = g10.i(timestamp);
        pid = applicationExitInfo.getPid();
        f0.a.b d10 = i10.d(pid);
        pss = applicationExitInfo.getPss();
        f0.a.b f11 = d10.f(pss);
        rss = applicationExitInfo.getRss();
        return f11.h(rss).j(str).a();
    }

    @RequiresApi(api = 19)
    @VisibleForTesting
    public static String i(InputStream inputStream) throws IOException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[8192];
            while (true) {
                int read = bufferedInputStream.read(bArr);
                if (read != -1) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    String byteArrayOutputStream2 = byteArrayOutputStream.toString(StandardCharsets.UTF_8.name());
                    byteArrayOutputStream.close();
                    bufferedInputStream.close();
                    return byteArrayOutputStream2;
                }
            }
        } catch (Throwable th2) {
            try {
                bufferedInputStream.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public static s0 j(Context context, i0 i0Var, h8.g gVar, a aVar, d8.f fVar, d8.p pVar, k8.d dVar, j8.b bVar, n0 n0Var, l lVar, CrashlyticsWorkers crashlyticsWorkers) {
        return new s0(new a0(context, i0Var, aVar, dVar, bVar), new h8.e(gVar, bVar, lVar), i8.b.b(context, bVar, n0Var), fVar, pVar, i0Var, crashlyticsWorkers);
    }

    private b0 k(b0 b0Var) {
        if (b0Var.b().h() != null && b0Var.b().g() != null) {
            return b0Var;
        }
        h0 d10 = this.f20809f.d(true);
        return b0.a(b0Var.b().t(d10.b()).s(d10.a()), b0Var.d(), b0Var.c());
    }

    @Nullable
    @RequiresApi(api = 30)
    private ApplicationExitInfo n(String str, List<ApplicationExitInfo> list) {
        long timestamp;
        int reason;
        long q10 = this.f20805b.q(str);
        for (ApplicationExitInfo applicationExitInfo : list) {
            ApplicationExitInfo a10 = androidx.work.impl.utils.b.a(applicationExitInfo);
            timestamp = a10.getTimestamp();
            if (timestamp >= q10) {
                reason = a10.getReason();
                if (reason == 6) {
                    return a10;
                }
            } else {
                return null;
            }
        }
        return null;
    }

    @NonNull
    private static List<f0.c> o(@NonNull Map<String, String> map) {
        ArrayList arrayList = new ArrayList();
        arrayList.ensureCapacity(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            arrayList.add(f0.c.a().b(entry.getKey()).c(entry.getValue()).a());
        }
        Collections.sort(arrayList, new Comparator() { // from class: com.google.firebase.crashlytics.internal.common.r0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int q10;
                q10 = s0.q((f0.c) obj, (f0.c) obj2);
                return q10;
            }
        });
        return Collections.unmodifiableList(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int q(f0.c cVar, f0.c cVar2) {
        return cVar.b().compareTo(cVar2.b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void r(f0.e.d dVar, d8.c cVar, boolean z10) {
        z7.g.f().b("disk worker: log non-fatal event to persistence");
        this.f20805b.y(dVar, cVar.b(), z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean u(@NonNull Task<b0> task) {
        if (task.isSuccessful()) {
            b0 result = task.getResult();
            z7.g f10 = z7.g.f();
            f10.b("Crashlytics report successfully enqueued to DataTransport: " + result.d());
            File c10 = result.c();
            if (c10.delete()) {
                z7.g f11 = z7.g.f();
                f11.b("Deleted report file: " + c10.getPath());
                return true;
            }
            z7.g f12 = z7.g.f();
            f12.k("Crashlytics could not delete report file: " + c10.getPath());
            return true;
        }
        z7.g.f().l("Crashlytics report could not be enqueued to DataTransport", task.getException());
        return false;
    }

    private void v(@NonNull Throwable th2, @NonNull Thread thread, @NonNull String str, @NonNull final d8.c cVar, boolean z10) {
        final boolean equals = str.equals("crash");
        final f0.e.d f10 = f(this.f20804a.d(th2, thread, str, cVar.c(), 4, 8, z10), cVar.a());
        if (!z10) {
            this.f20810g.f20845b.f(new Runnable() { // from class: com.google.firebase.crashlytics.internal.common.p0
                @Override // java.lang.Runnable
                public final void run() {
                    s0.this.r(f10, cVar, equals);
                }
            });
        } else {
            this.f20805b.y(f10, cVar.b(), equals);
        }
    }

    public Task<Void> A(@NonNull Executor executor) {
        return B(executor, null);
    }

    public Task<Void> B(@NonNull Executor executor, @Nullable String str) {
        boolean z10;
        List<b0> w10 = this.f20805b.w();
        ArrayList arrayList = new ArrayList();
        for (b0 b0Var : w10) {
            if (str == null || str.equals(b0Var.d())) {
                i8.b bVar = this.f20806c;
                b0 k10 = k(b0Var);
                if (str != null) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                arrayList.add(bVar.c(k10, z10).continueWith(executor, new Continuation() { // from class: com.google.firebase.crashlytics.internal.common.q0
                    @Override // com.google.android.gms.tasks.Continuation
                    public final Object then(Task task) {
                        boolean u10;
                        u10 = s0.this.u(task);
                        return Boolean.valueOf(u10);
                    }
                }));
            }
        }
        return Tasks.whenAll(arrayList);
    }

    public void l(@NonNull String str, @NonNull List<l0> list, f0.a aVar) {
        z7.g.f().b("SessionReportingCoordinator#finalizeSessionWithNativeEvent");
        ArrayList arrayList = new ArrayList();
        for (l0 l0Var : list) {
            f0.d.b b10 = l0Var.b();
            if (b10 != null) {
                arrayList.add(b10);
            }
        }
        this.f20805b.l(str, f0.d.a().b(Collections.unmodifiableList(arrayList)).a(), aVar);
    }

    public void m(long j10, @Nullable String str) {
        this.f20805b.k(str, j10);
    }

    public boolean p() {
        return this.f20805b.r();
    }

    public SortedSet<String> s() {
        return this.f20805b.p();
    }

    public void t(@NonNull String str, long j10) {
        this.f20805b.z(this.f20804a.e(str, j10));
    }

    public void w(@NonNull Throwable th2, @NonNull Thread thread, @NonNull String str, long j10) {
        z7.g f10 = z7.g.f();
        f10.i("Persisting fatal event for session " + str);
        v(th2, thread, "crash", new d8.c(str, j10), true);
    }

    public void x(@NonNull Throwable th2, @NonNull Thread thread, @NonNull d8.c cVar) {
        z7.g f10 = z7.g.f();
        f10.i("Persisting non-fatal event for session " + cVar.b());
        v(th2, thread, "error", cVar, false);
    }

    @RequiresApi(api = 30)
    public void y(String str, List<ApplicationExitInfo> list, d8.f fVar, d8.p pVar) {
        ApplicationExitInfo n10 = n(str, list);
        if (n10 == null) {
            z7.g f10 = z7.g.f();
            f10.i("No relevant ApplicationExitInfo occurred during session: " + str);
            return;
        }
        f0.e.d c10 = this.f20804a.c(h(n10));
        z7.g f11 = z7.g.f();
        f11.b("Persisting anr for session " + str);
        this.f20805b.y(g(d(c10, fVar, pVar), pVar), str, true);
    }

    public void z() {
        this.f20805b.i();
    }
}
