package okhttp3.internal.concurrent;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Task.kt */
@Metadata
@SourceDebugExtension({"SMAP\nTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Task.kt\nokhttp3/internal/concurrent/Task\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,71:1\n1#2:72\n*E\n"})
/* loaded from: classes8.dex */
public abstract class Task {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f63734a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f63735b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private TaskQueue f63736c;

    /* renamed from: d  reason: collision with root package name */
    private long f63737d;

    public Task(@NotNull String name, boolean z10) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.f63734a = name;
        this.f63735b = z10;
        this.f63737d = -1L;
    }

    public final boolean a() {
        return this.f63735b;
    }

    @NotNull
    public final String b() {
        return this.f63734a;
    }

    public final long c() {
        return this.f63737d;
    }

    @Nullable
    public final TaskQueue d() {
        return this.f63736c;
    }

    public final void e(@NotNull TaskQueue queue) {
        Intrinsics.checkNotNullParameter(queue, "queue");
        TaskQueue taskQueue = this.f63736c;
        if (taskQueue == queue) {
            return;
        }
        if (taskQueue == null) {
            this.f63736c = queue;
            return;
        }
        throw new IllegalStateException("task is in multiple queues");
    }

    public abstract long f();

    public final void g(long j10) {
        this.f63737d = j10;
    }

    @NotNull
    public String toString() {
        return this.f63734a;
    }

    public /* synthetic */ Task(String str, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i10 & 2) != 0 ? true : z10);
    }
}
