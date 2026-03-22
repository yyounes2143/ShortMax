package com.applovin.shadow.okhttp3.internal.concurrent;

import com.applovin.shadow.okhttp3.internal.Util;
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
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TaskRunner.kt */
@Metadata
@SourceDebugExtension({"SMAP\nTaskRunner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskRunner.kt\nokhttp3/internal/concurrent/TaskRunner\n+ 2 Util.kt\nokhttp3/internal/Util\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,314:1\n608#2,4:315\n608#2,4:319\n615#2,4:323\n608#2,4:327\n608#2,4:331\n1#3:335\n*S KotlinDebug\n*F\n+ 1 TaskRunner.kt\nokhttp3/internal/concurrent/TaskRunner\n*L\n79#1:315,4\n97#1:319,4\n108#1:323,4\n126#1:327,4\n152#1:331,4\n*E\n"})
/* loaded from: classes2.dex */
public final class TaskRunner {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final TaskRunner INSTANCE = new TaskRunner(new RealBackend(Util.threadFactory(Util.okHttpName + " TaskRunner", true)));
    @NotNull
    private static final Logger logger;
    @NotNull
    private final Backend backend;
    @NotNull
    private final List<TaskQueue> busyQueues;
    private boolean coordinatorWaiting;
    private long coordinatorWakeUpAt;
    private int nextQueueName;
    @NotNull
    private final List<TaskQueue> readyQueues;
    @NotNull
    private final Runnable runnable;

    /* compiled from: TaskRunner.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public interface Backend {
        void beforeTask(@NotNull TaskRunner taskRunner);

        void coordinatorNotify(@NotNull TaskRunner taskRunner);

        void coordinatorWait(@NotNull TaskRunner taskRunner, long j10);

        void execute(@NotNull Runnable runnable);

        long nanoTime();
    }

    /* compiled from: TaskRunner.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Logger getLogger() {
            return TaskRunner.logger;
        }

        private Companion() {
        }
    }

    /* compiled from: TaskRunner.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nTaskRunner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskRunner.kt\nokhttp3/internal/concurrent/TaskRunner$RealBackend\n+ 2 Util.kt\nokhttp3/internal/Util\n*L\n1#1,314:1\n560#2:315\n*S KotlinDebug\n*F\n+ 1 TaskRunner.kt\nokhttp3/internal/concurrent/TaskRunner$RealBackend\n*L\n281#1:315\n*E\n"})
    /* loaded from: classes2.dex */
    public static final class RealBackend implements Backend {
        @NotNull
        private final ThreadPoolExecutor executor;

        public RealBackend(@NotNull ThreadFactory threadFactory) {
            Intrinsics.checkNotNullParameter(threadFactory, "threadFactory");
            this.executor = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), threadFactory);
        }

        @Override // com.applovin.shadow.okhttp3.internal.concurrent.TaskRunner.Backend
        public void beforeTask(@NotNull TaskRunner taskRunner) {
            Intrinsics.checkNotNullParameter(taskRunner, "taskRunner");
        }

        @Override // com.applovin.shadow.okhttp3.internal.concurrent.TaskRunner.Backend
        public void coordinatorNotify(@NotNull TaskRunner taskRunner) {
            Intrinsics.checkNotNullParameter(taskRunner, "taskRunner");
            taskRunner.notify();
        }

        @Override // com.applovin.shadow.okhttp3.internal.concurrent.TaskRunner.Backend
        public void coordinatorWait(@NotNull TaskRunner taskRunner, long j10) throws InterruptedException {
            Intrinsics.checkNotNullParameter(taskRunner, "taskRunner");
            long j11 = j10 / 1000000;
            long j12 = j10 - (1000000 * j11);
            if (j11 > 0 || j10 > 0) {
                taskRunner.wait(j11, (int) j12);
            }
        }

        @Override // com.applovin.shadow.okhttp3.internal.concurrent.TaskRunner.Backend
        public void execute(@NotNull Runnable runnable) {
            Intrinsics.checkNotNullParameter(runnable, "runnable");
            this.executor.execute(runnable);
        }

        @Override // com.applovin.shadow.okhttp3.internal.concurrent.TaskRunner.Backend
        public long nanoTime() {
            return System.nanoTime();
        }

        public final void shutdown() {
            this.executor.shutdown();
        }
    }

    static {
        Logger logger2 = Logger.getLogger(TaskRunner.class.getName());
        Intrinsics.checkNotNullExpressionValue(logger2, "getLogger(TaskRunner::class.java.name)");
        logger = logger2;
    }

    public TaskRunner(@NotNull Backend backend) {
        Intrinsics.checkNotNullParameter(backend, "backend");
        this.backend = backend;
        this.nextQueueName = 10000;
        this.busyQueues = new ArrayList();
        this.readyQueues = new ArrayList();
        this.runnable = new Runnable() { // from class: com.applovin.shadow.okhttp3.internal.concurrent.TaskRunner$runnable$1
            @Override // java.lang.Runnable
            public void run() {
                Task awaitTaskToRun;
                long j10;
                while (true) {
                    TaskRunner taskRunner = TaskRunner.this;
                    synchronized (taskRunner) {
                        awaitTaskToRun = taskRunner.awaitTaskToRun();
                    }
                    if (awaitTaskToRun == null) {
                        return;
                    }
                    TaskQueue queue$okhttp = awaitTaskToRun.getQueue$okhttp();
                    Intrinsics.checkNotNull(queue$okhttp);
                    TaskRunner taskRunner2 = TaskRunner.this;
                    boolean isLoggable = TaskRunner.Companion.getLogger().isLoggable(Level.FINE);
                    if (isLoggable) {
                        j10 = queue$okhttp.getTaskRunner$okhttp().getBackend().nanoTime();
                        TaskLoggerKt.access$log(awaitTaskToRun, queue$okhttp, "starting");
                    } else {
                        j10 = -1;
                    }
                    try {
                        taskRunner2.runTask(awaitTaskToRun);
                        Unit unit = Unit.f60915a;
                        if (isLoggable) {
                            long nanoTime = queue$okhttp.getTaskRunner$okhttp().getBackend().nanoTime() - j10;
                            TaskLoggerKt.access$log(awaitTaskToRun, queue$okhttp, "finished run in " + TaskLoggerKt.formatDuration(nanoTime));
                        }
                    } catch (Throwable th2) {
                        if (isLoggable) {
                            TaskLoggerKt.access$log(awaitTaskToRun, queue$okhttp, "failed a run in " + TaskLoggerKt.formatDuration(queue$okhttp.getTaskRunner$okhttp().getBackend().nanoTime() - j10));
                        }
                        throw th2;
                    }
                }
            }
        };
    }

    private final void afterRun(Task task, long j10) {
        if (Util.assertionsEnabled && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + this);
        }
        TaskQueue queue$okhttp = task.getQueue$okhttp();
        Intrinsics.checkNotNull(queue$okhttp);
        if (queue$okhttp.getActiveTask$okhttp() == task) {
            boolean cancelActiveTask$okhttp = queue$okhttp.getCancelActiveTask$okhttp();
            queue$okhttp.setCancelActiveTask$okhttp(false);
            queue$okhttp.setActiveTask$okhttp(null);
            this.busyQueues.remove(queue$okhttp);
            if (j10 != -1 && !cancelActiveTask$okhttp && !queue$okhttp.getShutdown$okhttp()) {
                queue$okhttp.scheduleAndDecide$okhttp(task, j10, true);
            }
            if (!queue$okhttp.getFutureTasks$okhttp().isEmpty()) {
                this.readyQueues.add(queue$okhttp);
                return;
            }
            return;
        }
        throw new IllegalStateException("Check failed.");
    }

    private final void beforeRun(Task task) {
        if (Util.assertionsEnabled && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + this);
        }
        task.setNextExecuteNanoTime$okhttp(-1L);
        TaskQueue queue$okhttp = task.getQueue$okhttp();
        Intrinsics.checkNotNull(queue$okhttp);
        queue$okhttp.getFutureTasks$okhttp().remove(task);
        this.readyQueues.remove(queue$okhttp);
        queue$okhttp.setActiveTask$okhttp(task);
        this.busyQueues.add(queue$okhttp);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void runTask(Task task) {
        if (Util.assertionsEnabled && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + this);
        }
        Thread currentThread = Thread.currentThread();
        String name = currentThread.getName();
        currentThread.setName(task.getName());
        try {
            long runOnce = task.runOnce();
            synchronized (this) {
                afterRun(task, runOnce);
                Unit unit = Unit.f60915a;
            }
            currentThread.setName(name);
        } catch (Throwable th2) {
            synchronized (this) {
                afterRun(task, -1L);
                Unit unit2 = Unit.f60915a;
                currentThread.setName(name);
                throw th2;
            }
        }
    }

    @NotNull
    public final List<TaskQueue> activeQueues() {
        List<TaskQueue> K0;
        synchronized (this) {
            K0 = CollectionsKt.K0(this.busyQueues, this.readyQueues);
        }
        return K0;
    }

    @Nullable
    public final Task awaitTaskToRun() {
        boolean z10;
        if (Util.assertionsEnabled && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + this);
        }
        while (!this.readyQueues.isEmpty()) {
            long nanoTime = this.backend.nanoTime();
            Iterator<TaskQueue> it = this.readyQueues.iterator();
            long j10 = Long.MAX_VALUE;
            Task task = null;
            while (true) {
                if (it.hasNext()) {
                    Task task2 = it.next().getFutureTasks$okhttp().get(0);
                    long max = Math.max(0L, task2.getNextExecuteNanoTime$okhttp() - nanoTime);
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
                beforeRun(task);
                if (z10 || (!this.coordinatorWaiting && !this.readyQueues.isEmpty())) {
                    this.backend.execute(this.runnable);
                }
                return task;
            } else if (this.coordinatorWaiting) {
                if (j10 < this.coordinatorWakeUpAt - nanoTime) {
                    this.backend.coordinatorNotify(this);
                }
                return null;
            } else {
                this.coordinatorWaiting = true;
                this.coordinatorWakeUpAt = nanoTime + j10;
                try {
                    try {
                        this.backend.coordinatorWait(this, j10);
                    } catch (InterruptedException unused) {
                        cancelAll();
                    }
                } finally {
                    this.coordinatorWaiting = false;
                }
            }
        }
        return null;
    }

    public final void cancelAll() {
        int size = this.busyQueues.size();
        while (true) {
            size--;
            if (-1 >= size) {
                break;
            }
            this.busyQueues.get(size).cancelAllAndDecide$okhttp();
        }
        for (int size2 = this.readyQueues.size() - 1; -1 < size2; size2--) {
            TaskQueue taskQueue = this.readyQueues.get(size2);
            taskQueue.cancelAllAndDecide$okhttp();
            if (taskQueue.getFutureTasks$okhttp().isEmpty()) {
                this.readyQueues.remove(size2);
            }
        }
    }

    @NotNull
    public final Backend getBackend() {
        return this.backend;
    }

    public final void kickCoordinator$okhttp(@NotNull TaskQueue taskQueue) {
        Intrinsics.checkNotNullParameter(taskQueue, "taskQueue");
        if (Util.assertionsEnabled && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + this);
        }
        if (taskQueue.getActiveTask$okhttp() == null) {
            if (!taskQueue.getFutureTasks$okhttp().isEmpty()) {
                Util.addIfAbsent(this.readyQueues, taskQueue);
            } else {
                this.readyQueues.remove(taskQueue);
            }
        }
        if (this.coordinatorWaiting) {
            this.backend.coordinatorNotify(this);
        } else {
            this.backend.execute(this.runnable);
        }
    }

    @NotNull
    public final TaskQueue newQueue() {
        int i10;
        synchronized (this) {
            i10 = this.nextQueueName;
            this.nextQueueName = i10 + 1;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append('Q');
        sb2.append(i10);
        return new TaskQueue(this, sb2.toString());
    }
}
