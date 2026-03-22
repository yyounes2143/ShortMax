package com.mbridge.msdk.tracker.network;

import android.os.Handler;
import java.util.concurrent.Executor;
/* compiled from: ExecutorDelivery.java */
/* loaded from: classes6.dex */
public class f implements w {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f30270a;

    /* compiled from: ExecutorDelivery.java */
    /* loaded from: classes6.dex */
    class a implements Executor {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Handler f30271a;

        a(Handler handler) {
            this.f30271a = handler;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.f30271a.post(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ExecutorDelivery.java */
    /* loaded from: classes6.dex */
    public static class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final t f30273a;

        /* renamed from: b  reason: collision with root package name */
        private final v f30274b;

        /* renamed from: c  reason: collision with root package name */
        private final Runnable f30275c;

        public b(t tVar, v vVar, Runnable runnable) {
            this.f30273a = tVar;
            this.f30274b = vVar;
            this.f30275c = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f30273a.v()) {
                this.f30273a.c("canceled-at-delivery");
                return;
            }
            if (this.f30274b.a()) {
                this.f30273a.a((t) this.f30274b.f30391a);
            } else {
                this.f30273a.b(this.f30274b.f30393c);
            }
            if (this.f30274b.f30394d) {
                this.f30273a.a("intermediate-response");
            } else {
                this.f30273a.c("done");
            }
            Runnable runnable = this.f30275c;
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    public f(Handler handler) {
        this.f30270a = new a(handler);
    }

    @Override // com.mbridge.msdk.tracker.network.w
    public void a(t<?> tVar, v<?> vVar) {
        a(tVar, vVar, null);
    }

    public void a(t<?> tVar, v<?> vVar, Runnable runnable) {
        tVar.w();
        tVar.a("post-response");
        this.f30270a.execute(new b(tVar, vVar, runnable));
    }

    public f(Executor executor) {
        this.f30270a = executor;
    }

    @Override // com.mbridge.msdk.tracker.network.w
    public void a(t<?> tVar, b0 b0Var) {
        tVar.a("post-error");
        this.f30270a.execute(new b(tVar, v.a(b0Var), null));
    }
}
