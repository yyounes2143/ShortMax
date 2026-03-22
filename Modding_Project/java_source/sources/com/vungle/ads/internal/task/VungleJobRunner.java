package com.vungle.ads.internal.task;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import androidx.annotation.VisibleForTesting;
import com.vungle.ads.internal.util.Logger;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: VungleJobRunner.kt */
@Metadata
/* loaded from: classes7.dex */
public final class VungleJobRunner implements JobRunner {
    @NotNull
    private final JobCreator creator;
    @NotNull
    private final Executor executor;
    private long nextCheck;
    @NotNull
    private final List<PendingJob> pendingJobs;
    @NotNull
    private final Runnable pendingRunnable;
    @Nullable
    private final ThreadPriorityHelper threadPriorityHelper;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final Handler handler = new Handler(Looper.getMainLooper());
    private static final String TAG = VungleJobRunner.class.getSimpleName();

    /* compiled from: VungleJobRunner.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: VungleJobRunner.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class PendingJob {
        @Nullable
        private JobInfo info;
        private final long uptimeMillis;

        public PendingJob(long j10, @Nullable JobInfo jobInfo) {
            this.uptimeMillis = j10;
            this.info = jobInfo;
        }

        @Nullable
        public final JobInfo getInfo() {
            return this.info;
        }

        public final long getUptimeMillis() {
            return this.uptimeMillis;
        }

        public final void setInfo(@Nullable JobInfo jobInfo) {
            this.info = jobInfo;
        }
    }

    /* compiled from: VungleJobRunner.kt */
    @Metadata
    /* loaded from: classes7.dex */
    private static final class PendingRunnable implements Runnable {
        @NotNull
        private WeakReference<VungleJobRunner> runner;

        public PendingRunnable(@NotNull WeakReference<VungleJobRunner> runner) {
            Intrinsics.checkNotNullParameter(runner, "runner");
            this.runner = runner;
        }

        @NotNull
        public final WeakReference<VungleJobRunner> getRunner() {
            return this.runner;
        }

        @Override // java.lang.Runnable
        public void run() {
            VungleJobRunner vungleJobRunner = this.runner.get();
            if (vungleJobRunner != null) {
                vungleJobRunner.executePendingJobs();
            }
        }

        public final void setRunner(@NotNull WeakReference<VungleJobRunner> weakReference) {
            Intrinsics.checkNotNullParameter(weakReference, "<set-?>");
            this.runner = weakReference;
        }
    }

    public VungleJobRunner(@NotNull JobCreator creator, @NotNull Executor executor, @Nullable ThreadPriorityHelper threadPriorityHelper) {
        Intrinsics.checkNotNullParameter(creator, "creator");
        Intrinsics.checkNotNullParameter(executor, "executor");
        this.creator = creator;
        this.executor = executor;
        this.threadPriorityHelper = threadPriorityHelper;
        this.nextCheck = Long.MAX_VALUE;
        this.pendingJobs = new CopyOnWriteArrayList();
        this.pendingRunnable = new PendingRunnable(new WeakReference(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void executePendingJobs() {
        try {
            long uptimeMillis = SystemClock.uptimeMillis();
            long j10 = Long.MAX_VALUE;
            for (PendingJob pendingJob : this.pendingJobs) {
                if (uptimeMillis >= pendingJob.getUptimeMillis()) {
                    this.pendingJobs.remove(pendingJob);
                    JobInfo info = pendingJob.getInfo();
                    if (info != null) {
                        this.executor.execute(new JobRunnable(info, this.creator, this, this.threadPriorityHelper));
                    }
                } else {
                    j10 = Math.min(j10, pendingJob.getUptimeMillis());
                }
            }
            if (j10 != Long.MAX_VALUE && j10 != this.nextCheck) {
                Handler handler2 = handler;
                handler2.removeCallbacks(this.pendingRunnable);
                handler2.postAtTime(this.pendingRunnable, TAG, j10);
            }
            this.nextCheck = j10;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // com.vungle.ads.internal.task.JobRunner
    public synchronized void cancelPendingJob(@NotNull String tag) {
        String str;
        try {
            Intrinsics.checkNotNullParameter(tag, "tag");
            ArrayList arrayList = new ArrayList();
            for (PendingJob pendingJob : this.pendingJobs) {
                JobInfo info = pendingJob.getInfo();
                if (info != null) {
                    str = info.getJobTag();
                } else {
                    str = null;
                }
                if (Intrinsics.areEqual(str, tag)) {
                    arrayList.add(pendingJob);
                }
            }
            this.pendingJobs.removeAll(arrayList);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // com.vungle.ads.internal.task.JobRunner
    public synchronized void execute(@NotNull JobInfo jobInfo) {
        String str;
        try {
            Intrinsics.checkNotNullParameter(jobInfo, "jobInfo");
            JobInfo copy = jobInfo.copy();
            if (copy != null) {
                String jobTag = copy.getJobTag();
                long delay = copy.getDelay();
                copy.setDelay(0L);
                if (copy.getUpdateCurrent()) {
                    for (PendingJob pendingJob : this.pendingJobs) {
                        JobInfo info = pendingJob.getInfo();
                        if (info != null) {
                            str = info.getJobTag();
                        } else {
                            str = null;
                        }
                        if (Intrinsics.areEqual(str, jobTag)) {
                            Logger.Companion companion = Logger.Companion;
                            String TAG2 = TAG;
                            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                            companion.d(TAG2, "replacing pending job with new " + jobTag);
                            this.pendingJobs.remove(pendingJob);
                        }
                    }
                }
                this.pendingJobs.add(new PendingJob(SystemClock.uptimeMillis() + delay, copy));
                executePendingJobs();
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @VisibleForTesting
    public final int getPendingJobSize$vungle_ads_release() {
        return this.pendingJobs.size();
    }
}
