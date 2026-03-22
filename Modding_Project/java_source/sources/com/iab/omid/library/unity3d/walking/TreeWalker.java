package com.iab.omid.library.unity3d.walking;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import androidx.annotation.VisibleForTesting;
import com.iab.omid.library.unity3d.processor.a;
import com.iab.omid.library.unity3d.utils.f;
import com.iab.omid.library.unity3d.utils.h;
import com.iab.omid.library.unity3d.walking.a;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class TreeWalker implements a.InterfaceC0340a {

    /* renamed from: i  reason: collision with root package name */
    private static TreeWalker f23195i = new TreeWalker();

    /* renamed from: j  reason: collision with root package name */
    private static Handler f23196j = new Handler(Looper.getMainLooper());

    /* renamed from: k  reason: collision with root package name */
    private static Handler f23197k = null;

    /* renamed from: l  reason: collision with root package name */
    private static final Runnable f23198l = new b();

    /* renamed from: m  reason: collision with root package name */
    private static final Runnable f23199m = new c();

    /* renamed from: b  reason: collision with root package name */
    private int f23201b;

    /* renamed from: h  reason: collision with root package name */
    private long f23207h;

    /* renamed from: a  reason: collision with root package name */
    private List<TreeWalkerTimeLogger> f23200a = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private boolean f23202c = false;

    /* renamed from: d  reason: collision with root package name */
    private final List<com.iab.omid.library.unity3d.weakreference.a> f23203d = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    private com.iab.omid.library.unity3d.walking.a f23205f = new com.iab.omid.library.unity3d.walking.a();

    /* renamed from: e  reason: collision with root package name */
    private com.iab.omid.library.unity3d.processor.b f23204e = new com.iab.omid.library.unity3d.processor.b();

    /* renamed from: g  reason: collision with root package name */
    private com.iab.omid.library.unity3d.walking.b f23206g = new com.iab.omid.library.unity3d.walking.b(new com.iab.omid.library.unity3d.walking.async.c());

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
            TreeWalker.this.f23206g.b();
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
            if (TreeWalker.f23197k != null) {
                TreeWalker.f23197k.post(TreeWalker.f23198l);
                TreeWalker.f23197k.postDelayed(TreeWalker.f23199m, 200L);
            }
        }
    }

    TreeWalker() {
    }

    private void d() {
        a(f.b() - this.f23207h);
    }

    private void e() {
        this.f23201b = 0;
        this.f23203d.clear();
        this.f23202c = false;
        Iterator<com.iab.omid.library.unity3d.adsession.a> it = com.iab.omid.library.unity3d.internal.c.c().a().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            } else if (it.next().e()) {
                this.f23202c = true;
                break;
            }
        }
        this.f23207h = f.b();
    }

    public static TreeWalker getInstance() {
        return f23195i;
    }

    private void i() {
        if (f23197k == null) {
            Handler handler = new Handler(Looper.getMainLooper());
            f23197k = handler;
            handler.post(f23198l);
            f23197k.postDelayed(f23199m, 200L);
        }
    }

    private void k() {
        Handler handler = f23197k;
        if (handler != null) {
            handler.removeCallbacks(f23199m);
            f23197k = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        e();
        f();
        d();
    }

    public void addTimeLogger(TreeWalkerTimeLogger treeWalkerTimeLogger) {
        if (!this.f23200a.contains(treeWalkerTimeLogger)) {
            this.f23200a.add(treeWalkerTimeLogger);
        }
    }

    @VisibleForTesting
    void f() {
        this.f23205f.e();
        long b10 = f.b();
        com.iab.omid.library.unity3d.processor.a a10 = this.f23204e.a();
        if (this.f23205f.b().size() > 0) {
            Iterator<String> it = this.f23205f.b().iterator();
            while (it.hasNext()) {
                String next = it.next();
                JSONObject a11 = a10.a(null);
                a(next, this.f23205f.a(next), a11);
                com.iab.omid.library.unity3d.utils.c.b(a11);
                HashSet<String> hashSet = new HashSet<>();
                hashSet.add(next);
                this.f23206g.a(a11, hashSet, b10);
            }
        }
        if (this.f23205f.c().size() > 0) {
            JSONObject a12 = a10.a(null);
            a(null, a10, a12, com.iab.omid.library.unity3d.walking.c.PARENT_VIEW, false);
            com.iab.omid.library.unity3d.utils.c.b(a12);
            this.f23206g.b(a12, this.f23205f.c(), b10);
            if (this.f23202c) {
                for (com.iab.omid.library.unity3d.adsession.a aVar : com.iab.omid.library.unity3d.internal.c.c().a()) {
                    aVar.a(this.f23203d);
                }
            }
        } else {
            this.f23206g.b();
        }
        this.f23205f.a();
    }

    public void g() {
        k();
    }

    public void h() {
        i();
    }

    public void j() {
        g();
        this.f23200a.clear();
        f23196j.post(new a());
    }

    public void removeTimeLogger(TreeWalkerTimeLogger treeWalkerTimeLogger) {
        if (this.f23200a.contains(treeWalkerTimeLogger)) {
            this.f23200a.remove(treeWalkerTimeLogger);
        }
    }

    private void a(long j10) {
        if (this.f23200a.size() > 0) {
            for (TreeWalkerTimeLogger treeWalkerTimeLogger : this.f23200a) {
                treeWalkerTimeLogger.onTreeProcessed(this.f23201b, TimeUnit.NANOSECONDS.toMillis(j10));
                if (treeWalkerTimeLogger instanceof TreeWalkerNanoTimeLogger) {
                    ((TreeWalkerNanoTimeLogger) treeWalkerTimeLogger).onTreeProcessedNano(this.f23201b, j10);
                }
            }
        }
    }

    private boolean b(View view, JSONObject jSONObject) {
        String d10 = this.f23205f.d(view);
        if (d10 != null) {
            com.iab.omid.library.unity3d.utils.c.a(jSONObject, d10);
            com.iab.omid.library.unity3d.utils.c.a(jSONObject, Boolean.valueOf(this.f23205f.f(view)));
            this.f23205f.d();
            return true;
        }
        return false;
    }

    private void a(View view, com.iab.omid.library.unity3d.processor.a aVar, JSONObject jSONObject, com.iab.omid.library.unity3d.walking.c cVar, boolean z10) {
        aVar.a(view, jSONObject, this, cVar == com.iab.omid.library.unity3d.walking.c.PARENT_VIEW, z10);
    }

    @Override // com.iab.omid.library.unity3d.processor.a.InterfaceC0340a
    public void a(View view, com.iab.omid.library.unity3d.processor.a aVar, JSONObject jSONObject, boolean z10) {
        com.iab.omid.library.unity3d.walking.c e10;
        if (h.d(view) && (e10 = this.f23205f.e(view)) != com.iab.omid.library.unity3d.walking.c.UNDERLYING_VIEW) {
            JSONObject a10 = aVar.a(view);
            com.iab.omid.library.unity3d.utils.c.a(jSONObject, a10);
            if (!b(view, a10)) {
                boolean z11 = z10 || a(view, a10);
                if (this.f23202c && e10 == com.iab.omid.library.unity3d.walking.c.OBSTRUCTION_VIEW && !z11) {
                    this.f23203d.add(new com.iab.omid.library.unity3d.weakreference.a(view));
                }
                a(view, aVar, a10, e10, z11);
            }
            this.f23201b++;
        }
    }

    private void a(String str, View view, JSONObject jSONObject) {
        com.iab.omid.library.unity3d.processor.a b10 = this.f23204e.b();
        String b11 = this.f23205f.b(str);
        if (b11 != null) {
            JSONObject a10 = b10.a(view);
            com.iab.omid.library.unity3d.utils.c.a(a10, str);
            com.iab.omid.library.unity3d.utils.c.b(a10, b11);
            com.iab.omid.library.unity3d.utils.c.a(jSONObject, a10);
        }
    }

    private boolean a(View view, JSONObject jSONObject) {
        a.C0342a c10 = this.f23205f.c(view);
        if (c10 != null) {
            com.iab.omid.library.unity3d.utils.c.a(jSONObject, c10);
            return true;
        }
        return false;
    }
}
