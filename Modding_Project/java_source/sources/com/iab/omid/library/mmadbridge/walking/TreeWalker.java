package com.iab.omid.library.mmadbridge.walking;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import androidx.annotation.VisibleForTesting;
import com.iab.omid.library.mmadbridge.internal.j;
import com.iab.omid.library.mmadbridge.processor.a;
import com.iab.omid.library.mmadbridge.utils.f;
import com.iab.omid.library.mmadbridge.utils.h;
import com.iab.omid.library.mmadbridge.walking.a;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class TreeWalker implements a.InterfaceC0336a {

    /* renamed from: i  reason: collision with root package name */
    private static TreeWalker f23066i = new TreeWalker();

    /* renamed from: j  reason: collision with root package name */
    private static Handler f23067j = new Handler(Looper.getMainLooper());

    /* renamed from: k  reason: collision with root package name */
    private static Handler f23068k = null;

    /* renamed from: l  reason: collision with root package name */
    private static final Runnable f23069l = new b();

    /* renamed from: m  reason: collision with root package name */
    private static final Runnable f23070m = new c();

    /* renamed from: b  reason: collision with root package name */
    private int f23072b;

    /* renamed from: h  reason: collision with root package name */
    private long f23078h;

    /* renamed from: a  reason: collision with root package name */
    private List<TreeWalkerTimeLogger> f23071a = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private boolean f23073c = false;

    /* renamed from: d  reason: collision with root package name */
    private final List<com.iab.omid.library.mmadbridge.weakreference.a> f23074d = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    private com.iab.omid.library.mmadbridge.walking.a f23076f = new com.iab.omid.library.mmadbridge.walking.a();

    /* renamed from: e  reason: collision with root package name */
    private com.iab.omid.library.mmadbridge.processor.b f23075e = new com.iab.omid.library.mmadbridge.processor.b();

    /* renamed from: g  reason: collision with root package name */
    private com.iab.omid.library.mmadbridge.walking.b f23077g = new com.iab.omid.library.mmadbridge.walking.b(new com.iab.omid.library.mmadbridge.walking.async.c());

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
            TreeWalker.this.f23077g.b();
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
            if (TreeWalker.f23068k != null) {
                TreeWalker.f23068k.post(TreeWalker.f23069l);
                TreeWalker.f23068k.postDelayed(TreeWalker.f23070m, 200L);
            }
        }
    }

    TreeWalker() {
    }

    private void d() {
        a(f.b() - this.f23078h);
    }

    private void e() {
        this.f23072b = 0;
        this.f23074d.clear();
        this.f23073c = false;
        Iterator<com.iab.omid.library.mmadbridge.adsession.a> it = com.iab.omid.library.mmadbridge.internal.c.c().a().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            } else if (it.next().e()) {
                this.f23073c = true;
                break;
            }
        }
        this.f23078h = f.b();
    }

    public static TreeWalker getInstance() {
        return f23066i;
    }

    private void i() {
        if (f23068k == null) {
            Handler handler = new Handler(Looper.getMainLooper());
            f23068k = handler;
            handler.post(f23069l);
            f23068k.postDelayed(f23070m, 200L);
        }
    }

    private void k() {
        Handler handler = f23068k;
        if (handler != null) {
            handler.removeCallbacks(f23070m);
            f23068k = null;
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
        if (!this.f23071a.contains(treeWalkerTimeLogger)) {
            this.f23071a.add(treeWalkerTimeLogger);
        }
    }

    @VisibleForTesting
    void f() {
        this.f23076f.e();
        long b10 = f.b();
        com.iab.omid.library.mmadbridge.processor.a a10 = this.f23075e.a();
        if (this.f23076f.b().size() > 0) {
            Iterator<String> it = this.f23076f.b().iterator();
            while (it.hasNext()) {
                String next = it.next();
                JSONObject a11 = a10.a(null);
                a(next, this.f23076f.a(next), a11);
                com.iab.omid.library.mmadbridge.utils.c.b(a11);
                HashSet<String> hashSet = new HashSet<>();
                hashSet.add(next);
                this.f23077g.a(a11, hashSet, b10);
            }
        }
        if (this.f23076f.c().size() > 0) {
            JSONObject a12 = a10.a(null);
            a(null, a10, a12, com.iab.omid.library.mmadbridge.walking.c.PARENT_VIEW, false);
            com.iab.omid.library.mmadbridge.utils.c.b(a12);
            this.f23077g.b(a12, this.f23076f.c(), b10);
            if (this.f23073c) {
                for (com.iab.omid.library.mmadbridge.adsession.a aVar : com.iab.omid.library.mmadbridge.internal.c.c().a()) {
                    aVar.a(this.f23074d);
                }
            }
        } else {
            this.f23077g.b();
        }
        this.f23076f.a();
    }

    public void g() {
        k();
    }

    public void h() {
        i();
    }

    public void j() {
        g();
        this.f23071a.clear();
        f23067j.post(new a());
    }

    public void removeTimeLogger(TreeWalkerTimeLogger treeWalkerTimeLogger) {
        if (this.f23071a.contains(treeWalkerTimeLogger)) {
            this.f23071a.remove(treeWalkerTimeLogger);
        }
    }

    private void a(long j10) {
        if (this.f23071a.size() > 0) {
            for (TreeWalkerTimeLogger treeWalkerTimeLogger : this.f23071a) {
                treeWalkerTimeLogger.onTreeProcessed(this.f23072b, TimeUnit.NANOSECONDS.toMillis(j10));
                if (treeWalkerTimeLogger instanceof TreeWalkerNanoTimeLogger) {
                    ((TreeWalkerNanoTimeLogger) treeWalkerTimeLogger).onTreeProcessedNano(this.f23072b, j10);
                }
            }
        }
    }

    private boolean b(View view, JSONObject jSONObject) {
        String c10 = this.f23076f.c(view);
        if (c10 != null) {
            com.iab.omid.library.mmadbridge.utils.c.a(jSONObject, c10);
            com.iab.omid.library.mmadbridge.utils.c.a(jSONObject, Boolean.valueOf(this.f23076f.e(view)));
            com.iab.omid.library.mmadbridge.utils.c.b(jSONObject, Boolean.valueOf(this.f23076f.c(c10)));
            this.f23076f.d();
            return true;
        }
        return false;
    }

    private void a(View view, com.iab.omid.library.mmadbridge.processor.a aVar, JSONObject jSONObject, com.iab.omid.library.mmadbridge.walking.c cVar, boolean z10) {
        aVar.a(view, jSONObject, this, cVar == com.iab.omid.library.mmadbridge.walking.c.PARENT_VIEW, z10);
    }

    @Override // com.iab.omid.library.mmadbridge.processor.a.InterfaceC0336a
    public void a(View view, com.iab.omid.library.mmadbridge.processor.a aVar, JSONObject jSONObject, boolean z10) {
        com.iab.omid.library.mmadbridge.walking.c d10;
        if (h.f(view) && (d10 = this.f23076f.d(view)) != com.iab.omid.library.mmadbridge.walking.c.UNDERLYING_VIEW) {
            JSONObject a10 = aVar.a(view);
            com.iab.omid.library.mmadbridge.utils.c.a(jSONObject, a10);
            if (!b(view, a10)) {
                boolean z11 = z10 || a(view, a10);
                if (this.f23073c && d10 == com.iab.omid.library.mmadbridge.walking.c.OBSTRUCTION_VIEW && !z11) {
                    this.f23074d.add(new com.iab.omid.library.mmadbridge.weakreference.a(view));
                }
                a(view, aVar, a10, d10, z11);
            }
            this.f23072b++;
        }
    }

    private void a(String str, View view, JSONObject jSONObject) {
        com.iab.omid.library.mmadbridge.processor.a b10 = this.f23075e.b();
        String b11 = this.f23076f.b(str);
        if (b11 != null) {
            JSONObject a10 = b10.a(view);
            com.iab.omid.library.mmadbridge.utils.c.a(a10, str);
            com.iab.omid.library.mmadbridge.utils.c.b(a10, b11);
            com.iab.omid.library.mmadbridge.utils.c.a(jSONObject, a10);
        }
    }

    private boolean a(View view, JSONObject jSONObject) {
        a.C0338a b10 = this.f23076f.b(view);
        if (b10 != null) {
            com.iab.omid.library.mmadbridge.utils.c.a(jSONObject, b10);
            return true;
        }
        return false;
    }
}
