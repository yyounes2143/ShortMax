package com.mbridge.msdk.foundation.tools;

import com.mbridge.msdk.MBridgeConstans;
import java.util.concurrent.Executor;
/* compiled from: LimitExecutor.java */
/* loaded from: classes5.dex */
public class d0 implements Executor {

    /* renamed from: a  reason: collision with root package name */
    private Runnable f27414a;

    /* renamed from: b  reason: collision with root package name */
    private Runnable f27415b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LimitExecutor.java */
    /* loaded from: classes5.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Runnable f27416a;

        a(Runnable runnable) {
            this.f27416a = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f27416a.run();
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    p0.b("LimitExecutor", e10.getMessage());
                }
            } finally {
                d0.this.a();
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public synchronized void execute(Runnable runnable) {
        try {
            if (this.f27414a == null) {
                this.f27414a = a(runnable);
                b0.a().execute(this.f27414a);
            } else if (this.f27415b == null) {
                this.f27415b = a(runnable);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private Runnable a(Runnable runnable) {
        return new a(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a() {
        Runnable runnable = this.f27415b;
        this.f27414a = runnable;
        this.f27415b = null;
        if (runnable != null) {
            b0.a().execute(this.f27414a);
        }
    }
}
