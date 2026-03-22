package okhttp3.internal.concurrent;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.Util;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TaskRunner.kt */
@Metadata
@SourceDebugExtension({"SMAP\nTaskRunner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskRunner.kt\nokhttp3/internal/concurrent/TaskRunner\n+ 2 Util.kt\nokhttp3/internal/Util\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,314:1\n608#2,4:315\n608#2,4:319\n615#2,4:323\n608#2,4:327\n608#2,4:331\n1#3:335\n*S KotlinDebug\n*F\n+ 1 TaskRunner.kt\nokhttp3/internal/concurrent/TaskRunner\n*L\n79#1:315,4\n97#1:319,4\n108#1:323,4\n126#1:327,4\n152#1:331,4\n*E\n"})
/* loaded from: classes8.dex */
public final class TaskRunner {
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public static final Companion f63747h = new Companion(null);
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public static final TaskRunner f63748i = new TaskRunner(new RealBackend(Util.N(Util.f63635i + " TaskRunner", true)));
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private static final Logger f63749j;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Backend f63750a;

    /* renamed from: b  reason: collision with root package name */
    private int f63751b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f63752c;

    /* renamed from: d  reason: collision with root package name */
    private long f63753d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final List<TaskQueue> f63754e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final List<TaskQueue> f63755f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final Runnable f63756g;

    /* compiled from: TaskRunner.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public interface Backend {
        void a(@NotNull TaskRunner taskRunner);

        void b(@NotNull TaskRunner taskRunner, long j10);

        void execute(@NotNull Runnable runnable);

        long nanoTime();
    }

    /* compiled from: TaskRunner.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Logger a() {
            return TaskRunner.f63749j;
        }

        private Companion() {
        }
    }

    /* compiled from: TaskRunner.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nTaskRunner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskRunner.kt\nokhttp3/internal/concurrent/TaskRunner$RealBackend\n+ 2 Util.kt\nokhttp3/internal/Util\n*L\n1#1,314:1\n560#2:315\n*S KotlinDebug\n*F\n+ 1 TaskRunner.kt\nokhttp3/internal/concurrent/TaskRunner$RealBackend\n*L\n281#1:315\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class RealBackend implements Backend {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final ThreadPoolExecutor f63757a;

        public RealBackend(@NotNull ThreadFactory threadFactory) {
            Intrinsics.checkNotNullParameter(threadFactory, "threadFactory");
            this.f63757a = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), threadFactory);
        }

        @Override // okhttp3.internal.concurrent.TaskRunner.Backend
        public void a(@NotNull TaskRunner taskRunner) {
            Intrinsics.checkNotNullParameter(taskRunner, "taskRunner");
            taskRunner.notify();
        }

        @Override // okhttp3.internal.concurrent.TaskRunner.Backend
        public void b(@NotNull TaskRunner taskRunner, long j10) throws InterruptedException {
            Intrinsics.checkNotNullParameter(taskRunner, "taskRunner");
            long j11 = j10 / 1000000;
            long j12 = j10 - (1000000 * j11);
            if (j11 > 0 || j10 > 0) {
                taskRunner.wait(j11, (int) j12);
            }
        }

        @Override // okhttp3.internal.concurrent.TaskRunner.Backend
        public void execute(@NotNull Runnable runnable) {
            Intrinsics.checkNotNullParameter(runnable, "runnable");
            this.f63757a.execute(runnable);
        }

        @Override // okhttp3.internal.concurrent.TaskRunner.Backend
        public long nanoTime() {
            return System.nanoTime();
        }
    }

    static {
        Logger logger = Logger.getLogger(TaskRunner.class.getName());
        Intrinsics.checkNotNullExpressionValue(logger, "getLogger(TaskRunner::class.java.name)");
        f63749j = logger;
    }

    public TaskRunner(@NotNull Backend backend) {
        Intrinsics.checkNotNullParameter(backend, "backend");
        this.f63750a = backend;
        this.f63751b = 10000;
        this.f63754e = new ArrayList();
        this.f63755f = new ArrayList();
        this.f63756g = new Runnable() { // from class: okhttp3.internal.concurrent.TaskRunner$runnable$1
            @Override // java.lang.Runnable
            public void run() {
                Task d10;
                long j10;
                while (true) {
                    TaskRunner taskRunner = TaskRunner.this;
                    synchronized (taskRunner) {
                        d10 = taskRunner.d();
                    }
                    if (d10 == null) {
                        return;
                    }
                    TaskQueue d11 = d10.d();
                    Intrinsics.checkNotNull(d11);
                    TaskRunner taskRunner2 = TaskRunner.this;
                    boolean isLoggable = TaskRunner.f63747h.a().isLoggable(Level.FINE);
                    if (isLoggable) {
                        j10 = d11.h().g().nanoTime();
                        TaskLoggerKt.a(d10, d11, "starting");
                    } else {
                        j10 = -1;
                    }
                    try {
                        taskRunner2.j(d10);
                        Unit unit = Unit.f60915a;
                        if (isLoggable) {
                            long nanoTime = d11.h().g().nanoTime() - j10;
                            TaskLoggerKt.a(d10, d11, "finished run in " + TaskLoggerKt.b(nanoTime));
                        }
                    } catch (Throwable th2) {
                        if (isLoggable) {
                            TaskLoggerKt.a(d10, d11, "failed a run in " + TaskLoggerKt.b(d11.h().g().nanoTime() - j10));
                        }
                        throw th2;
                    }
                }
            }
        };
    }

    private final void c(Task task, long j10) {
        if (Util.f63634h && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + this);
        }
        TaskQueue d10 = task.d();
        Intrinsics.checkNotNull(d10);
        if (d10.c() == task) {
            boolean d11 = d10.d();
            d10.m(false);
            d10.l(null);
            this.f63754e.remove(d10);
            if (j10 != -1 && !d11 && !d10.g()) {
                d10.k(task, j10, true);
            }
            if (!d10.e().isEmpty()) {
                this.f63755f.add(d10);
                return;
            }
            return;
        }
        throw new IllegalStateException("Check failed.");
    }

    private final void e(Task task) {
        if (Util.f63634h && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + this);
        }
        task.g(-1L);
        TaskQueue d10 = task.d();
        Intrinsics.checkNotNull(d10);
        d10.e().remove(task);
        this.f63755f.remove(d10);
        d10.l(task);
        this.f63754e.add(d10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void j(Task task) {
        if (Util.f63634h && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + this);
        }
        Thread currentThread = Thread.currentThread();
        String name = currentThread.getName();
        currentThread.setName(task.b());
        try {
            long f10 = task.f();
            synchronized (this) {
                c(task, f10);
                Unit unit = Unit.f60915a;
            }
            currentThread.setName(name);
        } catch (Throwable th2) {
            synchronized (this) {
                c(task, -1L);
                Unit unit2 = Unit.f60915a;
                currentThread.setName(name);
                throw th2;
            }
        }
    }

    @Nullable
    public final Task d() {
        boolean z10;
        if (Util.f63634h && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + this);
        }
        while (!this.f63755f.isEmpty()) {
            long nanoTime = this.f63750a.nanoTime();
            Iterator<TaskQueue> it = this.f63755f.iterator();
            long j10 = Long.MAX_VALUE;
            Task task = null;
            while (true) {
                if (it.hasNext()) {
                    Task task2 = it.next().e().get(0);
                    long max = Math.max(0L, task2.c() - nanoTime);
                    if (max > 0) {
                        j10 = Math.min(max, j10);
                    } else if (task != null) {
                        z10 = true;
                        break;
                    } else {
                        task = task2;
                    }
                } else {
                    z10 = false;
                    break;
                }
            }
            if (task != null) {
                e(task);
                if (z10 || (!this.f63752c && !this.f63755f.isEmpty())) {
                    this.f63750a.execute(this.f63756g);
                }
                return task;
            } else if (this.f63752c) {
                if (j10 < this.f63753d - nanoTime) {
                    this.f63750a.a(this);
                }
                return null;
            } else {
                this.f63752c = true;
                this.f63753d = nanoTime + j10;
                try {
                    try {
                        this.f63750a.b(this, j10);
                    } catch (InterruptedException unused) {
                        f();
                    }
                } finally {
                    this.f63752c = false;
                }
            }
        }
        return null;
    }

    public final void f() {
        int size = this.f63754e.size();
        while (true) {
            size--;
            if (-1 >= size) {
                break;
            }
            this.f63754e.get(size).b();
        }
        for (int size2 = this.f63755f.size() - 1; -1 < size2; size2--) {
            TaskQueue taskQueue = this.f63755f.get(size2);
            taskQueue.b();
            if (taskQueue.e().isEmpty()) {
                this.f63755f.remove(size2);
            }
        }
    }

    @NotNull
    public final Backend g() {
        return this.f63750a;
    }

    public final void h(@NotNull TaskQueue taskQueue) {
        Intrinsics.checkNotNullParameter(taskQueue, "taskQueue");
        if (Util.f63634h && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + this);
        }
        if (taskQueue.c() == null) {
            if (!taskQueue.e().isEmpty()) {
                Util.c(this.f63755f, taskQueue);
            } else {
                this.f63755f.remove(taskQueue);
            }
        }
        if (this.f63752c) {
            this.f63750a.a(this);
        } else {
            this.f63750a.execute(this.f63756g);
        }
    }

    @NotNull
    public final TaskQueue i() {
        int i10;
        synchronized (this) {
            i10 = this.f63751b;
            this.f63751b = i10 + 1;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append('Q');
        sb2.append(i10);
        return new TaskQueue(this, sb2.toString());
    }
}
