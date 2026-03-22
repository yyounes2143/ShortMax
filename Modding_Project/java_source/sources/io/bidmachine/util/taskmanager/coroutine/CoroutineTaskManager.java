package io.bidmachine.util.taskmanager.coroutine;

import cr.a;
import gt.g;
import gt.g0;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.i;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
/* compiled from: CoroutineTaskManager.kt */
@Metadata
/* loaded from: classes8.dex */
public class CoroutineTaskManager extends a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final g0 f58685a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Map<Runnable, r> f58686b;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CoroutineTaskManager(@NotNull CoroutineContext coroutineContext) {
        this(i.a(coroutineContext));
        Intrinsics.checkNotNullParameter(coroutineContext, "coroutineContext");
    }

    @Override // cr.a
    protected void d(@NotNull Runnable task) throws Throwable {
        Intrinsics.checkNotNullParameter(task, "task");
        r remove = this.f58686b.remove(task);
        if (remove != null) {
            r.a.b(remove, null, 1, null);
        }
    }

    @Override // cr.a
    protected void e(@NotNull Runnable task, long j10) throws Throwable {
        r d10;
        Intrinsics.checkNotNullParameter(task, "task");
        d10 = g.d(this.f58685a, null, CoroutineStart.LAZY, new CoroutineTaskManager$scheduleTask$1(j10, this, task, null), 1, null);
        this.f58686b.put(task, d10);
        d10.start();
    }

    public CoroutineTaskManager(@NotNull g0 coroutineScope) {
        Intrinsics.checkNotNullParameter(coroutineScope, "coroutineScope");
        this.f58685a = coroutineScope;
        this.f58686b = new ConcurrentHashMap();
    }
}
