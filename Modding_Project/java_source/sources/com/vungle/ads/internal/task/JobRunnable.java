package com.vungle.ads.internal.task;

import android.os.Bundle;
import android.os.Process;
import com.vungle.ads.internal.util.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: JobRunnable.kt */
@Metadata
/* loaded from: classes7.dex */
public final class JobRunnable extends PriorityRunnable {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final String TAG = JobRunnable.class.getSimpleName();
    @NotNull
    private final JobCreator creator;
    @NotNull
    private final JobRunner jobRunner;
    @NotNull
    private final JobInfo jobinfo;
    @Nullable
    private final ThreadPriorityHelper threadPriorityHelper;

    /* compiled from: JobRunnable.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public JobRunnable(@NotNull JobInfo jobinfo, @NotNull JobCreator creator, @NotNull JobRunner jobRunner, @Nullable ThreadPriorityHelper threadPriorityHelper) {
        Intrinsics.checkNotNullParameter(jobinfo, "jobinfo");
        Intrinsics.checkNotNullParameter(creator, "creator");
        Intrinsics.checkNotNullParameter(jobRunner, "jobRunner");
        this.jobinfo = jobinfo;
        this.creator = creator;
        this.jobRunner = jobRunner;
        this.threadPriorityHelper = threadPriorityHelper;
    }

    @Override // com.vungle.ads.internal.task.PriorityRunnable
    public int getPriority() {
        return this.jobinfo.getPriority();
    }

    @Override // java.lang.Runnable
    public void run() {
        ThreadPriorityHelper threadPriorityHelper = this.threadPriorityHelper;
        if (threadPriorityHelper != null) {
            try {
                int makeAndroidThreadPriority = threadPriorityHelper.makeAndroidThreadPriority(this.jobinfo);
                Process.setThreadPriority(makeAndroidThreadPriority);
                Logger.Companion companion = Logger.Companion;
                String TAG2 = TAG;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                companion.d(TAG2, "Setting process thread prio = " + makeAndroidThreadPriority + " for " + this.jobinfo.getJobTag());
            } catch (Throwable unused) {
                Logger.Companion companion2 = Logger.Companion;
                String TAG3 = TAG;
                Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                companion2.e(TAG3, "Error on setting process thread priority");
            }
        }
        try {
            String jobTag = this.jobinfo.getJobTag();
            Bundle extras = this.jobinfo.getExtras();
            Logger.Companion companion3 = Logger.Companion;
            String TAG4 = TAG;
            Intrinsics.checkNotNullExpressionValue(TAG4, "TAG");
            companion3.d(TAG4, "Start job " + jobTag + "Thread " + Thread.currentThread().getName());
            int onRunJob = this.creator.create(jobTag).onRunJob(extras, this.jobRunner);
            Intrinsics.checkNotNullExpressionValue(TAG4, "TAG");
            companion3.d(TAG4, "On job finished " + jobTag + " with result " + onRunJob);
            if (onRunJob == 2) {
                long makeNextRescedule = this.jobinfo.makeNextRescedule();
                if (makeNextRescedule > 0) {
                    this.jobinfo.setDelay(makeNextRescedule);
                    this.jobRunner.execute(this.jobinfo);
                    Intrinsics.checkNotNullExpressionValue(TAG4, "TAG");
                    companion3.d(TAG4, "Rescheduling " + jobTag + " in " + makeNextRescedule);
                }
            }
        } catch (Exception e10) {
            Logger.Companion companion4 = Logger.Companion;
            String TAG5 = TAG;
            Intrinsics.checkNotNullExpressionValue(TAG5, "TAG");
            companion4.e(TAG5, "Cannot create job" + e10.getLocalizedMessage());
        }
    }

    public static /* synthetic */ void getPriority$annotations() {
    }
}
