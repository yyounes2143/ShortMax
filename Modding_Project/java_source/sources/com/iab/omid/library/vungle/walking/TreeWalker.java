package com.iab.omid.library.vungle.walking;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import androidx.annotation.VisibleForTesting;
import com.iab.omid.library.vungle.internal.j;
import com.iab.omid.library.vungle.processor.a;
import com.iab.omid.library.vungle.utils.f;
import com.iab.omid.library.vungle.utils.h;
import com.iab.omid.library.vungle.walking.a;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class TreeWalker implements a.InterfaceC0344a {

    /* renamed from: i  reason: collision with root package name */
    private static TreeWalker f23329i = new TreeWalker();

    /* renamed from: j  reason: collision with root package name */
    private static Handler f23330j = new Handler(Looper.getMainLooper());

    /* renamed from: k  reason: collision with root package name */
    private static Handler f23331k = null;

    /* renamed from: l  reason: collision with root package name */
    private static final Runnable f23332l = new b();

    /* renamed from: m  reason: collision with root package name */
    private static final Runnable f23333m = new c();

    /* renamed from: b  reason: collision with root package name */
    private int f23335b;

    /* renamed from: h  reason: collision with root package name */
    private long f23341h;

    /* renamed from: a  reason: collision with root package name */
    private List<TreeWalkerTimeLogger> f23334a = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private boolean f23336c = false;

    /* renamed from: d  reason: collision with root package name */
    private final List<com.iab.omid.library.vungle.weakreference.a> f23337d = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    private com.iab.omid.library.vungle.walking.a f23339f = new com.iab.omid.library.vungle.walking.a();

    /* renamed from: e  reason: collision with root package name */
    private com.iab.omid.library.vungle.processor.b f23338e = new com.iab.omid.library.vungle.processor.b();

    /* renamed from: g  reason: collision with root package name */
    private com.iab.omid.library.vungle.walking.b f23340g = new com.iab.omid.library.vungle.walking.b(new com.iab.omid.library.vungle.walking.async.c());

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
            TreeWalker.this.f23340g.b();
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
            if (TreeWalker.f23331k != null) {
                TreeWalker.f23331k.post(TreeWalker.f23332l);
                TreeWalker.f23331k.postDelayed(TreeWalker.f23333m, 200L);
            }
        }
    }

    TreeWalker() {
    }

    private void d() {
        a(f.b() - this.f23341h);
    }

    private void e() {
        this.f23335b = 0;
        this.f23337d.clear();
        this.f23336c = false;
        Iterator<com.iab.omid.library.vungle.adsession.a> it = com.iab.omid.library.vungle.internal.c.c().a().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            } else if (it.next().g()) {
                this.f23336c = true;
                break;
            }
        }
        this.f23341h = f.b();
    }

    public static TreeWalker getInstance() {
        return f23329i;
    }

    private void i() {
        if (f23331k == null) {
            Handler handler = new Handler(Looper.getMainLooper());
            f23331k = handler;
            handler.post(f23332l);
            f23331k.postDelayed(f23333m, 200L);
        }
    }

    private void k() {
        Handler handler = f23331k;
        if (handler != null) {
            handler.removeCallbacks(f23333m);
            f23331k = null;
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
        if (!this.f23334a.contains(treeWalkerTimeLogger)) {
            this.f23334a.add(treeWalkerTimeLogger);
        }
    }

    @VisibleForTesting
    void f() {
        this.f23339f.e();
        long b10 = f.b();
        com.iab.omid.library.vungle.processor.a a10 = this.f23338e.a();
        if (this.f23339f.b().size() > 0) {
            Iterator<String> it = this.f23339f.b().iterator();
            while (it.hasNext()) {
                String next = it.next();
                JSONObject a11 = a10.a(null);
                a(next, this.f23339f.a(next), a11);
                com.iab.omid.library.vungle.utils.c.b(a11);
                HashSet<String> hashSet = new HashSet<>();
                hashSet.add(next);
                this.f23340g.a(a11, hashSet, b10);
            }
        }
        if (this.f23339f.c().size() > 0) {
            JSONObject a12 = a10.a(null);
            a(null, a10, a12, com.iab.omid.library.vungle.walking.c.PARENT_VIEW, false);
            com.iab.omid.library.vungle.utils.c.b(a12);
            this.f23340g.b(a12, this.f23339f.c(), b10);
            if (this.f23336c) {
                for (com.iab.omid.library.vungle.adsession.a aVar : com.iab.omid.library.vungle.internal.c.c().a()) {
                    aVar.a(this.f23337d);
                }
            }
        } else {
            this.f23340g.b();
        }
        this.f23339f.a();
    }

    public void g() {
        k();
    }

    public void h() {
        i();
    }

    public void j() {
        g();
        this.f23334a.clear();
        f23330j.post(new a());
    }

    public void removeTimeLogger(TreeWalkerTimeLogger treeWalkerTimeLogger) {
        if (this.f23334a.contains(treeWalkerTimeLogger)) {
            this.f23334a.remove(treeWalkerTimeLogger);
        }
    }

    private void a(long j10) {
        if (this.f23334a.size() > 0) {
            for (TreeWalkerTimeLogger treeWalkerTimeLogger : this.f23334a) {
                treeWalkerTimeLogger.onTreeProcessed(this.f23335b, TimeUnit.NANOSECONDS.toMillis(j10));
                if (treeWalkerTimeLogger instanceof TreeWalkerNanoTimeLogger) {
                    ((TreeWalkerNanoTimeLogger) treeWalkerTimeLogger).onTreeProcessedNano(this.f23335b, j10);
                }
            }
        }
    }

    private boolean b(View view, JSONObject jSONObject) {
        String c10 = this.f23339f.c(view);
        if (c10 != null) {
            com.iab.omid.library.vungle.utils.c.a(jSONObject, c10);
            com.iab.omid.library.vungle.utils.c.a(jSONObject, Boolean.valueOf(this.f23339f.e(view)));
            com.iab.omid.library.vungle.utils.c.b(jSONObject, Boolean.valueOf(this.f23339f.c(c10)));
            this.f23339f.d();
            return true;
        }
        return false;
    }

    private void a(View view, com.iab.omid.library.vungle.processor.a aVar, JSONObject jSONObject, com.iab.omid.library.vungle.walking.c cVar, boolean z10) {
        aVar.a(view, jSONObject, this, cVar == com.iab.omid.library.vungle.walking.c.PARENT_VIEW, z10);
    }

    @Override // com.iab.omid.library.vungle.processor.a.InterfaceC0344a
    public void a(View view, com.iab.omid.library.vungle.processor.a aVar, JSONObject jSONObject, boolean z10) {
        com.iab.omid.library.vungle.walking.c d10;
        if (h.f(view) && (d10 = this.f23339f.d(view)) != com.iab.omid.library.vungle.walking.c.UNDERLYING_VIEW) {
            JSONObject a10 = aVar.a(view);
            com.iab.omid.library.vungle.utils.c.a(jSONObject, a10);
            if (!b(view, a10)) {
                boolean z11 = z10 || a(view, a10);
                if (this.f23336c && d10 == com.iab.omid.library.vungle.walking.c.OBSTRUCTION_VIEW && !z11) {
                    this.f23337d.add(new com.iab.omid.library.vungle.weakreference.a(view));
                }
                a(view, aVar, a10, d10, z11);
            }
            this.f23335b++;
        }
    }

    private void a(String str, View view, JSONObject jSONObject) {
        com.iab.omid.library.vungle.processor.a b10 = this.f23338e.b();
        String b11 = this.f23339f.b(str);
        if (b11 != null) {
            JSONObject a10 = b10.a(view);
            com.iab.omid.library.vungle.utils.c.a(a10, str);
            com.iab.omid.library.vungle.utils.c.b(a10, b11);
            com.iab.omid.library.vungle.utils.c.a(jSONObject, a10);
        }
    }

    private boolean a(View view, JSONObject jSONObject) {
        a.C0346a b10 = this.f23339f.b(view);
        if (b10 != null) {
            com.iab.omid.library.vungle.utils.c.a(jSONObject, b10);
            return true;
        }
        return false;
    }
}
