package androidx.compose.runtime.internal;

import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SnapshotThreadLocal.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nSnapshotThreadLocal.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotThreadLocal.kt\nandroidx/compose/runtime/internal/SnapshotThreadLocal\n+ 2 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n*L\n1#1,154:1\n25#2,5:155\n33#2:160\n*S KotlinDebug\n*F\n+ 1 SnapshotThreadLocal.kt\nandroidx/compose/runtime/internal/SnapshotThreadLocal\n*L\n33#1:155,5\n52#1:160\n*E\n"})
/* loaded from: classes.dex */
public final class SnapshotThreadLocal<T> {
    public static final int $stable = 8;
    @Nullable
    private T mainThreadValue;
    @NotNull
    private final AtomicReference<ThreadMap> map;
    @NotNull
    private final Object writeMutex;

    public SnapshotThreadLocal() {
        ThreadMap threadMap;
        threadMap = SnapshotThreadLocalKt.emptyThreadMap;
        this.map = new AtomicReference<>(threadMap);
        this.writeMutex = new Object();
    }

    @Nullable
    public final T get() {
        long currentThreadId = Thread_jvmKt.currentThreadId();
        if (currentThreadId == Thread_androidKt.getMainThreadId()) {
            return this.mainThreadValue;
        }
        return (T) this.map.get().get(currentThreadId);
    }

    public final void set(@Nullable T t10) {
        long currentThreadId = Thread_jvmKt.currentThreadId();
        if (currentThreadId == Thread_androidKt.getMainThreadId()) {
            this.mainThreadValue = t10;
            return;
        }
        synchronized (this.writeMutex) {
            ThreadMap threadMap = this.map.get();
            if (threadMap.trySet(currentThreadId, t10)) {
                return;
            }
            this.map.set(threadMap.newWith(currentThreadId, t10));
            Unit unit = Unit.f60915a;
        }
    }
}
