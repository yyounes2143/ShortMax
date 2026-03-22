package com.mbridge.msdk.foundation.same.task;

import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.r0;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* compiled from: CommonTaskLoaderThreadPool.java */
/* loaded from: classes5.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static volatile ThreadPoolExecutor f27332a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CommonTaskLoaderThreadPool.java */
    /* loaded from: classes5.dex */
    public class a implements ThreadFactory {
        a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setName("mb-task-loader-thread");
            return thread;
        }
    }

    private static ThreadFactory a() {
        return new a();
    }

    public static ThreadPoolExecutor b() {
        c();
        if (f27332a == null) {
            int availableProcessors = (Runtime.getRuntime().availableProcessors() * 2) + 1;
            f27332a = new ThreadPoolExecutor(availableProcessors, availableProcessors, 10L, TimeUnit.MILLISECONDS, new LinkedBlockingDeque(), a(), new ThreadPoolExecutor.DiscardPolicy());
            f27332a.allowCoreThreadTimeOut(true);
        }
        return f27332a;
    }

    private static void c() {
        int i10;
        if (f27332a != null) {
            return;
        }
        int a10 = a(10, "c_t_l_t_p_c");
        int a11 = a(50, "c_t_l_t_p_m");
        int a12 = a(5, "c_t_l_t_p_t");
        if (a11 < a10) {
            i10 = a10;
        } else {
            i10 = a11;
        }
        try {
            if (MBridgeConstans.DEBUG) {
                p0.a("CommonTaskLoaderThreadPool", "create ThreadPoolExecutor for core " + a10 + " max " + i10 + " timeout " + a12);
            }
            long j10 = a12;
            if (j10 <= 0) {
                j10 = 1;
            }
            f27332a = new ThreadPoolExecutor(a10, i10, j10, TimeUnit.SECONDS, new LinkedBlockingDeque(), a(), new ThreadPoolExecutor.DiscardPolicy());
            f27332a.allowCoreThreadTimeOut(true);
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                p0.b("CommonTaskLoaderThreadPool", "create ThreadPoolExecutor failed ", e10);
            }
        }
    }

    private static int a(int i10, String str) {
        try {
            int b10 = r0.a().b(str, i10);
            return b10 <= 0 ? i10 : b10;
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                p0.b("CommonTaskLoaderThreadPool", e10.getMessage());
                return i10;
            }
            return i10;
        }
    }
}
