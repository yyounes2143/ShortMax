package com.mbridge.msdk.tracker;

import android.util.Log;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* compiled from: ExecutorManager.java */
/* loaded from: classes6.dex */
class j {

    /* renamed from: a  reason: collision with root package name */
    private volatile ThreadPoolExecutor f30226a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ExecutorManager.java */
    /* loaded from: classes6.dex */
    public class a implements ThreadFactory {
        a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "MBridgeTrackThread");
        }
    }

    /* compiled from: ExecutorManager.java */
    /* loaded from: classes6.dex */
    private static final class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final Runnable f30228a;

        public b(Runnable runnable) {
            this.f30228a = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (y.b(this.f30228a)) {
                return;
            }
            try {
                this.f30228a.run();
            } catch (Exception e10) {
                if (com.mbridge.msdk.tracker.a.f30196a) {
                    Log.e("TrackManager", "execute error", e10);
                }
            }
        }
    }

    public void a(Runnable runnable) {
        if (this.f30226a == null) {
            this.f30226a = a();
        }
        if (this.f30226a.isShutdown()) {
            return;
        }
        this.f30226a.execute(new b(runnable));
    }

    private ThreadPoolExecutor a() {
        return new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new a(), new ThreadPoolExecutor.DiscardPolicy());
    }
}
