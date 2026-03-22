package com.mbridge.msdk.foundation.same.task;

import android.annotation.SuppressLint;
import android.content.Context;
import com.mbridge.msdk.foundation.same.task.a;
import com.mbridge.msdk.foundation.tools.r0;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* compiled from: CommonTaskLoader.java */
/* loaded from: classes5.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    ThreadPoolExecutor f27326a;

    /* renamed from: b  reason: collision with root package name */
    HashMap<Long, com.mbridge.msdk.foundation.same.task.a> f27327b;

    /* renamed from: c  reason: collision with root package name */
    WeakReference<Context> f27328c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CommonTaskLoader.java */
    /* loaded from: classes5.dex */
    public class a implements a.InterfaceC0375a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.foundation.same.task.a f27329a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ a.InterfaceC0375a f27330b;

        a(com.mbridge.msdk.foundation.same.task.a aVar, a.InterfaceC0375a interfaceC0375a) {
            this.f27329a = aVar;
            this.f27330b = interfaceC0375a;
        }

        @Override // com.mbridge.msdk.foundation.same.task.a.InterfaceC0375a
        public void a(a.b bVar) {
            if (bVar == a.b.CANCEL) {
                b.this.f27327b.remove(Long.valueOf(this.f27329a.getId()));
            } else if (bVar == a.b.FINISH) {
                b.this.f27327b.remove(Long.valueOf(this.f27329a.getId()));
            } else if (bVar == a.b.RUNNING && b.this.f27328c.get() == null) {
                b.this.a();
            }
            a.InterfaceC0375a interfaceC0375a = this.f27330b;
            if (interfaceC0375a != null) {
                interfaceC0375a.a(bVar);
            }
        }
    }

    @SuppressLint({"UseSparseArrays"})
    public b(Context context, int i10) {
        if (r0.a().a("c_t_l_t_p", true)) {
            this.f27326a = c.b();
        } else {
            if (i10 == 0) {
                this.f27326a = new ThreadPoolExecutor(1, 5, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new ThreadPoolExecutor.DiscardPolicy());
            } else {
                this.f27326a = new ThreadPoolExecutor(i10, (i10 * 2) + 1, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new ThreadPoolExecutor.DiscardPolicy());
            }
            this.f27326a.allowCoreThreadTimeOut(true);
        }
        this.f27327b = new HashMap<>();
        this.f27328c = new WeakReference<>(context);
    }

    public void a(com.mbridge.msdk.foundation.same.task.a aVar) {
        a(aVar, null);
        this.f27326a.execute(aVar);
    }

    public void b(com.mbridge.msdk.foundation.same.task.a aVar, a.InterfaceC0375a interfaceC0375a) {
        a(aVar, interfaceC0375a);
        this.f27326a.execute(aVar);
    }

    private synchronized void a(com.mbridge.msdk.foundation.same.task.a aVar, a.InterfaceC0375a interfaceC0375a) {
        this.f27327b.put(Long.valueOf(aVar.getId()), aVar);
        aVar.setOnStateChangeListener(new a(aVar, interfaceC0375a));
    }

    public synchronized void a() {
        try {
            for (Map.Entry<Long, com.mbridge.msdk.foundation.same.task.a> entry : this.f27327b.entrySet()) {
                entry.getValue().cancel();
            }
            this.f27327b.clear();
        } catch (Exception unused) {
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @SuppressLint({"UseSparseArrays"})
    public b(Context context) {
        if (r0.a().a("c_t_l_t_p", true)) {
            this.f27326a = c.b();
        } else {
            if (r0.a().a("c_t_p_t_l", true)) {
                int availableProcessors = (Runtime.getRuntime().availableProcessors() * 2) + 1;
                this.f27326a = new ThreadPoolExecutor(availableProcessors, availableProcessors, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new ThreadPoolExecutor.DiscardPolicy());
            } else {
                this.f27326a = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new ThreadPoolExecutor.DiscardPolicy());
            }
            this.f27326a.allowCoreThreadTimeOut(true);
        }
        this.f27327b = new HashMap<>();
        this.f27328c = new WeakReference<>(context);
    }
}
