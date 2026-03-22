package com.iab.omid.library.appodeal.walking;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import androidx.annotation.VisibleForTesting;
import com.iab.omid.library.appodeal.internal.j;
import com.iab.omid.library.appodeal.processor.a;
import com.iab.omid.library.appodeal.utils.f;
import com.iab.omid.library.appodeal.utils.h;
import com.iab.omid.library.appodeal.walking.a;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class TreeWalker implements a.InterfaceC0324a {

    /* renamed from: i  reason: collision with root package name */
    private static TreeWalker f22666i = new TreeWalker();

    /* renamed from: j  reason: collision with root package name */
    private static Handler f22667j = new Handler(Looper.getMainLooper());

    /* renamed from: k  reason: collision with root package name */
    private static Handler f22668k = null;

    /* renamed from: l  reason: collision with root package name */
    private static final Runnable f22669l = new b();

    /* renamed from: m  reason: collision with root package name */
    private static final Runnable f22670m = new c();

    /* renamed from: b  reason: collision with root package name */
    private int f22672b;

    /* renamed from: h  reason: collision with root package name */
    private long f22678h;

    /* renamed from: a  reason: collision with root package name */
    private List<TreeWalkerTimeLogger> f22671a = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private boolean f22673c = false;

    /* renamed from: d  reason: collision with root package name */
    private final List<com.iab.omid.library.appodeal.weakreference.a> f22674d = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    private com.iab.omid.library.appodeal.walking.a f22676f = new com.iab.omid.library.appodeal.walking.a();

    /* renamed from: e  reason: collision with root package name */
    private com.iab.omid.library.appodeal.processor.b f22675e = new com.iab.omid.library.appodeal.processor.b();

    /* renamed from: g  reason: collision with root package name */
    private com.iab.omid.library.appodeal.walking.b f22677g = new com.iab.omid.library.appodeal.walking.b(new com.iab.omid.library.appodeal.walking.async.c());

    /* loaded from: classes5.dex */
    public interface TreeWalkerNanoTimeLogger extends TreeWalkerTimeLogger {
        void onTreeProcessedNano(int i10, long j10);
    }

    /* loaded from: classes5.dex */
    public interface TreeWalkerTimeLogger {
        void onTreeProcessed(int i10, long j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TreeWalker.this.f22677g.b();
        }
    }

    /* loaded from: classes5.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TreeWalker.getInstance().l();
        }
    }

    /* loaded from: classes5.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (TreeWalker.f22668k != null) {
                TreeWalker.f22668k.post(TreeWalker.f22669l);
                TreeWalker.f22668k.postDelayed(TreeWalker.f22670m, 200L);
            }
        }
    }

    TreeWalker() {
    }

    private void d() {
        a(f.b() - this.f22678h);
    }

    private void e() {
        this.f22672b = 0;
        this.f22674d.clear();
        this.f22673c = false;
        Iterator<com.iab.omid.library.appodeal.adsession.a> it = com.iab.omid.library.appodeal.internal.c.c().a().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            } else if (it.next().g()) {
                this.f22673c = true;
                break;
            }
        }
        this.f22678h = f.b();
    }

    public static TreeWalker getInstance() {
        return f22666i;
    }

    private void i() {
        if (f22668k == null) {
            Handler handler = new Handler(Looper.getMainLooper());
            f22668k = handler;
            handler.post(f22669l);
            f22668k.postDelayed(f22670m, 200L);
        }
    }

    private void k() {
        Handler handler = f22668k;
        if (handler != null) {
            handler.removeCallbacks(f22670m);
            f22668k = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        e();
        f();
        d();
        j.b().a();
    }

    public void addTimeLogger(TreeWalkerTimeLogger treeWalkerTimeLogger) {
        if (!this.f22671a.contains(treeWalkerTimeLogger)) {
            this.f22671a.add(treeWalkerTimeLogger);
        }
    }

    @VisibleForTesting
    void f() {
        this.f22676f.e();
        long b10 = f.b();
        com.iab.omid.library.appodeal.processor.a a10 = this.f22675e.a();
        if (this.f22676f.b().size() > 0) {
            Iterator<String> it = this.f22676f.b().iterator();
            while (it.hasNext()) {
                String next = it.next();
                JSONObject a11 = a10.a(null);
                a(next, this.f22676f.a(next), a11);
                com.iab.omid.library.appodeal.utils.c.b(a11);
                HashSet<String> hashSet = new HashSet<>();
                hashSet.add(next);
                this.f22677g.a(a11, hashSet, b10);
            }
        }
        if (this.f22676f.c().size() > 0) {
            JSONObject a12 = a10.a(null);
            a(null, a10, a12, com.iab.omid.library.appodeal.walking.c.PARENT_VIEW, false);
            com.iab.omid.library.appodeal.utils.c.b(a12);
            this.f22677g.b(a12, this.f22676f.c(), b10);
            if (this.f22673c) {
                for (com.iab.omid.library.appodeal.adsession.a aVar : com.iab.omid.library.appodeal.internal.c.c().a()) {
                    aVar.a(this.f22674d);
                }
            }
        } else {
            this.f22677g.b();
        }
        this.f22676f.a();
    }

    public void g() {
        k();
    }

    public void h() {
        i();
    }

    public void j() {
        g();
        this.f22671a.clear();
        f22667j.post(new a());
    }

    public void removeTimeLogger(TreeWalkerTimeLogger treeWalkerTimeLogger) {
        if (this.f22671a.contains(treeWalkerTimeLogger)) {
            this.f22671a.remove(treeWalkerTimeLogger);
        }
    }

    private void a(long j10) {
        if (this.f22671a.size() > 0) {
            for (TreeWalkerTimeLogger treeWalkerTimeLogger : this.f22671a) {
                treeWalkerTimeLogger.onTreeProcessed(this.f22672b, TimeUnit.NANOSECONDS.toMillis(j10));
                if (treeWalkerTimeLogger instanceof TreeWalkerNanoTimeLogger) {
                    ((TreeWalkerNanoTimeLogger) treeWalkerTimeLogger).onTreeProcessedNano(this.f22672b, j10);
                }
            }
        }
    }

    private boolean b(View view, JSONObject jSONObject) {
        String c10 = this.f22676f.c(view);
        if (c10 != null) {
            com.iab.omid.library.appodeal.utils.c.a(jSONObject, c10);
            com.iab.omid.library.appodeal.utils.c.a(jSONObject, Boolean.valueOf(this.f22676f.e(view)));
            com.iab.omid.library.appodeal.utils.c.b(jSONObject, Boolean.valueOf(this.f22676f.c(c10)));
            this.f22676f.d();
            return true;
        }
        return false;
    }

    private void a(View view, com.iab.omid.library.appodeal.processor.a aVar, JSONObject jSONObject, com.iab.omid.library.appodeal.walking.c cVar, boolean z10) {
        aVar.a(view, jSONObject, this, cVar == com.iab.omid.library.appodeal.walking.c.PARENT_VIEW, z10);
    }

    @Override // com.iab.omid.library.appodeal.processor.a.InterfaceC0324a
    public void a(View view, com.iab.omid.library.appodeal.processor.a aVar, JSONObject jSONObject, boolean z10) {
        com.iab.omid.library.appodeal.walking.c d10;
        if (h.f(view) && (d10 = this.f22676f.d(view)) != com.iab.omid.library.appodeal.walking.c.UNDERLYING_VIEW) {
            JSONObject a10 = aVar.a(view);
            com.iab.omid.library.appodeal.utils.c.a(jSONObject, a10);
            if (!b(view, a10)) {
                boolean z11 = z10 || a(view, a10);
                if (this.f22673c && d10 == com.iab.omid.library.appodeal.walking.c.OBSTRUCTION_VIEW && !z11) {
                    this.f22674d.add(new com.iab.omid.library.appodeal.weakreference.a(view));
                }
                a(view, aVar, a10, d10, z11);
            }
            this.f22672b++;
        }
    }

    private void a(String str, View view, JSONObject jSONObject) {
        com.iab.omid.library.appodeal.processor.a b10 = this.f22675e.b();
        String b11 = this.f22676f.b(str);
        if (b11 != null) {
            JSONObject a10 = b10.a(view);
            com.iab.omid.library.appodeal.utils.c.a(a10, str);
            com.iab.omid.library.appodeal.utils.c.b(a10, b11);
            com.iab.omid.library.appodeal.utils.c.a(jSONObject, a10);
        }
    }

    private boolean a(View view, JSONObject jSONObject) {
        a.C0326a b10 = this.f22676f.b(view);
        if (b10 != null) {
            com.iab.omid.library.appodeal.utils.c.a(jSONObject, b10);
            return true;
        }
        return false;
    }
}
