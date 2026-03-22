package okhttp3.internal.concurrent;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Level;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.Util;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TaskQueue.kt */
@Metadata
@SourceDebugExtension({"SMAP\nTaskQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskQueue.kt\nokhttp3/internal/concurrent/TaskQueue\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 TaskLogger.kt\nokhttp3/internal/concurrent/TaskLoggerKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 Util.kt\nokhttp3/internal/Util\n*L\n1#1,218:1\n1#2:219\n25#3,4:220\n25#3,4:224\n25#3,4:228\n25#3,4:232\n25#3,4:251\n350#4,7:236\n615#5,4:243\n615#5,4:247\n*S KotlinDebug\n*F\n+ 1 TaskQueue.kt\nokhttp3/internal/concurrent/TaskQueue\n*L\n65#1:220,4\n68#1:224,4\n153#1:228,4\n159#1:232,4\n208#1:251,4\n165#1:236,7\n179#1:243,4\n189#1:247,4\n*E\n"})
/* loaded from: classes8.dex */
public final class TaskQueue {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final TaskRunner f63738a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final String f63739b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f63740c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private Task f63741d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final List<Task> f63742e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f63743f;

    /* compiled from: TaskQueue.kt */
    @Metadata
    /* loaded from: classes8.dex */
    private static final class AwaitIdleTask extends Task {
        @NotNull

        /* renamed from: e  reason: collision with root package name */
        private final CountDownLatch f63744e;

        public AwaitIdleTask() {
            super(Util.f63635i + " awaitIdle", false);
            this.f63744e = new CountDownLatch(1);
        }

        @Override // okhttp3.internal.concurrent.Task
        public long f() {
            this.f63744e.countDown();
            return -1L;
        }
    }

    public TaskQueue(@NotNull TaskRunner taskRunner, @NotNull String name) {
        Intrinsics.checkNotNullParameter(taskRunner, "taskRunner");
        Intrinsics.checkNotNullParameter(name, "name");
        this.f63738a = taskRunner;
        this.f63739b = name;
        this.f63742e = new ArrayList();
    }

    public static /* synthetic */ void j(TaskQueue taskQueue, Task task, long j10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            j10 = 0;
        }
        taskQueue.i(task, j10);
    }

    public final void a() {
        if (Util.f63634h && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + this);
        }
        synchronized (this.f63738a) {
            try {
                if (b()) {
                    this.f63738a.h(this);
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final boolean b() {
        Task task = this.f63741d;
        if (task != null) {
            Intrinsics.checkNotNull(task);
            if (task.a()) {
                this.f63743f = true;
            }
        }
        boolean z10 = false;
        for (int size = this.f63742e.size() - 1; -1 < size; size--) {
            if (this.f63742e.get(size).a()) {
                Task task2 = this.f63742e.get(size);
                if (TaskRunner.f63747h.a().isLoggable(Level.FINE)) {
                    TaskLoggerKt.a(task2, this, "canceled");
                }
                this.f63742e.remove(size);
                z10 = true;
            }
        }
        return z10;
    }

    @Nullable
    public final Task c() {
        return this.f63741d;
    }

    public final boolean d() {
        return this.f63743f;
    }

    @NotNull
    public final List<Task> e() {
        return this.f63742e;
    }

    @NotNull
    public final String f() {
        return this.f63739b;
    }

    public final boolean g() {
        return this.f63740c;
    }

    @NotNull
    public final TaskRunner h() {
        return this.f63738a;
    }

    public final void i(@NotNull Task task, long j10) {
        Intrinsics.checkNotNullParameter(task, "task");
        synchronized (this.f63738a) {
            if (this.f63740c) {
                if (task.a()) {
                    if (TaskRunner.f63747h.a().isLoggable(Level.FINE)) {
                        TaskLoggerKt.a(task, this, "schedule canceled (queue is shutdown)");
                    }
                    return;
                }
                if (TaskRunner.f63747h.a().isLoggable(Level.FINE)) {
                    TaskLoggerKt.a(task, this, "schedule failed (queue is shutdown)");
                }
                throw new RejectedExecutionException();
            }
            if (k(task, j10, false)) {
                this.f63738a.h(this);
            }
            Unit unit = Unit.f60915a;
        }
    }

    public final boolean k(@NotNull Task task, long j10, boolean z10) {
        String str;
        Intrinsics.checkNotNullParameter(task, "task");
        task.e(this);
        long nanoTime = this.f63738a.g().nanoTime();
        long j11 = nanoTime + j10;
        int indexOf = this.f63742e.indexOf(task);
        if (indexOf != -1) {
            if (task.c() <= j11) {
                if (TaskRunner.f63747h.a().isLoggable(Level.FINE)) {
                    TaskLoggerKt.a(task, this, "already scheduled");
                }
                return false;
            }
            this.f63742e.remove(indexOf);
        }
        task.g(j11);
        if (TaskRunner.f63747h.a().isLoggable(Level.FINE)) {
            if (z10) {
                str = "run again after " + TaskLoggerKt.b(j11 - nanoTime);
            } else {
                str = "scheduled after " + TaskLoggerKt.b(j11 - nanoTime);
            }
            TaskLoggerKt.a(task, this, str);
        }
        Iterator<Task> it = this.f63742e.iterator();
        int i10 = 0;
        while (true) {
            if (it.hasNext()) {
                if (it.next().c() - nanoTime > j10) {
                    break;
                }
                i10++;
            } else {
                i10 = -1;
                break;
            }
        }
        if (i10 == -1) {
            i10 = this.f63742e.size();
        }
        this.f63742e.add(i10, task);
        if (i10 != 0) {
            return false;
        }
        return true;
    }

    public final void l(@Nullable Task task) {
        this.f63741d = task;
    }

    public final void m(boolean z10) {
        this.f63743f = z10;
    }

    public final void n() {
        if (Util.f63634h && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + this);
        }
        synchronized (this.f63738a) {
            try {
                this.f63740c = true;
                if (b()) {
                    this.f63738a.h(this);
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @NotNull
    public String toString() {
        return this.f63739b;
    }
}
