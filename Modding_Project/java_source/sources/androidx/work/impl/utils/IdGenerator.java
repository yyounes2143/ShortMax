package androidx.work.impl.utils;

import androidx.work.impl.WorkDatabase;
import java.util.concurrent.Callable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: IdGenerator.kt */
@Metadata
/* loaded from: classes2.dex */
public final class IdGenerator {
    @NotNull
    private final WorkDatabase workDatabase;

    public IdGenerator(@NotNull WorkDatabase workDatabase) {
        Intrinsics.checkNotNullParameter(workDatabase, "workDatabase");
        this.workDatabase = workDatabase;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Integer nextAlarmManagerId$lambda$1(IdGenerator this$0) {
        int nextId;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        nextId = IdGeneratorKt.nextId(this$0.workDatabase, IdGeneratorKt.NEXT_ALARM_MANAGER_ID_KEY);
        return Integer.valueOf(nextId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Integer nextJobSchedulerIdWithRange$lambda$0(IdGenerator this$0, int i10, int i11) {
        int nextId;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        nextId = IdGeneratorKt.nextId(this$0.workDatabase, IdGeneratorKt.NEXT_JOB_SCHEDULER_ID_KEY);
        if (i10 > nextId || nextId > i11) {
            IdGeneratorKt.updatePreference(this$0.workDatabase, IdGeneratorKt.NEXT_JOB_SCHEDULER_ID_KEY, i10 + 1);
        } else {
            i10 = nextId;
        }
        return Integer.valueOf(i10);
    }

    public final int nextAlarmManagerId() {
        Object runInTransaction = this.workDatabase.runInTransaction(new Callable() { // from class: androidx.work.impl.utils.e
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Integer nextAlarmManagerId$lambda$1;
                nextAlarmManagerId$lambda$1 = IdGenerator.nextAlarmManagerId$lambda$1(IdGenerator.this);
                return nextAlarmManagerId$lambda$1;
            }
        });
        Intrinsics.checkNotNullExpressionValue(runInTransaction, "workDatabase.runInTransa…ANAGER_ID_KEY)\n        })");
        return ((Number) runInTransaction).intValue();
    }

    public final int nextJobSchedulerIdWithRange(final int i10, final int i11) {
        Object runInTransaction = this.workDatabase.runInTransaction(new Callable() { // from class: androidx.work.impl.utils.f
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Integer nextJobSchedulerIdWithRange$lambda$0;
                nextJobSchedulerIdWithRange$lambda$0 = IdGenerator.nextJobSchedulerIdWithRange$lambda$0(IdGenerator.this, i10, i11);
                return nextJobSchedulerIdWithRange$lambda$0;
            }
        });
        Intrinsics.checkNotNullExpressionValue(runInTransaction, "workDatabase.runInTransa…            id\n        })");
        return ((Number) runInTransaction).intValue();
    }
}
