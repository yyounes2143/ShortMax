package ab;

import com.huawei.hms.framework.common.ExecutorsUtils;
import com.huawei.hms.framework.common.Logger;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
/* loaded from: classes5.dex */
public class g {

    /* renamed from: b  reason: collision with root package name */
    private static final ExecutorService f366b = ExecutorsUtils.newCachedThreadPool("GRS_RequestController-Task");

    /* renamed from: c  reason: collision with root package name */
    private static final Map<String, cb.b> f367c = new ConcurrentHashMap(16);

    /* renamed from: d  reason: collision with root package name */
    private static final Object f368d = new Object();

    /* renamed from: a  reason: collision with root package name */
    private ya.a f369a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements Callable<d> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ cb.c f370a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f371b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ ya.c f372c;

        a(cb.c cVar, String str, ya.c cVar2) {
            this.f370a = cVar;
            this.f371b = str;
            this.f372c = cVar2;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public d call() {
            return new c(this.f370a, g.this.f369a).a(g.f366b, this.f371b, this.f372c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ cb.c f374a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f375b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ ya.c f376c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f377d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ xa.b f378e;

        b(cb.c cVar, String str, ya.c cVar2, int i10, xa.b bVar) {
            this.f374a = cVar;
            this.f375b = str;
            this.f376c = cVar2;
            this.f377d = i10;
            this.f378e = bVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            g gVar = g.this;
            gVar.d(gVar.a(this.f374a, this.f375b, this.f376c, this.f377d), this.f378e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(d dVar, xa.b bVar) {
        if (bVar != null) {
            if (dVar == null) {
                Logger.v("RequestController", "GrsResponse is null");
                bVar.a();
                return;
            }
            Logger.v("RequestController", "GrsResponse is not null");
            bVar.a(dVar);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x006c, code lost:
        if (r2.a() != false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0070, code lost:
        return null;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0090  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ab.d a(cb.c r8, java.lang.String r9, ya.c r10, int r11) {
        /*
            Method dump skipped, instructions count: 227
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: ab.g.a(cb.c, java.lang.String, ya.c, int):ab.d");
    }

    public void f(cb.c cVar, xa.b bVar, String str, ya.c cVar2, int i10) {
        f366b.execute(new b(cVar, str, cVar2, i10, bVar));
    }

    public void g(String str) {
        synchronized (f368d) {
            f367c.remove(str);
        }
    }

    public void h(ya.a aVar) {
        this.f369a = aVar;
    }
}
