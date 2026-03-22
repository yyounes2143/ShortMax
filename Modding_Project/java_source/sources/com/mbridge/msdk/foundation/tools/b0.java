package com.mbridge.msdk.foundation.tools;

import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.FastKV;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* compiled from: FastKVConfig.java */
/* loaded from: classes5.dex */
public final class b0 {

    /* renamed from: a  reason: collision with root package name */
    static volatile Executor f27387a;

    /* renamed from: b  reason: collision with root package name */
    static FastKV.c f27388b = new a();

    /* compiled from: FastKVConfig.java */
    /* loaded from: classes5.dex */
    class b implements ThreadFactory {
        b() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "mb-sp-handler");
        }
    }

    private b0() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Executor a() {
        if (f27387a == null) {
            synchronized (b0.class) {
                try {
                    if (f27387a == null) {
                        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(4, 4, 10L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new b(), new ThreadPoolExecutor.DiscardPolicy());
                        threadPoolExecutor.allowCoreThreadTimeOut(true);
                        f27387a = threadPoolExecutor;
                    }
                } finally {
                }
            }
        }
        return f27387a;
    }

    /* compiled from: FastKVConfig.java */
    /* loaded from: classes5.dex */
    class a implements FastKV.c {
        a() {
        }

        @Override // com.mbridge.msdk.foundation.tools.FastKV.c
        public void a(String str, String str2) {
            if (MBridgeConstans.DEBUG) {
                p0.c("FastKVConfig", str + " " + str2);
            }
        }

        @Override // com.mbridge.msdk.foundation.tools.FastKV.c
        public void b(String str, Exception exc) {
            if (MBridgeConstans.DEBUG) {
                p0.b("FastKVConfig", str, exc);
            }
        }

        @Override // com.mbridge.msdk.foundation.tools.FastKV.c
        public void a(String str, Exception exc) {
            if (MBridgeConstans.DEBUG) {
                p0.c("FastKVConfig", str, exc);
            }
        }
    }
}
