package com.iab.omid.library.bytedance2.walking;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import androidx.annotation.VisibleForTesting;
import com.iab.omid.library.bytedance2.processor.a;
import com.iab.omid.library.bytedance2.utils.f;
import com.iab.omid.library.bytedance2.utils.h;
import com.iab.omid.library.bytedance2.walking.a;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class TreeWalker implements a.InterfaceC0328a {

    /* renamed from: i  reason: collision with root package name */
    private static TreeWalker f22796i = new TreeWalker();

    /* renamed from: j  reason: collision with root package name */
    private static Handler f22797j = new Handler(Looper.getMainLooper());

    /* renamed from: k  reason: collision with root package name */
    private static Handler f22798k = null;

    /* renamed from: l  reason: collision with root package name */
    private static final Runnable f22799l = new b();

    /* renamed from: m  reason: collision with root package name */
    private static final Runnable f22800m = new c();

    /* renamed from: b  reason: collision with root package name */
    private int f22802b;

    /* renamed from: h  reason: collision with root package name */
    private long f22808h;

    /* renamed from: a  reason: collision with root package name */
    private List<TreeWalkerTimeLogger> f22801a = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private boolean f22803c = false;

    /* renamed from: d  reason: collision with root package name */
    private final List<com.iab.omid.library.bytedance2.weakreference.a> f22804d = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    private com.iab.omid.library.bytedance2.walking.a f22806f = new com.iab.omid.library.bytedance2.walking.a();

    /* renamed from: e  reason: collision with root package name */
    private com.iab.omid.library.bytedance2.processor.b f22805e = new com.iab.omid.library.bytedance2.processor.b();

    /* renamed from: g  reason: collision with root package name */
    private com.iab.omid.library.bytedance2.walking.b f22807g = new com.iab.omid.library.bytedance2.walking.b(new com.iab.omid.library.bytedance2.walking.async.c());

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
            TreeWalker.this.f22807g.b();
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
            if (TreeWalker.f22798k != null) {
                TreeWalker.f22798k.post(TreeWalker.f22799l);
                TreeWalker.f22798k.postDelayed(TreeWalker.f22800m, 200L);
            }
        }
    }

    TreeWalker() {
    }

    private void d() {
        a(f.b() - this.f22808h);
    }

    private void e() {
        this.f22802b = 0;
        this.f22804d.clear();
        this.f22803c = false;
        Iterator<com.iab.omid.library.bytedance2.adsession.a> it = com.iab.omid.library.bytedance2.internal.c.c().a().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            } else if (it.next().e()) {
                this.f22803c = true;
                break;
            }
        }
        this.f22808h = f.b();
    }

    public static TreeWalker getInstance() {
        return f22796i;
    }

    private void i() {
        if (f22798k == null) {
            Handler handler = new Handler(Looper.getMainLooper());
            f22798k = handler;
            handler.post(f22799l);
            f22798k.postDelayed(f22800m, 200L);
        }
    }

    private void k() {
        Handler handler = f22798k;
        if (handler != null) {
            handler.removeCallbacks(f22800m);
            f22798k = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        e();
        f();
        d();
    }

    public void addTimeLogger(TreeWalkerTimeLogger treeWalkerTimeLogger) {
        if (!this.f22801a.contains(treeWalkerTimeLogger)) {
            this.f22801a.add(treeWalkerTimeLogger);
        }
    }

    @VisibleForTesting
    void f() {
        this.f22806f.e();
        long b10 = f.b();
        com.iab.omid.library.bytedance2.processor.a a10 = this.f22805e.a();
        if (this.f22806f.b().size() > 0) {
            Iterator<String> it = this.f22806f.b().iterator();
            while (it.hasNext()) {
                String next = it.next();
                JSONObject a11 = a10.a(null);
                a(next, this.f22806f.a(next), a11);
                com.iab.omid.library.bytedance2.utils.c.b(a11);
                HashSet<String> hashSet = new HashSet<>();
                hashSet.add(next);
                this.f22807g.a(a11, hashSet, b10);
            }
        }
        if (this.f22806f.c().size() > 0) {
            JSONObject a12 = a10.a(null);
            a(null, a10, a12, com.iab.omid.library.bytedance2.walking.c.PARENT_VIEW, false);
            com.iab.omid.library.bytedance2.utils.c.b(a12);
            this.f22807g.b(a12, this.f22806f.c(), b10);
            if (this.f22803c) {
                for (com.iab.omid.library.bytedance2.adsession.a aVar : com.iab.omid.library.bytedance2.internal.c.c().a()) {
                    aVar.a(this.f22804d);
                }
            }
        } else {
            this.f22807g.b();
        }
        this.f22806f.a();
    }

    public void g() {
        k();
    }

    public void h() {
        i();
    }

    public void j() {
        g();
        this.f22801a.clear();
        f22797j.post(new a());
    }

    public void removeTimeLogger(TreeWalkerTimeLogger treeWalkerTimeLogger) {
        if (this.f22801a.contains(treeWalkerTimeLogger)) {
            this.f22801a.remove(treeWalkerTimeLogger);
        }
    }

    private void a(long j10) {
        if (this.f22801a.size() > 0) {
            for (TreeWalkerTimeLogger treeWalkerTimeLogger : this.f22801a) {
                treeWalkerTimeLogger.onTreeProcessed(this.f22802b, TimeUnit.NANOSECONDS.toMillis(j10));
                if (treeWalkerTimeLogger instanceof TreeWalkerNanoTimeLogger) {
                    ((TreeWalkerNanoTimeLogger) treeWalkerTimeLogger).onTreeProcessedNano(this.f22802b, j10);
                }
            }
        }
    }

    private boolean b(View view, JSONObject jSONObject) {
        String d10 = this.f22806f.d(view);
        if (d10 != null) {
            com.iab.omid.library.bytedance2.utils.c.a(jSONObject, d10);
            com.iab.omid.library.bytedance2.utils.c.a(jSONObject, Boolean.valueOf(this.f22806f.f(view)));
            this.f22806f.d();
            return true;
        }
        return false;
    }

    private void a(View view, com.iab.omid.library.bytedance2.processor.a aVar, JSONObject jSONObject, com.iab.omid.library.bytedance2.walking.c cVar, boolean z10) {
        aVar.a(view, jSONObject, this, cVar == com.iab.omid.library.bytedance2.walking.c.PARENT_VIEW, z10);
    }

    @Override // com.iab.omid.library.bytedance2.processor.a.InterfaceC0328a
    public void a(View view, com.iab.omid.library.bytedance2.processor.a aVar, JSONObject jSONObject, boolean z10) {
        com.iab.omid.library.bytedance2.walking.c e10;
        if (h.d(view) && (e10 = this.f22806f.e(view)) != com.iab.omid.library.bytedance2.walking.c.UNDERLYING_VIEW) {
            JSONObject a10 = aVar.a(view);
            com.iab.omid.library.bytedance2.utils.c.a(jSONObject, a10);
            if (!b(view, a10)) {
                boolean z11 = z10 || a(view, a10);
                if (this.f22803c && e10 == com.iab.omid.library.bytedance2.walking.c.OBSTRUCTION_VIEW && !z11) {
                    this.f22804d.add(new com.iab.omid.library.bytedance2.weakreference.a(view));
                }
                a(view, aVar, a10, e10, z11);
            }
            this.f22802b++;
        }
    }

    private void a(String str, View view, JSONObject jSONObject) {
        com.iab.omid.library.bytedance2.processor.a b10 = this.f22805e.b();
        String b11 = this.f22806f.b(str);
        if (b11 != null) {
            JSONObject a10 = b10.a(view);
            com.iab.omid.library.bytedance2.utils.c.a(a10, str);
            com.iab.omid.library.bytedance2.utils.c.b(a10, b11);
            com.iab.omid.library.bytedance2.utils.c.a(jSONObject, a10);
        }
    }

    private boolean a(View view, JSONObject jSONObject) {
        a.C0330a c10 = this.f22806f.c(view);
        if (c10 != null) {
            com.iab.omid.library.bytedance2.utils.c.a(jSONObject, c10);
            return true;
        }
        return false;
    }
}
