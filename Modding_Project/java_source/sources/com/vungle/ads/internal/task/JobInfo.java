package com.vungle.ads.internal.task;

import android.os.Bundle;
import com.vungle.ads.internal.util.Logger;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: JobInfo.kt */
@Metadata
/* loaded from: classes7.dex */
public final class JobInfo implements Cloneable {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String TAG = "JobInfo";
    private long delay;
    @NotNull
    private Bundle extras;
    @NotNull
    private final String jobTag;
    private long nextRescheduleTimeout;
    private int priority;
    private int requiredNetworkType;
    private int reschedulePolicy;
    private long rescheduleTimeout;
    private boolean updateCurrent;

    /* compiled from: JobInfo.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* compiled from: JobInfo.kt */
    @Metadata
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes7.dex */
    public @interface NetworkType {
        public static final int ANY = 0;
        public static final int CONNECTED = 1;
        @NotNull
        public static final Companion Companion = Companion.$$INSTANCE;

        /* compiled from: JobInfo.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            static final /* synthetic */ Companion $$INSTANCE = new Companion();
            public static final int ANY = 0;
            public static final int CONNECTED = 1;

            private Companion() {
            }
        }
    }

    /* compiled from: JobInfo.kt */
    @Metadata
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes7.dex */
    public @interface Priority {
        public static final int CRITICAL = 5;
        @NotNull
        public static final Companion Companion = Companion.$$INSTANCE;
        public static final int HIGH = 3;
        public static final int HIGHEST = 4;
        public static final int LOW = 1;
        public static final int LOWEST = 0;
        public static final int NORMAL = 2;

        /* compiled from: JobInfo.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            static final /* synthetic */ Companion $$INSTANCE = new Companion();
            public static final int CRITICAL = 5;
            public static final int HIGH = 3;
            public static final int HIGHEST = 4;
            public static final int LOW = 1;
            public static final int LOWEST = 0;
            public static final int NORMAL = 2;

            private Companion() {
            }
        }
    }

    /* compiled from: JobInfo.kt */
    @Metadata
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes7.dex */
    public @interface ReschedulePolicy {
        @NotNull
        public static final Companion Companion = Companion.$$INSTANCE;
        public static final int EXPONENTIAL = 1;
        public static final int LINEAR = 0;

        /* compiled from: JobInfo.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            static final /* synthetic */ Companion $$INSTANCE = new Companion();
            public static final int EXPONENTIAL = 1;
            public static final int LINEAR = 0;

            private Companion() {
            }
        }
    }

    public JobInfo(@NotNull String jobTag) {
        Intrinsics.checkNotNullParameter(jobTag, "jobTag");
        this.jobTag = jobTag;
        this.extras = new Bundle();
        this.reschedulePolicy = 1;
        this.priority = 2;
    }

    @NotNull
    public Object clone() {
        return super.clone();
    }

    @Nullable
    public final JobInfo copy() {
        try {
            Object clone = super.clone();
            Intrinsics.checkNotNull(clone, "null cannot be cast to non-null type com.vungle.ads.internal.task.JobInfo");
            return (JobInfo) clone;
        } catch (CloneNotSupportedException e10) {
            Logger.Companion companion = Logger.Companion;
            companion.e(TAG, "Cannot copy JobInfo " + this, e10);
            return null;
        }
    }

    public final long getDelay() {
        return this.delay;
    }

    @NotNull
    public final Bundle getExtras() {
        return this.extras;
    }

    @NotNull
    public final String getJobTag() {
        return this.jobTag;
    }

    public final int getPriority() {
        return this.priority;
    }

    public final int getRequiredNetworkType() {
        return this.requiredNetworkType;
    }

    public final boolean getUpdateCurrent() {
        return this.updateCurrent;
    }

    public final long makeNextRescedule() {
        long j10 = this.rescheduleTimeout;
        if (j10 == 0) {
            return 0L;
        }
        long j11 = this.nextRescheduleTimeout;
        if (j11 == 0) {
            this.nextRescheduleTimeout = j10;
        } else if (this.reschedulePolicy == 1) {
            this.nextRescheduleTimeout = j11 * 2;
        }
        return this.nextRescheduleTimeout;
    }

    @NotNull
    public final JobInfo setDelay(long j10) {
        this.delay = j10;
        return this;
    }

    @NotNull
    public final JobInfo setExtras(@NotNull Bundle extras) {
        Intrinsics.checkNotNullParameter(extras, "extras");
        this.extras = extras;
        return this;
    }

    @NotNull
    public final JobInfo setPriority(int i10) {
        this.priority = i10;
        return this;
    }

    @NotNull
    public final JobInfo setRequiredNetworkType(@NetworkType int i10) {
        this.requiredNetworkType = i10;
        return this;
    }

    @NotNull
    public final JobInfo setReschedulePolicy(long j10, int i10) {
        this.rescheduleTimeout = j10;
        this.reschedulePolicy = i10;
        return this;
    }

    @NotNull
    public final JobInfo setUpdateCurrent(boolean z10) {
        this.updateCurrent = z10;
        return this;
    }

    public static /* synthetic */ void getPriority$annotations() {
    }

    @NetworkType
    public static /* synthetic */ void getRequiredNetworkType$annotations() {
    }

    private static /* synthetic */ void getReschedulePolicy$annotations() {
    }
}
