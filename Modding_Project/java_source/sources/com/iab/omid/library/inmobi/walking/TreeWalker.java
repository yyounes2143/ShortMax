package com.iab.omid.library.inmobi.walking;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import androidx.annotation.VisibleForTesting;
import com.iab.omid.library.inmobi.internal.j;
import com.iab.omid.library.inmobi.processor.a;
import com.iab.omid.library.inmobi.utils.f;
import com.iab.omid.library.inmobi.utils.h;
import com.iab.omid.library.inmobi.walking.a;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class TreeWalker implements a.InterfaceC0332a {

    /* renamed from: i  reason: collision with root package name */
    private static TreeWalker f22931i = new TreeWalker();

    /* renamed from: j  reason: collision with root package name */
    private static Handler f22932j = new Handler(Looper.getMainLooper());

    /* renamed from: k  reason: collision with root package name */
    private static Handler f22933k = null;

    /* renamed from: l  reason: collision with root package name */
    private static final Runnable f22934l = new b();

    /* renamed from: m  reason: collision with root package name */
    private static final Runnable f22935m = new c();

    /* renamed from: b  reason: collision with root package name */
    private int f22937b;

    /* renamed from: h  reason: collision with root package name */
    private long f22943h;

    /* renamed from: a  reason: collision with root package name */
    private List<TreeWalkerTimeLogger> f22936a = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private boolean f22938c = false;

    /* renamed from: d  reason: collision with root package name */
    private final List<com.iab.omid.library.inmobi.weakreference.a> f22939d = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    private com.iab.omid.library.inmobi.walking.a f22941f = new com.iab.omid.library.inmobi.walking.a();

    /* renamed from: e  reason: collision with root package name */
    private com.iab.omid.library.inmobi.processor.b f22940e = new com.iab.omid.library.inmobi.processor.b();

    /* renamed from: g  reason: collision with root package name */
    private com.iab.omid.library.inmobi.walking.b f22942g = new com.iab.omid.library.inmobi.walking.b(new com.iab.omid.library.inmobi.walking.async.c());

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
            TreeWalker.this.f22942g.b();
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
            if (TreeWalker.f22933k != null) {
                TreeWalker.f22933k.post(TreeWalker.f22934l);
                TreeWalker.f22933k.postDelayed(TreeWalker.f22935m, 200L);
            }
        }
    }

    TreeWalker() {
    }

    private void d() {
        a(f.b() - this.f22943h);
    }

    private void e() {
        this.f22937b = 0;
        this.f22939d.clear();
        this.f22938c = false;
        Iterator<com.iab.omid.library.inmobi.adsession.a> it = com.iab.omid.library.inmobi.internal.c.c().a().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            } else if (it.next().g()) {
                this.f22938c = true;
                break;
            }
        }
        this.f22943h = f.b();
    }

    public static TreeWalker getInstance() {
        return f22931i;
    }

    private void i() {
        if (f22933k == null) {
            Handler handler = new Handler(Looper.getMainLooper());
            f22933k = handler;
            handler.post(f22934l);
            f22933k.postDelayed(f22935m, 200L);
        }
    }

    private void k() {
        Handler handler = f22933k;
        if (handler != null) {
            handler.removeCallbacks(f22935m);
            f22933k = null;
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
        if (!this.f22936a.contains(treeWalkerTimeLogger)) {
            this.f22936a.add(treeWalkerTimeLogger);
        }
    }

    @VisibleForTesting
    void f() {
        this.f22941f.e();
        long b10 = f.b();
        com.iab.omid.library.inmobi.processor.a a10 = this.f22940e.a();
        if (this.f22941f.b().size() > 0) {
            Iterator<String> it = this.f22941f.b().iterator();
            while (it.hasNext()) {
                String next = it.next();
                JSONObject a11 = a10.a(null);
                a(next, this.f22941f.a(next), a11);
                com.iab.omid.library.inmobi.utils.c.b(a11);
                HashSet<String> hashSet = new HashSet<>();
                hashSet.add(next);
                this.f22942g.a(a11, hashSet, b10);
            }
        }
        if (this.f22941f.c().size() > 0) {
            JSONObject a12 = a10.a(null);
            a(null, a10, a12, com.iab.omid.library.inmobi.walking.c.PARENT_VIEW, false);
            com.iab.omid.library.inmobi.utils.c.b(a12);
            this.f22942g.b(a12, this.f22941f.c(), b10);
            if (this.f22938c) {
                for (com.iab.omid.library.inmobi.adsession.a aVar : com.iab.omid.library.inmobi.internal.c.c().a()) {
                    aVar.a(this.f22939d);
                }
            }
        } else {
            this.f22942g.b();
        }
        this.f22941f.a();
    }

    public void g() {
        k();
    }

    public void h() {
        i();
    }

    public void j() {
        g();
        this.f22936a.clear();
        f22932j.post(new a());
    }

    public void removeTimeLogger(TreeWalkerTimeLogger treeWalkerTimeLogger) {
        if (this.f22936a.contains(treeWalkerTimeLogger)) {
            this.f22936a.remove(treeWalkerTimeLogger);
        }
    }

    private void a(long j10) {
        if (this.f22936a.size() > 0) {
            for (TreeWalkerTimeLogger treeWalkerTimeLogger : this.f22936a) {
                treeWalkerTimeLogger.onTreeProcessed(this.f22937b, TimeUnit.NANOSECONDS.toMillis(j10));
                if (treeWalkerTimeLogger instanceof TreeWalkerNanoTimeLogger) {
                    ((TreeWalkerNanoTimeLogger) treeWalkerTimeLogger).onTreeProcessedNano(this.f22937b, j10);
                }
            }
        }
    }

    private boolean b(View view, JSONObject jSONObject) {
        String c10 = this.f22941f.c(view);
        if (c10 != null) {
            com.iab.omid.library.inmobi.utils.c.a(jSONObject, c10);
            com.iab.omid.library.inmobi.utils.c.a(jSONObject, Boolean.valueOf(this.f22941f.e(view)));
            com.iab.omid.library.inmobi.utils.c.b(jSONObject, Boolean.valueOf(this.f22941f.c(c10)));
            this.f22941f.d();
            return true;
        }
        return false;
    }

    private void a(View view, com.iab.omid.library.inmobi.processor.a aVar, JSONObject jSONObject, com.iab.omid.library.inmobi.walking.c cVar, boolean z10) {
        aVar.a(view, jSONObject, this, cVar == com.iab.omid.library.inmobi.walking.c.PARENT_VIEW, z10);
    }

    @Override // com.iab.omid.library.inmobi.processor.a.InterfaceC0332a
    public void a(View view, com.iab.omid.library.inmobi.processor.a aVar, JSONObject jSONObject, boolean z10) {
        com.iab.omid.library.inmobi.walking.c d10;
        if (h.f(view) && (d10 = this.f22941f.d(view)) != com.iab.omid.library.inmobi.walking.c.UNDERLYING_VIEW) {
            JSONObject a10 = aVar.a(view);
            com.iab.omid.library.inmobi.utils.c.a(jSONObject, a10);
            if (!b(view, a10)) {
                boolean z11 = z10 || a(view, a10);
                if (this.f22938c && d10 == com.iab.omid.library.inmobi.walking.c.OBSTRUCTION_VIEW && !z11) {
                    this.f22939d.add(new com.iab.omid.library.inmobi.weakreference.a(view));
                }
                a(view, aVar, a10, d10, z11);
            }
            this.f22937b++;
        }
    }

    private void a(String str, View view, JSONObject jSONObject) {
        com.iab.omid.library.inmobi.processor.a b10 = this.f22940e.b();
        String b11 = this.f22941f.b(str);
        if (b11 != null) {
            JSONObject a10 = b10.a(view);
            com.iab.omid.library.inmobi.utils.c.a(a10, str);
            com.iab.omid.library.inmobi.utils.c.b(a10, b11);
            com.iab.omid.library.inmobi.utils.c.a(jSONObject, a10);
        }
    }

    private boolean a(View view, JSONObject jSONObject) {
        a.C0334a b10 = this.f22941f.b(view);
        if (b10 != null) {
            com.iab.omid.library.inmobi.utils.c.a(jSONObject, b10);
            return true;
        }
        return false;
    }
}
