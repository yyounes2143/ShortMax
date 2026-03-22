package com.inmobi.media;

import com.inmobi.media.AbstractC3032k7;
import com.inmobi.media.Z6;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.k7  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC3032k7 {
    public static void a(final Z6 dao, final long j10, final int i10) {
        Intrinsics.checkNotNullParameter(dao, "dao");
        if (AbstractC3048l7.f24961d.getAndSet(true)) {
            return;
        }
        Runnable runnable = new Runnable() { // from class: ub.q4
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC3032k7.b(Z6.this, j10, i10);
            }
        };
        ScheduledExecutorService scheduledExecutorService = Ie.f23745a;
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        Ie.f23745a.schedule(runnable, 10000L, TimeUnit.MILLISECONDS);
    }

    public static final void b(Z6 dao, long j10, int i10) {
        Intrinsics.checkNotNullParameter(dao, "$dao");
        dao.getClass();
        for (Y6 y62 : T1.a(dao, "id NOT IN (SELECT id FROM ( SELECT id FROM logs_v2 WHERE saveTimestamp > " + j10 + " ORDER BY saveTimestamp DESC LIMIT " + i10 + ") AS foo);", null, null, null, null, null, 62)) {
            if (y62 != null) {
                AbstractC3064m7.a(y62.f24396a);
                dao.a(y62);
            }
        }
        AbstractC3048l7.f24961d.set(false);
    }

    public static Object a(Function0 run) {
        Semaphore semaphore;
        Intrinsics.checkNotNullParameter(run, "run");
        try {
            Result.a aVar = Result.f60901b;
            try {
                semaphore = AbstractC3048l7.f24960c;
                semaphore.acquire();
                run.invoke();
            } catch (Exception e10) {
                S5 s52 = S5.f24132a;
                C2947f2 event = new C2947f2(e10);
                Intrinsics.checkNotNullParameter(event, "event");
                S5.f24135d.a(event);
                semaphore = AbstractC3048l7.f24960c;
            }
            semaphore.release();
            return Result.d(Unit.f60915a);
        } catch (Throwable th2) {
            Result.a aVar2 = Result.f60901b;
            return Result.d(kotlin.f.a(th2));
        }
    }
}
