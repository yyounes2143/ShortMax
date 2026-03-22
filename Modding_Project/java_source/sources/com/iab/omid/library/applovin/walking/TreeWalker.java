package com.iab.omid.library.applovin.walking;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import androidx.annotation.VisibleForTesting;
import com.iab.omid.library.applovin.internal.j;
import com.iab.omid.library.applovin.processor.a;
import com.iab.omid.library.applovin.utils.f;
import com.iab.omid.library.applovin.utils.h;
import com.iab.omid.library.applovin.walking.a;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class TreeWalker implements a.InterfaceC0320a {

    /* renamed from: i  reason: collision with root package name */
    private static TreeWalker f22530i = new TreeWalker();

    /* renamed from: j  reason: collision with root package name */
    private static Handler f22531j = new Handler(Looper.getMainLooper());

    /* renamed from: k  reason: collision with root package name */
    private static Handler f22532k = null;

    /* renamed from: l  reason: collision with root package name */
    private static final Runnable f22533l = new b();

    /* renamed from: m  reason: collision with root package name */
    private static final Runnable f22534m = new c();

    /* renamed from: b  reason: collision with root package name */
    private int f22536b;

    /* renamed from: h  reason: collision with root package name */
    private long f22542h;

    /* renamed from: a  reason: collision with root package name */
    private List<TreeWalkerTimeLogger> f22535a = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private boolean f22537c = false;

    /* renamed from: d  reason: collision with root package name */
    private final List<com.iab.omid.library.applovin.weakreference.a> f22538d = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    private com.iab.omid.library.applovin.walking.a f22540f = new com.iab.omid.library.applovin.walking.a();

    /* renamed from: e  reason: collision with root package name */
    private com.iab.omid.library.applovin.processor.b f22539e = new com.iab.omid.library.applovin.processor.b();

    /* renamed from: g  reason: collision with root package name */
    private com.iab.omid.library.applovin.walking.b f22541g = new com.iab.omid.library.applovin.walking.b(new com.iab.omid.library.applovin.walking.async.c());

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
            TreeWalker.this.f22541g.b();
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
            if (TreeWalker.f22532k != null) {
                TreeWalker.f22532k.post(TreeWalker.f22533l);
                TreeWalker.f22532k.postDelayed(TreeWalker.f22534m, 200L);
            }
        }
    }

    TreeWalker() {
    }

    private void d() {
        a(f.b() - this.f22542h);
    }

    private void e() {
        this.f22536b = 0;
        this.f22538d.clear();
        this.f22537c = false;
        Iterator<com.iab.omid.library.applovin.adsession.a> it = com.iab.omid.library.applovin.internal.c.c().a().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            } else if (it.next().g()) {
                this.f22537c = true;
                break;
            }
        }
        this.f22542h = f.b();
    }

    public static TreeWalker getInstance() {
        return f22530i;
    }

    private void i() {
        if (f22532k == null) {
            Handler handler = new Handler(Looper.getMainLooper());
            f22532k = handler;
            handler.post(f22533l);
            f22532k.postDelayed(f22534m, 200L);
        }
    }

    private void k() {
        Handler handler = f22532k;
        if (handler != null) {
            handler.removeCallbacks(f22534m);
            f22532k = null;
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
        if (!this.f22535a.contains(treeWalkerTimeLogger)) {
            this.f22535a.add(treeWalkerTimeLogger);
        }
    }

    @VisibleForTesting
    void f() {
        this.f22540f.e();
        long b10 = f.b();
        com.iab.omid.library.applovin.processor.a a10 = this.f22539e.a();
        if (this.f22540f.b().size() > 0) {
            Iterator<String> it = this.f22540f.b().iterator();
            while (it.hasNext()) {
                String next = it.next();
                JSONObject a11 = a10.a(null);
                a(next, this.f22540f.a(next), a11);
                com.iab.omid.library.applovin.utils.c.b(a11);
                HashSet<String> hashSet = new HashSet<>();
                hashSet.add(next);
                this.f22541g.a(a11, hashSet, b10);
            }
        }
        if (this.f22540f.c().size() > 0) {
            JSONObject a12 = a10.a(null);
            a(null, a10, a12, com.iab.omid.library.applovin.walking.c.PARENT_VIEW, false);
            com.iab.omid.library.applovin.utils.c.b(a12);
            this.f22541g.b(a12, this.f22540f.c(), b10);
            if (this.f22537c) {
                for (com.iab.omid.library.applovin.adsession.a aVar : com.iab.omid.library.applovin.internal.c.c().a()) {
                    aVar.a(this.f22538d);
                }
            }
        } else {
            this.f22541g.b();
        }
        this.f22540f.a();
    }

    public void g() {
        k();
    }

    public void h() {
        i();
    }

    public void j() {
        g();
        this.f22535a.clear();
        f22531j.post(new a());
    }

    public void removeTimeLogger(TreeWalkerTimeLogger treeWalkerTimeLogger) {
        if (this.f22535a.contains(treeWalkerTimeLogger)) {
            this.f22535a.remove(treeWalkerTimeLogger);
        }
    }

    private void a(long j10) {
        if (this.f22535a.size() > 0) {
            for (TreeWalkerTimeLogger treeWalkerTimeLogger : this.f22535a) {
                treeWalkerTimeLogger.onTreeProcessed(this.f22536b, TimeUnit.NANOSECONDS.toMillis(j10));
                if (treeWalkerTimeLogger instanceof TreeWalkerNanoTimeLogger) {
                    ((TreeWalkerNanoTimeLogger) treeWalkerTimeLogger).onTreeProcessedNano(this.f22536b, j10);
                }
            }
        }
    }

    private boolean b(View view, JSONObject jSONObject) {
        String c10 = this.f22540f.c(view);
        if (c10 != null) {
            com.iab.omid.library.applovin.utils.c.a(jSONObject, c10);
            com.iab.omid.library.applovin.utils.c.a(jSONObject, Boolean.valueOf(this.f22540f.e(view)));
            com.iab.omid.library.applovin.utils.c.b(jSONObject, Boolean.valueOf(this.f22540f.c(c10)));
            this.f22540f.d();
            return true;
        }
        return false;
    }

    private void a(View view, com.iab.omid.library.applovin.processor.a aVar, JSONObject jSONObject, com.iab.omid.library.applovin.walking.c cVar, boolean z10) {
        aVar.a(view, jSONObject, this, cVar == com.iab.omid.library.applovin.walking.c.PARENT_VIEW, z10);
    }

    @Override // com.iab.omid.library.applovin.processor.a.InterfaceC0320a
    public void a(View view, com.iab.omid.library.applovin.processor.a aVar, JSONObject jSONObject, boolean z10) {
        com.iab.omid.library.applovin.walking.c d10;
        if (h.f(view) && (d10 = this.f22540f.d(view)) != com.iab.omid.library.applovin.walking.c.UNDERLYING_VIEW) {
            JSONObject a10 = aVar.a(view);
            com.iab.omid.library.applovin.utils.c.a(jSONObject, a10);
            if (!b(view, a10)) {
                boolean z11 = z10 || a(view, a10);
                if (this.f22537c && d10 == com.iab.omid.library.applovin.walking.c.OBSTRUCTION_VIEW && !z11) {
                    this.f22538d.add(new com.iab.omid.library.applovin.weakreference.a(view));
                }
                a(view, aVar, a10, d10, z11);
            }
            this.f22536b++;
        }
    }

    private void a(String str, View view, JSONObject jSONObject) {
        com.iab.omid.library.applovin.processor.a b10 = this.f22539e.b();
        String b11 = this.f22540f.b(str);
        if (b11 != null) {
            JSONObject a10 = b10.a(view);
            com.iab.omid.library.applovin.utils.c.a(a10, str);
            com.iab.omid.library.applovin.utils.c.b(a10, b11);
            com.iab.omid.library.applovin.utils.c.a(jSONObject, a10);
        }
    }

    private boolean a(View view, JSONObject jSONObject) {
        a.C0322a b10 = this.f22540f.b(view);
        if (b10 != null) {
            com.iab.omid.library.applovin.utils.c.a(jSONObject, b10);
            return true;
        }
        return false;
    }
}
