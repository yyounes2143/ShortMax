package androidx.work.impl.model;

import androidx.annotation.IntRange;
import androidx.annotation.RestrictTo;
import androidx.arch.core.util.Function;
import androidx.room.ColumnInfo;
import androidx.room.Embedded;
import androidx.room.Entity;
import androidx.room.Index;
import androidx.room.PrimaryKey;
import androidx.room.Relation;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.Logger;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.PeriodicWorkRequest;
import androidx.work.WorkInfo;
import androidx.work.WorkRequest;
import com.mbridge.msdk.MBridgeConstans;
import com.ss.ttvideoengine.ITTVideoEngineEventSource;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: WorkSpec.kt */
@Entity(indices = {@Index({"schedule_requested_at"}), @Index({"last_enqueue_time"})})
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public final class WorkSpec {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final long SCHEDULE_NOT_REQUESTED_YET = -1;
    @NotNull
    private static final String TAG;
    @NotNull
    public static final Function<List<WorkInfoPojo>, List<WorkInfo>> WORK_INFO_MAPPER;
    @ColumnInfo(name = "backoff_delay_duration")
    public long backoffDelayDuration;
    @ColumnInfo(name = "backoff_policy")
    @NotNull
    public BackoffPolicy backoffPolicy;
    @Embedded
    @NotNull
    public Constraints constraints;
    @ColumnInfo(name = "run_in_foreground")
    public boolean expedited;
    @ColumnInfo(name = "flex_duration")
    public long flexDuration;
    @ColumnInfo(defaultValue = MBridgeConstans.ENDCARD_URL_TYPE_PL)
    private final int generation;
    @PrimaryKey
    @ColumnInfo(name = "id")
    @NotNull

    /* renamed from: id  reason: collision with root package name */
    public final String f1724id;
    @ColumnInfo(name = "initial_delay")
    public long initialDelay;
    @ColumnInfo(name = "input")
    @NotNull
    public Data input;
    @ColumnInfo(name = "input_merger_class_name")
    @Nullable
    public String inputMergerClassName;
    @ColumnInfo(name = "interval_duration")
    public long intervalDuration;
    @ColumnInfo(name = "last_enqueue_time")
    public long lastEnqueueTime;
    @ColumnInfo(name = "minimum_retention_duration")
    public long minimumRetentionDuration;
    @ColumnInfo(name = "out_of_quota_policy")
    @NotNull
    public OutOfQuotaPolicy outOfQuotaPolicy;
    @ColumnInfo(name = "output")
    @NotNull
    public Data output;
    @ColumnInfo(defaultValue = MBridgeConstans.ENDCARD_URL_TYPE_PL, name = "period_count")
    private int periodCount;
    @ColumnInfo(name = "run_attempt_count")
    public int runAttemptCount;
    @ColumnInfo(name = "schedule_requested_at")
    public long scheduleRequestedAt;
    @ColumnInfo(name = "state")
    @NotNull
    public WorkInfo.State state;
    @ColumnInfo(name = "worker_class_name")
    @NotNull
    public String workerClassName;

    /* compiled from: WorkSpec.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* compiled from: WorkSpec.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class IdAndState {
        @ColumnInfo(name = "id")
        @NotNull

        /* renamed from: id  reason: collision with root package name */
        public String f1725id;
        @ColumnInfo(name = "state")
        @NotNull
        public WorkInfo.State state;

        public IdAndState(@NotNull String id2, @NotNull WorkInfo.State state) {
            Intrinsics.checkNotNullParameter(id2, "id");
            Intrinsics.checkNotNullParameter(state, "state");
            this.f1725id = id2;
            this.state = state;
        }

        public static /* synthetic */ IdAndState copy$default(IdAndState idAndState, String str, WorkInfo.State state, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                str = idAndState.f1725id;
            }
            if ((i10 & 2) != 0) {
                state = idAndState.state;
            }
            return idAndState.copy(str, state);
        }

        @NotNull
        public final String component1() {
            return this.f1725id;
        }

        @NotNull
        public final WorkInfo.State component2() {
            return this.state;
        }

        @NotNull
        public final IdAndState copy(@NotNull String id2, @NotNull WorkInfo.State state) {
            Intrinsics.checkNotNullParameter(id2, "id");
            Intrinsics.checkNotNullParameter(state, "state");
            return new IdAndState(id2, state);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof IdAndState)) {
                return false;
            }
            IdAndState idAndState = (IdAndState) obj;
            if (Intrinsics.areEqual(this.f1725id, idAndState.f1725id) && this.state == idAndState.state) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (this.f1725id.hashCode() * 31) + this.state.hashCode();
        }

        @NotNull
        public String toString() {
            return "IdAndState(id=" + this.f1725id + ", state=" + this.state + ')';
        }
    }

    /* compiled from: WorkSpec.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class WorkInfoPojo {
        @ColumnInfo(name = "generation")
        private final int generation;
        @ColumnInfo(name = "id")
        @NotNull

        /* renamed from: id  reason: collision with root package name */
        private String f1726id;
        @ColumnInfo(name = "output")
        @NotNull
        private Data output;
        @Relation(entity = WorkProgress.class, entityColumn = "work_spec_id", parentColumn = "id", projection = {"progress"})
        @NotNull
        private List<Data> progress;
        @ColumnInfo(name = "run_attempt_count")
        private int runAttemptCount;
        @ColumnInfo(name = "state")
        @NotNull
        private WorkInfo.State state;
        @Relation(entity = WorkTag.class, entityColumn = "work_spec_id", parentColumn = "id", projection = {ITTVideoEngineEventSource.KEY_TAG})
        @NotNull
        private List<String> tags;

        public WorkInfoPojo(@NotNull String id2, @NotNull WorkInfo.State state, @NotNull Data output, int i10, int i11, @NotNull List<String> tags, @NotNull List<Data> progress) {
            Intrinsics.checkNotNullParameter(id2, "id");
            Intrinsics.checkNotNullParameter(state, "state");
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(tags, "tags");
            Intrinsics.checkNotNullParameter(progress, "progress");
            this.f1726id = id2;
            this.state = state;
            this.output = output;
            this.runAttemptCount = i10;
            this.generation = i11;
            this.tags = tags;
            this.progress = progress;
        }

        public static /* synthetic */ WorkInfoPojo copy$default(WorkInfoPojo workInfoPojo, String str, WorkInfo.State state, Data data, int i10, int i11, List list, List list2, int i12, Object obj) {
            if ((i12 & 1) != 0) {
                str = workInfoPojo.f1726id;
            }
            if ((i12 & 2) != 0) {
                state = workInfoPojo.state;
            }
            WorkInfo.State state2 = state;
            if ((i12 & 4) != 0) {
                data = workInfoPojo.output;
            }
            Data data2 = data;
            if ((i12 & 8) != 0) {
                i10 = workInfoPojo.runAttemptCount;
            }
            int i13 = i10;
            if ((i12 & 16) != 0) {
                i11 = workInfoPojo.generation;
            }
            int i14 = i11;
            List<String> list3 = list;
            if ((i12 & 32) != 0) {
                list3 = workInfoPojo.tags;
            }
            List list4 = list3;
            List<Data> list5 = list2;
            if ((i12 & 64) != 0) {
                list5 = workInfoPojo.progress;
            }
            return workInfoPojo.copy(str, state2, data2, i13, i14, list4, list5);
        }

        @NotNull
        public final String component1() {
            return this.f1726id;
        }

        @NotNull
        public final WorkInfo.State component2() {
            return this.state;
        }

        @NotNull
        public final Data component3() {
            return this.output;
        }

        public final int component4() {
            return this.runAttemptCount;
        }

        public final int component5() {
            return this.generation;
        }

        @NotNull
        public final List<String> component6() {
            return this.tags;
        }

        @NotNull
        public final List<Data> component7() {
            return this.progress;
        }

        @NotNull
        public final WorkInfoPojo copy(@NotNull String id2, @NotNull WorkInfo.State state, @NotNull Data output, int i10, int i11, @NotNull List<String> tags, @NotNull List<Data> progress) {
            Intrinsics.checkNotNullParameter(id2, "id");
            Intrinsics.checkNotNullParameter(state, "state");
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(tags, "tags");
            Intrinsics.checkNotNullParameter(progress, "progress");
            return new WorkInfoPojo(id2, state, output, i10, i11, tags, progress);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof WorkInfoPojo)) {
                return false;
            }
            WorkInfoPojo workInfoPojo = (WorkInfoPojo) obj;
            if (Intrinsics.areEqual(this.f1726id, workInfoPojo.f1726id) && this.state == workInfoPojo.state && Intrinsics.areEqual(this.output, workInfoPojo.output) && this.runAttemptCount == workInfoPojo.runAttemptCount && this.generation == workInfoPojo.generation && Intrinsics.areEqual(this.tags, workInfoPojo.tags) && Intrinsics.areEqual(this.progress, workInfoPojo.progress)) {
                return true;
            }
            return false;
        }

        public final int getGeneration() {
            return this.generation;
        }

        @NotNull
        public final String getId() {
            return this.f1726id;
        }

        @NotNull
        public final Data getOutput() {
            return this.output;
        }

        @NotNull
        public final List<Data> getProgress() {
            return this.progress;
        }

        public final int getRunAttemptCount() {
            return this.runAttemptCount;
        }

        @NotNull
        public final WorkInfo.State getState() {
            return this.state;
        }

        @NotNull
        public final List<String> getTags() {
            return this.tags;
        }

        public int hashCode() {
            return (((((((((((this.f1726id.hashCode() * 31) + this.state.hashCode()) * 31) + this.output.hashCode()) * 31) + Integer.hashCode(this.runAttemptCount)) * 31) + Integer.hashCode(this.generation)) * 31) + this.tags.hashCode()) * 31) + this.progress.hashCode();
        }

        public final void setId(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.f1726id = str;
        }

        public final void setOutput(@NotNull Data data) {
            Intrinsics.checkNotNullParameter(data, "<set-?>");
            this.output = data;
        }

        public final void setProgress(@NotNull List<Data> list) {
            Intrinsics.checkNotNullParameter(list, "<set-?>");
            this.progress = list;
        }

        public final void setRunAttemptCount(int i10) {
            this.runAttemptCount = i10;
        }

        public final void setState(@NotNull WorkInfo.State state) {
            Intrinsics.checkNotNullParameter(state, "<set-?>");
            this.state = state;
        }

        public final void setTags(@NotNull List<String> list) {
            Intrinsics.checkNotNullParameter(list, "<set-?>");
            this.tags = list;
        }

        @NotNull
        public String toString() {
            return "WorkInfoPojo(id=" + this.f1726id + ", state=" + this.state + ", output=" + this.output + ", runAttemptCount=" + this.runAttemptCount + ", generation=" + this.generation + ", tags=" + this.tags + ", progress=" + this.progress + ')';
        }

        @NotNull
        public final WorkInfo toWorkInfo() {
            Data data;
            if (!this.progress.isEmpty()) {
                data = this.progress.get(0);
            } else {
                data = Data.EMPTY;
            }
            return new WorkInfo(UUID.fromString(this.f1726id), this.state, this.output, this.tags, data, this.runAttemptCount, this.generation);
        }
    }

    static {
        String tagWithPrefix = Logger.tagWithPrefix("WorkSpec");
        Intrinsics.checkNotNullExpressionValue(tagWithPrefix, "tagWithPrefix(\"WorkSpec\")");
        TAG = tagWithPrefix;
        WORK_INFO_MAPPER = new Function() { // from class: androidx.work.impl.model.a
            @Override // androidx.arch.core.util.Function
            public final Object apply(Object obj) {
                List WORK_INFO_MAPPER$lambda$1;
                WORK_INFO_MAPPER$lambda$1 = WorkSpec.WORK_INFO_MAPPER$lambda$1((List) obj);
                return WORK_INFO_MAPPER$lambda$1;
            }
        };
    }

    public WorkSpec(@NotNull String id2, @NotNull WorkInfo.State state, @NotNull String workerClassName, @Nullable String str, @NotNull Data input, @NotNull Data output, long j10, long j11, long j12, @NotNull Constraints constraints, @IntRange(from = 0) int i10, @NotNull BackoffPolicy backoffPolicy, long j13, long j14, long j15, long j16, boolean z10, @NotNull OutOfQuotaPolicy outOfQuotaPolicy, int i11, int i12) {
        Intrinsics.checkNotNullParameter(id2, "id");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(workerClassName, "workerClassName");
        Intrinsics.checkNotNullParameter(input, "input");
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(constraints, "constraints");
        Intrinsics.checkNotNullParameter(backoffPolicy, "backoffPolicy");
        Intrinsics.checkNotNullParameter(outOfQuotaPolicy, "outOfQuotaPolicy");
        this.f1724id = id2;
        this.state = state;
        this.workerClassName = workerClassName;
        this.inputMergerClassName = str;
        this.input = input;
        this.output = output;
        this.initialDelay = j10;
        this.intervalDuration = j11;
        this.flexDuration = j12;
        this.constraints = constraints;
        this.runAttemptCount = i10;
        this.backoffPolicy = backoffPolicy;
        this.backoffDelayDuration = j13;
        this.lastEnqueueTime = j14;
        this.minimumRetentionDuration = j15;
        this.scheduleRequestedAt = j16;
        this.expedited = z10;
        this.outOfQuotaPolicy = outOfQuotaPolicy;
        this.periodCount = i11;
        this.generation = i12;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List WORK_INFO_MAPPER$lambda$1(List list) {
        if (list != null) {
            List<WorkInfoPojo> list2 = list;
            ArrayList arrayList = new ArrayList(CollectionsKt.z(list2, 10));
            for (WorkInfoPojo workInfoPojo : list2) {
                arrayList.add(workInfoPojo.toWorkInfo());
            }
            return arrayList;
        }
        return null;
    }

    public final long calculateNextRunTime() {
        long scalb;
        if (isBackedOff()) {
            if (this.backoffPolicy == BackoffPolicy.LINEAR) {
                scalb = this.backoffDelayDuration * this.runAttemptCount;
            } else {
                scalb = Math.scalb((float) this.backoffDelayDuration, this.runAttemptCount - 1);
            }
            return this.lastEnqueueTime + e.k(scalb, WorkRequest.MAX_BACKOFF_MILLIS);
        }
        long j10 = 0;
        if (isPeriodic()) {
            int i10 = this.periodCount;
            long j11 = this.lastEnqueueTime;
            if (i10 == 0) {
                j11 += this.initialDelay;
            }
            long j12 = this.flexDuration;
            long j13 = this.intervalDuration;
            if (j12 != j13) {
                if (i10 == 0) {
                    j10 = (-1) * j12;
                }
                j11 += j13;
            } else if (i10 != 0) {
                j10 = j13;
            }
            return j11 + j10;
        }
        long j14 = this.lastEnqueueTime;
        if (j14 == 0) {
            j14 = System.currentTimeMillis();
        }
        return j14 + this.initialDelay;
    }

    @NotNull
    public final String component1() {
        return this.f1724id;
    }

    @NotNull
    public final Constraints component10() {
        return this.constraints;
    }

    public final int component11() {
        return this.runAttemptCount;
    }

    @NotNull
    public final BackoffPolicy component12() {
        return this.backoffPolicy;
    }

    public final long component13() {
        return this.backoffDelayDuration;
    }

    public final long component14() {
        return this.lastEnqueueTime;
    }

    public final long component15() {
        return this.minimumRetentionDuration;
    }

    public final long component16() {
        return this.scheduleRequestedAt;
    }

    public final boolean component17() {
        return this.expedited;
    }

    @NotNull
    public final OutOfQuotaPolicy component18() {
        return this.outOfQuotaPolicy;
    }

    public final int component19() {
        return this.periodCount;
    }

    @NotNull
    public final WorkInfo.State component2() {
        return this.state;
    }

    public final int component20() {
        return this.generation;
    }

    @NotNull
    public final String component3() {
        return this.workerClassName;
    }

    @Nullable
    public final String component4() {
        return this.inputMergerClassName;
    }

    @NotNull
    public final Data component5() {
        return this.input;
    }

    @NotNull
    public final Data component6() {
        return this.output;
    }

    public final long component7() {
        return this.initialDelay;
    }

    public final long component8() {
        return this.intervalDuration;
    }

    public final long component9() {
        return this.flexDuration;
    }

    @NotNull
    public final WorkSpec copy(@NotNull String id2, @NotNull WorkInfo.State state, @NotNull String workerClassName, @Nullable String str, @NotNull Data input, @NotNull Data output, long j10, long j11, long j12, @NotNull Constraints constraints, @IntRange(from = 0) int i10, @NotNull BackoffPolicy backoffPolicy, long j13, long j14, long j15, long j16, boolean z10, @NotNull OutOfQuotaPolicy outOfQuotaPolicy, int i11, int i12) {
        Intrinsics.checkNotNullParameter(id2, "id");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(workerClassName, "workerClassName");
        Intrinsics.checkNotNullParameter(input, "input");
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(constraints, "constraints");
        Intrinsics.checkNotNullParameter(backoffPolicy, "backoffPolicy");
        Intrinsics.checkNotNullParameter(outOfQuotaPolicy, "outOfQuotaPolicy");
        return new WorkSpec(id2, state, workerClassName, str, input, output, j10, j11, j12, constraints, i10, backoffPolicy, j13, j14, j15, j16, z10, outOfQuotaPolicy, i11, i12);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WorkSpec)) {
            return false;
        }
        WorkSpec workSpec = (WorkSpec) obj;
        if (Intrinsics.areEqual(this.f1724id, workSpec.f1724id) && this.state == workSpec.state && Intrinsics.areEqual(this.workerClassName, workSpec.workerClassName) && Intrinsics.areEqual(this.inputMergerClassName, workSpec.inputMergerClassName) && Intrinsics.areEqual(this.input, workSpec.input) && Intrinsics.areEqual(this.output, workSpec.output) && this.initialDelay == workSpec.initialDelay && this.intervalDuration == workSpec.intervalDuration && this.flexDuration == workSpec.flexDuration && Intrinsics.areEqual(this.constraints, workSpec.constraints) && this.runAttemptCount == workSpec.runAttemptCount && this.backoffPolicy == workSpec.backoffPolicy && this.backoffDelayDuration == workSpec.backoffDelayDuration && this.lastEnqueueTime == workSpec.lastEnqueueTime && this.minimumRetentionDuration == workSpec.minimumRetentionDuration && this.scheduleRequestedAt == workSpec.scheduleRequestedAt && this.expedited == workSpec.expedited && this.outOfQuotaPolicy == workSpec.outOfQuotaPolicy && this.periodCount == workSpec.periodCount && this.generation == workSpec.generation) {
            return true;
        }
        return false;
    }

    public final int getGeneration() {
        return this.generation;
    }

    public final int getPeriodCount() {
        return this.periodCount;
    }

    public final boolean hasConstraints() {
        return !Intrinsics.areEqual(Constraints.NONE, this.constraints);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode;
        int hashCode2 = ((((this.f1724id.hashCode() * 31) + this.state.hashCode()) * 31) + this.workerClassName.hashCode()) * 31;
        String str = this.inputMergerClassName;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int hashCode3 = (((((((((((((((((((((((((hashCode2 + hashCode) * 31) + this.input.hashCode()) * 31) + this.output.hashCode()) * 31) + Long.hashCode(this.initialDelay)) * 31) + Long.hashCode(this.intervalDuration)) * 31) + Long.hashCode(this.flexDuration)) * 31) + this.constraints.hashCode()) * 31) + Integer.hashCode(this.runAttemptCount)) * 31) + this.backoffPolicy.hashCode()) * 31) + Long.hashCode(this.backoffDelayDuration)) * 31) + Long.hashCode(this.lastEnqueueTime)) * 31) + Long.hashCode(this.minimumRetentionDuration)) * 31) + Long.hashCode(this.scheduleRequestedAt)) * 31;
        boolean z10 = this.expedited;
        int i10 = z10;
        if (z10 != 0) {
            i10 = 1;
        }
        return ((((((hashCode3 + i10) * 31) + this.outOfQuotaPolicy.hashCode()) * 31) + Integer.hashCode(this.periodCount)) * 31) + Integer.hashCode(this.generation);
    }

    public final boolean isBackedOff() {
        if (this.state == WorkInfo.State.ENQUEUED && this.runAttemptCount > 0) {
            return true;
        }
        return false;
    }

    public final boolean isPeriodic() {
        if (this.intervalDuration != 0) {
            return true;
        }
        return false;
    }

    public final void setBackoffDelayDuration(long j10) {
        if (j10 > WorkRequest.MAX_BACKOFF_MILLIS) {
            Logger.get().warning(TAG, "Backoff delay duration exceeds maximum value");
        }
        if (j10 < 10000) {
            Logger.get().warning(TAG, "Backoff delay duration less than minimum value");
        }
        this.backoffDelayDuration = e.p(j10, 10000L, WorkRequest.MAX_BACKOFF_MILLIS);
    }

    public final void setPeriodCount(int i10) {
        this.periodCount = i10;
    }

    public final void setPeriodic(long j10) {
        if (j10 < PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS) {
            Logger.get().warning(TAG, "Interval duration lesser than minimum allowed value; Changed to 900000");
        }
        setPeriodic(e.f(j10, PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS), e.f(j10, PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS));
    }

    @NotNull
    public String toString() {
        return "{WorkSpec: " + this.f1724id + '}';
    }

    public final void setPeriodic(long j10, long j11) {
        if (j10 < PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS) {
            Logger.get().warning(TAG, "Interval duration lesser than minimum allowed value; Changed to 900000");
        }
        this.intervalDuration = e.f(j10, PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS);
        if (j11 < PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS) {
            Logger.get().warning(TAG, "Flex duration lesser than minimum allowed value; Changed to 300000");
        }
        if (j11 > this.intervalDuration) {
            Logger logger = Logger.get();
            String str = TAG;
            logger.warning(str, "Flex duration greater than interval duration; Changed to " + j10);
        }
        this.flexDuration = e.p(j11, PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS, this.intervalDuration);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ WorkSpec(java.lang.String r31, androidx.work.WorkInfo.State r32, java.lang.String r33, java.lang.String r34, androidx.work.Data r35, androidx.work.Data r36, long r37, long r39, long r41, androidx.work.Constraints r43, int r44, androidx.work.BackoffPolicy r45, long r46, long r48, long r50, long r52, boolean r54, androidx.work.OutOfQuotaPolicy r55, int r56, int r57, int r58, kotlin.jvm.internal.DefaultConstructorMarker r59) {
        /*
            Method dump skipped, instructions count: 198
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.model.WorkSpec.<init>(java.lang.String, androidx.work.WorkInfo$State, java.lang.String, java.lang.String, androidx.work.Data, androidx.work.Data, long, long, long, androidx.work.Constraints, int, androidx.work.BackoffPolicy, long, long, long, long, boolean, androidx.work.OutOfQuotaPolicy, int, int, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WorkSpec(@NotNull String id2, @NotNull String workerClassName_) {
        this(id2, null, workerClassName_, null, null, null, 0L, 0L, 0L, null, 0, null, 0L, 0L, 0L, 0L, false, null, 0, 0, 1048570, null);
        Intrinsics.checkNotNullParameter(id2, "id");
        Intrinsics.checkNotNullParameter(workerClassName_, "workerClassName_");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WorkSpec(@NotNull String newId, @NotNull WorkSpec other) {
        this(newId, other.state, other.workerClassName, other.inputMergerClassName, new Data(other.input), new Data(other.output), other.initialDelay, other.intervalDuration, other.flexDuration, new Constraints(other.constraints), other.runAttemptCount, other.backoffPolicy, other.backoffDelayDuration, other.lastEnqueueTime, other.minimumRetentionDuration, other.scheduleRequestedAt, other.expedited, other.outOfQuotaPolicy, other.periodCount, 0, 524288, null);
        Intrinsics.checkNotNullParameter(newId, "newId");
        Intrinsics.checkNotNullParameter(other, "other");
    }
}
