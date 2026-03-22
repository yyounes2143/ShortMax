package androidx.work.impl.utils;

import android.os.Build;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.impl.Scheduler;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.workers.ConstraintTrackingWorker;
import androidx.work.impl.workers.ConstraintTrackingWorkerKt;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: EnqueueUtils.kt */
@Metadata
/* loaded from: classes2.dex */
public final class EnqueueUtilsKt {
    @NotNull
    public static final WorkSpec tryDelegateConstrainedWorkSpec(@NotNull WorkSpec workSpec) {
        WorkSpec copy;
        Intrinsics.checkNotNullParameter(workSpec, "workSpec");
        Constraints constraints = workSpec.constraints;
        String str = workSpec.workerClassName;
        if (Intrinsics.areEqual(str, ConstraintTrackingWorker.class.getName())) {
            return workSpec;
        }
        if (!constraints.requiresBatteryNotLow() && !constraints.requiresStorageNotLow()) {
            return workSpec;
        }
        Data build = new Data.Builder().putAll(workSpec.input).putString(ConstraintTrackingWorkerKt.ARGUMENT_CLASS_NAME, str).build();
        Intrinsics.checkNotNullExpressionValue(build, "Builder().putAll(workSpe…ame)\n            .build()");
        String name = ConstraintTrackingWorker.class.getName();
        Intrinsics.checkNotNullExpressionValue(name, "name");
        copy = workSpec.copy((r45 & 1) != 0 ? workSpec.f1724id : null, (r45 & 2) != 0 ? workSpec.state : null, (r45 & 4) != 0 ? workSpec.workerClassName : name, (r45 & 8) != 0 ? workSpec.inputMergerClassName : null, (r45 & 16) != 0 ? workSpec.input : build, (r45 & 32) != 0 ? workSpec.output : null, (r45 & 64) != 0 ? workSpec.initialDelay : 0L, (r45 & 128) != 0 ? workSpec.intervalDuration : 0L, (r45 & 256) != 0 ? workSpec.flexDuration : 0L, (r45 & 512) != 0 ? workSpec.constraints : null, (r45 & 1024) != 0 ? workSpec.runAttemptCount : 0, (r45 & 2048) != 0 ? workSpec.backoffPolicy : null, (r45 & 4096) != 0 ? workSpec.backoffDelayDuration : 0L, (r45 & 8192) != 0 ? workSpec.lastEnqueueTime : 0L, (r45 & 16384) != 0 ? workSpec.minimumRetentionDuration : 0L, (r45 & 32768) != 0 ? workSpec.scheduleRequestedAt : 0L, (r45 & 65536) != 0 ? workSpec.expedited : false, (131072 & r45) != 0 ? workSpec.outOfQuotaPolicy : null, (r45 & 262144) != 0 ? workSpec.periodCount : 0, (r45 & 524288) != 0 ? workSpec.generation : 0);
        return copy;
    }

    private static final boolean usesScheduler(List<? extends Scheduler> list, String str) {
        try {
            Class<?> cls = Class.forName(str);
            List<? extends Scheduler> list2 = list;
            if ((list2 instanceof Collection) && list2.isEmpty()) {
                return false;
            }
            for (Scheduler scheduler : list2) {
                if (cls.isAssignableFrom(scheduler.getClass())) {
                    return true;
                }
            }
            return false;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    @NotNull
    public static final WorkSpec wrapInConstraintTrackingWorkerIfNeeded(@NotNull List<? extends Scheduler> schedulers, @NotNull WorkSpec workSpec) {
        Intrinsics.checkNotNullParameter(schedulers, "schedulers");
        Intrinsics.checkNotNullParameter(workSpec, "workSpec");
        if (Build.VERSION.SDK_INT < 26) {
            return tryDelegateConstrainedWorkSpec(workSpec);
        }
        return workSpec;
    }
}
