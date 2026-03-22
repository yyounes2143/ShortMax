package com.mbridge.msdk.tracker.network;

import android.net.TrafficStats;
import android.os.Process;
import android.os.SystemClock;
import java.util.concurrent.BlockingQueue;
/* compiled from: NetworkDispatcher.java */
/* loaded from: classes6.dex */
public class n implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final BlockingQueue<t<?>> f30284a;

    /* renamed from: b  reason: collision with root package name */
    private final m f30285b;

    /* renamed from: c  reason: collision with root package name */
    private final b f30286c;

    /* renamed from: d  reason: collision with root package name */
    private final w f30287d;

    /* renamed from: e  reason: collision with root package name */
    private volatile boolean f30288e = false;

    public n(BlockingQueue<t<?>> blockingQueue, m mVar, b bVar, w wVar) {
        this.f30284a = blockingQueue;
        this.f30285b = mVar;
        this.f30286c = bVar;
        this.f30287d = wVar;
    }

    private void a(t<?> tVar) {
        TrafficStats.setThreadStatsTag(tVar.s());
    }

    void b(t<?> tVar) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        tVar.a(3);
        try {
            try {
                try {
                    tVar.a("network-queue-take");
                } catch (Exception e10) {
                    c0.a(e10, "Unhandled exception %s", e10.toString());
                    a0 a0Var = new a0(e10);
                    a0Var.a(SystemClock.elapsedRealtime() - elapsedRealtime);
                    this.f30287d.a(tVar, a0Var);
                    tVar.x();
                }
            } catch (b0 e11) {
                e11.a(SystemClock.elapsedRealtime() - elapsedRealtime);
                a(tVar, e11);
                tVar.x();
            }
            if (tVar.v()) {
                tVar.c("network-discard-cancelled");
                tVar.x();
                return;
            }
            if (tVar.y()) {
                a(tVar);
            }
            q a10 = this.f30285b.a(tVar);
            tVar.a("network-http-complete");
            if (a10.f30319e && tVar.u()) {
                tVar.c("not-modified");
                tVar.x();
                return;
            }
            v<?> a11 = tVar.a(a10);
            tVar.a("network-parse-complete");
            if (tVar.z() && a11.f30392b != null) {
                this.f30286c.a(tVar.e(), a11.f30392b);
                tVar.a("network-cache-written");
            }
            tVar.w();
            this.f30287d.a(tVar, a11);
            tVar.a(a11);
        } finally {
            tVar.a(4);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        Process.setThreadPriority(10);
        while (true) {
            try {
                a();
            } catch (InterruptedException unused) {
                if (this.f30288e) {
                    Thread.currentThread().interrupt();
                    return;
                }
                c0.c("Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }

    private void a() throws InterruptedException {
        b(this.f30284a.take());
    }

    private void a(t<?> tVar, b0 b0Var) {
        this.f30287d.a(tVar, tVar.c(b0Var));
    }
}
