package androidx.work.impl;

import androidx.annotation.RestrictTo;
import androidx.work.Configuration;
import androidx.work.ExistingWorkPolicy;
import androidx.work.Operation;
import androidx.work.WorkInfo;
import androidx.work.WorkManager;
import androidx.work.WorkRequest;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.model.WorkTagDao;
import androidx.work.impl.utils.EnqueueRunnable;
import androidx.work.impl.utils.EnqueueUtilsKt;
import androidx.work.impl.utils.futures.SettableFuture;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: WorkerUpdater.kt */
@Metadata
/* loaded from: classes2.dex */
public final class WorkerUpdater {
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @NotNull
    public static final Operation enqueueUniquelyNamedPeriodic(@NotNull final WorkManagerImpl workManagerImpl, @NotNull final String name, @NotNull final WorkRequest workRequest) {
        Intrinsics.checkNotNullParameter(workManagerImpl, "<this>");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(workRequest, "workRequest");
        final OperationImpl operationImpl = new OperationImpl();
        final Function0<Unit> function0 = new Function0<Unit>() { // from class: androidx.work.impl.WorkerUpdater$enqueueUniquelyNamedPeriodic$enqueueNew$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                new EnqueueRunnable(new WorkContinuationImpl(workManagerImpl, name, ExistingWorkPolicy.KEEP, CollectionsKt.e(WorkRequest.this)), operationImpl).run();
            }
        };
        workManagerImpl.getWorkTaskExecutor().getSerialTaskExecutor().execute(new Runnable() { // from class: androidx.work.impl.f
            @Override // java.lang.Runnable
            public final void run() {
                WorkerUpdater.enqueueUniquelyNamedPeriodic$lambda$3(WorkManagerImpl.this, name, operationImpl, function0, workRequest);
            }
        });
        return operationImpl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void enqueueUniquelyNamedPeriodic$lambda$3(WorkManagerImpl this_enqueueUniquelyNamedPeriodic, String name, OperationImpl operation, Function0 enqueueNew, WorkRequest workRequest) {
        WorkSpec copy;
        Intrinsics.checkNotNullParameter(this_enqueueUniquelyNamedPeriodic, "$this_enqueueUniquelyNamedPeriodic");
        Intrinsics.checkNotNullParameter(name, "$name");
        Intrinsics.checkNotNullParameter(operation, "$operation");
        Intrinsics.checkNotNullParameter(enqueueNew, "$enqueueNew");
        Intrinsics.checkNotNullParameter(workRequest, "$workRequest");
        WorkSpecDao workSpecDao = this_enqueueUniquelyNamedPeriodic.getWorkDatabase().workSpecDao();
        List<WorkSpec.IdAndState> workSpecIdAndStatesForName = workSpecDao.getWorkSpecIdAndStatesForName(name);
        if (workSpecIdAndStatesForName.size() > 1) {
            failWorkTypeChanged(operation, "Can't apply UPDATE policy to the chains of work.");
            return;
        }
        WorkSpec.IdAndState idAndState = (WorkSpec.IdAndState) CollectionsKt.firstOrNull(workSpecIdAndStatesForName);
        if (idAndState == null) {
            enqueueNew.invoke();
            return;
        }
        WorkSpec workSpec = workSpecDao.getWorkSpec(idAndState.f1725id);
        if (workSpec == null) {
            operation.markState(new Operation.State.FAILURE(new IllegalStateException("WorkSpec with " + idAndState.f1725id + ", that matches a name \"" + name + "\", wasn't found")));
        } else if (!workSpec.isPeriodic()) {
            failWorkTypeChanged(operation, "Can't update OneTimeWorker to Periodic Worker. Update operation must preserve worker's type.");
        } else if (idAndState.state != WorkInfo.State.CANCELLED) {
            copy = r7.copy((r45 & 1) != 0 ? r7.f1724id : idAndState.f1725id, (r45 & 2) != 0 ? r7.state : null, (r45 & 4) != 0 ? r7.workerClassName : null, (r45 & 8) != 0 ? r7.inputMergerClassName : null, (r45 & 16) != 0 ? r7.input : null, (r45 & 32) != 0 ? r7.output : null, (r45 & 64) != 0 ? r7.initialDelay : 0L, (r45 & 128) != 0 ? r7.intervalDuration : 0L, (r45 & 256) != 0 ? r7.flexDuration : 0L, (r45 & 512) != 0 ? r7.constraints : null, (r45 & 1024) != 0 ? r7.runAttemptCount : 0, (r45 & 2048) != 0 ? r7.backoffPolicy : null, (r45 & 4096) != 0 ? r7.backoffDelayDuration : 0L, (r45 & 8192) != 0 ? r7.lastEnqueueTime : 0L, (r45 & 16384) != 0 ? r7.minimumRetentionDuration : 0L, (r45 & 32768) != 0 ? r7.scheduleRequestedAt : 0L, (r45 & 65536) != 0 ? r7.expedited : false, (131072 & r45) != 0 ? r7.outOfQuotaPolicy : null, (r45 & 262144) != 0 ? r7.periodCount : 0, (r45 & 524288) != 0 ? workRequest.getWorkSpec().generation : 0);
            try {
                Processor processor = this_enqueueUniquelyNamedPeriodic.getProcessor();
                Intrinsics.checkNotNullExpressionValue(processor, "processor");
                WorkDatabase workDatabase = this_enqueueUniquelyNamedPeriodic.getWorkDatabase();
                Intrinsics.checkNotNullExpressionValue(workDatabase, "workDatabase");
                Configuration configuration = this_enqueueUniquelyNamedPeriodic.getConfiguration();
                Intrinsics.checkNotNullExpressionValue(configuration, "configuration");
                List<Scheduler> schedulers = this_enqueueUniquelyNamedPeriodic.getSchedulers();
                Intrinsics.checkNotNullExpressionValue(schedulers, "schedulers");
                updateWorkImpl(processor, workDatabase, configuration, schedulers, copy, workRequest.getTags());
                operation.markState(Operation.SUCCESS);
            } catch (Throwable th2) {
                operation.markState(new Operation.State.FAILURE(th2));
            }
        } else {
            workSpecDao.delete(idAndState.f1725id);
            enqueueNew.invoke();
        }
    }

    private static final void failWorkTypeChanged(OperationImpl operationImpl, String str) {
        operationImpl.markState(new Operation.State.FAILURE(new UnsupportedOperationException(str)));
    }

    private static final WorkManager.UpdateResult updateWorkImpl(Processor processor, final WorkDatabase workDatabase, Configuration configuration, final List<? extends Scheduler> list, final WorkSpec workSpec, final Set<String> set) {
        final String str = workSpec.f1724id;
        final WorkSpec workSpec2 = workDatabase.workSpecDao().getWorkSpec(str);
        if (workSpec2 != null) {
            if (workSpec2.state.isFinished()) {
                return WorkManager.UpdateResult.NOT_APPLIED;
            }
            if (!(workSpec2.isPeriodic() ^ workSpec.isPeriodic())) {
                final boolean isEnqueued = processor.isEnqueued(str);
                if (!isEnqueued) {
                    for (Scheduler scheduler : list) {
                        scheduler.cancel(str);
                    }
                }
                workDatabase.runInTransaction(new Runnable() { // from class: androidx.work.impl.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        WorkerUpdater.updateWorkImpl$lambda$1(WorkDatabase.this, workSpec, workSpec2, list, str, set, isEnqueued);
                    }
                });
                if (!isEnqueued) {
                    Schedulers.schedule(configuration, workDatabase, list);
                }
                return isEnqueued ? WorkManager.UpdateResult.APPLIED_FOR_NEXT_RUN : WorkManager.UpdateResult.APPLIED_IMMEDIATELY;
            }
            WorkerUpdater$updateWorkImpl$type$1 workerUpdater$updateWorkImpl$type$1 = new Function1<WorkSpec, String>() { // from class: androidx.work.impl.WorkerUpdater$updateWorkImpl$type$1
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final String invoke(@NotNull WorkSpec spec) {
                    Intrinsics.checkNotNullParameter(spec, "spec");
                    return spec.isPeriodic() ? "Periodic" : "OneTime";
                }
            };
            throw new UnsupportedOperationException("Can't update " + workerUpdater$updateWorkImpl$type$1.invoke((WorkerUpdater$updateWorkImpl$type$1) workSpec2) + " Worker to " + workerUpdater$updateWorkImpl$type$1.invoke((WorkerUpdater$updateWorkImpl$type$1) workSpec) + " Worker. Update operation must preserve worker's type.");
        }
        throw new IllegalArgumentException("Worker with " + str + " doesn't exist");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void updateWorkImpl$lambda$1(WorkDatabase workDatabase, WorkSpec newWorkSpec, WorkSpec oldWorkSpec, List schedulers, String workSpecId, Set tags, boolean z10) {
        WorkSpec copy;
        Intrinsics.checkNotNullParameter(workDatabase, "$workDatabase");
        Intrinsics.checkNotNullParameter(newWorkSpec, "$newWorkSpec");
        Intrinsics.checkNotNullParameter(oldWorkSpec, "$oldWorkSpec");
        Intrinsics.checkNotNullParameter(schedulers, "$schedulers");
        Intrinsics.checkNotNullParameter(workSpecId, "$workSpecId");
        Intrinsics.checkNotNullParameter(tags, "$tags");
        WorkSpecDao workSpecDao = workDatabase.workSpecDao();
        WorkTagDao workTagDao = workDatabase.workTagDao();
        copy = newWorkSpec.copy((r45 & 1) != 0 ? newWorkSpec.f1724id : null, (r45 & 2) != 0 ? newWorkSpec.state : oldWorkSpec.state, (r45 & 4) != 0 ? newWorkSpec.workerClassName : null, (r45 & 8) != 0 ? newWorkSpec.inputMergerClassName : null, (r45 & 16) != 0 ? newWorkSpec.input : null, (r45 & 32) != 0 ? newWorkSpec.output : null, (r45 & 64) != 0 ? newWorkSpec.initialDelay : 0L, (r45 & 128) != 0 ? newWorkSpec.intervalDuration : 0L, (r45 & 256) != 0 ? newWorkSpec.flexDuration : 0L, (r45 & 512) != 0 ? newWorkSpec.constraints : null, (r45 & 1024) != 0 ? newWorkSpec.runAttemptCount : oldWorkSpec.runAttemptCount, (r45 & 2048) != 0 ? newWorkSpec.backoffPolicy : null, (r45 & 4096) != 0 ? newWorkSpec.backoffDelayDuration : 0L, (r45 & 8192) != 0 ? newWorkSpec.lastEnqueueTime : oldWorkSpec.lastEnqueueTime, (r45 & 16384) != 0 ? newWorkSpec.minimumRetentionDuration : 0L, (r45 & 32768) != 0 ? newWorkSpec.scheduleRequestedAt : 0L, (r45 & 65536) != 0 ? newWorkSpec.expedited : false, (131072 & r45) != 0 ? newWorkSpec.outOfQuotaPolicy : null, (r45 & 262144) != 0 ? newWorkSpec.periodCount : 0, (r45 & 524288) != 0 ? newWorkSpec.generation : oldWorkSpec.getGeneration() + 1);
        workSpecDao.updateWorkSpec(EnqueueUtilsKt.wrapInConstraintTrackingWorkerIfNeeded(schedulers, copy));
        workTagDao.deleteByWorkSpecId(workSpecId);
        workTagDao.insertTags(workSpecId, tags);
        if (!z10) {
            workSpecDao.markWorkSpecScheduled(workSpecId, -1L);
            workDatabase.workProgressDao().delete(workSpecId);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void updateWorkImpl$lambda$2(SettableFuture settableFuture, WorkManagerImpl this_updateWorkImpl, WorkRequest workRequest) {
        Intrinsics.checkNotNullParameter(this_updateWorkImpl, "$this_updateWorkImpl");
        Intrinsics.checkNotNullParameter(workRequest, "$workRequest");
        if (settableFuture.isCancelled()) {
            return;
        }
        try {
            Processor processor = this_updateWorkImpl.getProcessor();
            Intrinsics.checkNotNullExpressionValue(processor, "processor");
            WorkDatabase workDatabase = this_updateWorkImpl.getWorkDatabase();
            Intrinsics.checkNotNullExpressionValue(workDatabase, "workDatabase");
            Configuration configuration = this_updateWorkImpl.getConfiguration();
            Intrinsics.checkNotNullExpressionValue(configuration, "configuration");
            List<Scheduler> schedulers = this_updateWorkImpl.getSchedulers();
            Intrinsics.checkNotNullExpressionValue(schedulers, "schedulers");
            settableFuture.set(updateWorkImpl(processor, workDatabase, configuration, schedulers, workRequest.getWorkSpec(), workRequest.getTags()));
        } catch (Throwable th2) {
            settableFuture.setException(th2);
        }
    }

    @NotNull
    public static final com.google.common.util.concurrent.e<WorkManager.UpdateResult> updateWorkImpl(@NotNull final WorkManagerImpl workManagerImpl, @NotNull final WorkRequest workRequest) {
        Intrinsics.checkNotNullParameter(workManagerImpl, "<this>");
        Intrinsics.checkNotNullParameter(workRequest, "workRequest");
        final SettableFuture future = SettableFuture.create();
        workManagerImpl.getWorkTaskExecutor().getSerialTaskExecutor().execute(new Runnable() { // from class: androidx.work.impl.e
            @Override // java.lang.Runnable
            public final void run() {
                WorkerUpdater.updateWorkImpl$lambda$2(SettableFuture.this, workManagerImpl, workRequest);
            }
        });
        Intrinsics.checkNotNullExpressionValue(future, "future");
        return future;
    }
}
