package com.inmobi.media;

import android.os.Looper;
import android.util.SparseArray;
import androidx.core.app.NotificationCompat;
import com.inmobi.commons.core.configs.AdConfig;
import com.inmobi.media.A;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.Queue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class A {

    /* renamed from: a  reason: collision with root package name */
    public static final A f23444a = new A();

    /* renamed from: b  reason: collision with root package name */
    public static final SparseArray f23445b;

    /* renamed from: c  reason: collision with root package name */
    public static final ThreadPoolExecutor f23446c;

    static {
        String simpleName = A.class.getSimpleName();
        f23445b = new SparseArray();
        LinkedHashMap linkedHashMap = O2.f23923a;
        AdConfig adConfig = (AdConfig) AbstractC3110p5.a(com.mbridge.msdk.foundation.entity.b.JSON_KEY_ADS, "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig", null);
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(adConfig.getMaxPoolSize(), adConfig.getMaxPoolSize(), 5L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new K5(simpleName.concat("-AD")));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        f23446c = threadPoolExecutor;
    }

    public static void a(final int i10, final G1 task) {
        Intrinsics.checkNotNullParameter(task, "task");
        if (Intrinsics.areEqual(Looper.myLooper(), Looper.getMainLooper())) {
            c(i10, task);
            return;
        }
        ExecutorC3096o7 executorC3096o7 = (ExecutorC3096o7) AbstractC3268z4.f25482d.getValue();
        Runnable runnable = new Runnable() { // from class: ub.a
            @Override // java.lang.Runnable
            public final void run() {
                A.b(i10, task);
            }
        };
        executorC3096o7.getClass();
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        executorC3096o7.f25116a.post(runnable);
    }

    public static final void b(int i10, G1 task) {
        Intrinsics.checkNotNullParameter(task, "$task");
        c(i10, task);
    }

    public static void c(int i10, G1 g12) {
        try {
            SparseArray sparseArray = f23445b;
            Queue queue = (Queue) sparseArray.get(i10);
            if (queue == null) {
                queue = new LinkedList();
                sparseArray.put(i10, queue);
            }
            queue.add(g12);
            G1 g13 = (G1) queue.peek();
            if (queue.size() == 1 && g13 != null) {
                try {
                    f23446c.execute(g13);
                } catch (OutOfMemoryError unused) {
                    g13.c();
                }
            }
        } catch (Exception e10) {
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
        }
    }
}
