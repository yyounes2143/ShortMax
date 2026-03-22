package androidx.work.impl;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import androidx.work.Configuration;
import androidx.work.Data;
import androidx.work.InputMerger;
import androidx.work.ListenableWorker;
import androidx.work.Logger;
import androidx.work.WorkInfo;
import androidx.work.WorkerParameters;
import androidx.work.impl.background.systemalarm.RescheduleReceiver;
import androidx.work.impl.foreground.ForegroundProcessor;
import androidx.work.impl.model.DependencyDao;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.model.WorkSpecKt;
import androidx.work.impl.utils.PackageManagerHelper;
import androidx.work.impl.utils.SynchronousExecutor;
import androidx.work.impl.utils.WorkForegroundRunnable;
import androidx.work.impl.utils.WorkForegroundUpdater;
import androidx.work.impl.utils.WorkProgressUpdater;
import androidx.work.impl.utils.futures.SettableFuture;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class WorkerWrapper implements Runnable {
    static final String TAG = Logger.tagWithPrefix("WorkerWrapper");
    Context mAppContext;
    private Configuration mConfiguration;
    private DependencyDao mDependencyDao;
    private ForegroundProcessor mForegroundProcessor;
    private volatile boolean mInterrupted;
    private WorkerParameters.RuntimeExtras mRuntimeExtras;
    private List<Scheduler> mSchedulers;
    private List<String> mTags;
    private WorkDatabase mWorkDatabase;
    private String mWorkDescription;
    WorkSpec mWorkSpec;
    private WorkSpecDao mWorkSpecDao;
    private final String mWorkSpecId;
    TaskExecutor mWorkTaskExecutor;
    ListenableWorker mWorker;
    @NonNull
    ListenableWorker.Result mResult = ListenableWorker.Result.failure();
    @NonNull
    SettableFuture<Boolean> mFuture = SettableFuture.create();
    @NonNull
    final SettableFuture<ListenableWorker.Result> mWorkerResultFuture = SettableFuture.create();

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes2.dex */
    public static class Builder {
        @NonNull
        Context mAppContext;
        @NonNull
        Configuration mConfiguration;
        @NonNull
        ForegroundProcessor mForegroundProcessor;
        @NonNull
        WorkerParameters.RuntimeExtras mRuntimeExtras = new WorkerParameters.RuntimeExtras();
        List<Scheduler> mSchedulers;
        private final List<String> mTags;
        @NonNull
        WorkDatabase mWorkDatabase;
        @NonNull
        WorkSpec mWorkSpec;
        @NonNull
        TaskExecutor mWorkTaskExecutor;
        @Nullable
        ListenableWorker mWorker;

        public Builder(@NonNull Context context, @NonNull Configuration configuration, @NonNull TaskExecutor taskExecutor, @NonNull ForegroundProcessor foregroundProcessor, @NonNull WorkDatabase workDatabase, @NonNull WorkSpec workSpec, @NonNull List<String> list) {
            this.mAppContext = context.getApplicationContext();
            this.mWorkTaskExecutor = taskExecutor;
            this.mForegroundProcessor = foregroundProcessor;
            this.mConfiguration = configuration;
            this.mWorkDatabase = workDatabase;
            this.mWorkSpec = workSpec;
            this.mTags = list;
        }

        @NonNull
        public WorkerWrapper build() {
            return new WorkerWrapper(this);
        }

        @NonNull
        public Builder withRuntimeExtras(@Nullable WorkerParameters.RuntimeExtras runtimeExtras) {
            if (runtimeExtras != null) {
                this.mRuntimeExtras = runtimeExtras;
            }
            return this;
        }

        @NonNull
        public Builder withSchedulers(@NonNull List<Scheduler> list) {
            this.mSchedulers = list;
            return this;
        }

        @NonNull
        @VisibleForTesting
        public Builder withWorker(@NonNull ListenableWorker listenableWorker) {
            this.mWorker = listenableWorker;
            return this;
        }
    }

    WorkerWrapper(@NonNull Builder builder) {
        this.mAppContext = builder.mAppContext;
        this.mWorkTaskExecutor = builder.mWorkTaskExecutor;
        this.mForegroundProcessor = builder.mForegroundProcessor;
        WorkSpec workSpec = builder.mWorkSpec;
        this.mWorkSpec = workSpec;
        this.mWorkSpecId = workSpec.f1724id;
        this.mSchedulers = builder.mSchedulers;
        this.mRuntimeExtras = builder.mRuntimeExtras;
        this.mWorker = builder.mWorker;
        this.mConfiguration = builder.mConfiguration;
        WorkDatabase workDatabase = builder.mWorkDatabase;
        this.mWorkDatabase = workDatabase;
        this.mWorkSpecDao = workDatabase.workSpecDao();
        this.mDependencyDao = this.mWorkDatabase.dependencyDao();
        this.mTags = builder.mTags;
    }

    private String createWorkDescription(List<String> list) {
        StringBuilder sb2 = new StringBuilder("Work [ id=");
        sb2.append(this.mWorkSpecId);
        sb2.append(", tags={ ");
        boolean z10 = true;
        for (String str : list) {
            if (z10) {
                z10 = false;
            } else {
                sb2.append(", ");
            }
            sb2.append(str);
        }
        sb2.append(" } ]");
        return sb2.toString();
    }

    private void handleResult(ListenableWorker.Result result) {
        if (result instanceof ListenableWorker.Result.Success) {
            Logger logger = Logger.get();
            String str = TAG;
            logger.info(str, "Worker result SUCCESS for " + this.mWorkDescription);
            if (this.mWorkSpec.isPeriodic()) {
                resetPeriodicAndResolve();
            } else {
                setSucceededAndResolve();
            }
        } else if (result instanceof ListenableWorker.Result.Retry) {
            Logger logger2 = Logger.get();
            String str2 = TAG;
            logger2.info(str2, "Worker result RETRY for " + this.mWorkDescription);
            rescheduleAndResolve();
        } else {
            Logger logger3 = Logger.get();
            String str3 = TAG;
            logger3.info(str3, "Worker result FAILURE for " + this.mWorkDescription);
            if (this.mWorkSpec.isPeriodic()) {
                resetPeriodicAndResolve();
            } else {
                setFailedAndResolve();
            }
        }
    }

    private void iterativelyFailWorkAndDependents(String str) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(str);
        while (!linkedList.isEmpty()) {
            String str2 = (String) linkedList.remove();
            if (this.mWorkSpecDao.getState(str2) != WorkInfo.State.CANCELLED) {
                this.mWorkSpecDao.setState(WorkInfo.State.FAILED, str2);
            }
            linkedList.addAll(this.mDependencyDao.getDependentWorkIds(str2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$runWorker$0(com.google.common.util.concurrent.e eVar) {
        if (this.mWorkerResultFuture.isCancelled()) {
            eVar.cancel(true);
        }
    }

    private void rescheduleAndResolve() {
        this.mWorkDatabase.beginTransaction();
        try {
            this.mWorkSpecDao.setState(WorkInfo.State.ENQUEUED, this.mWorkSpecId);
            this.mWorkSpecDao.setLastEnqueuedTime(this.mWorkSpecId, System.currentTimeMillis());
            this.mWorkSpecDao.markWorkSpecScheduled(this.mWorkSpecId, -1L);
            this.mWorkDatabase.setTransactionSuccessful();
        } finally {
            this.mWorkDatabase.endTransaction();
            resolve(true);
        }
    }

    private void resetPeriodicAndResolve() {
        this.mWorkDatabase.beginTransaction();
        try {
            this.mWorkSpecDao.setLastEnqueuedTime(this.mWorkSpecId, System.currentTimeMillis());
            this.mWorkSpecDao.setState(WorkInfo.State.ENQUEUED, this.mWorkSpecId);
            this.mWorkSpecDao.resetWorkSpecRunAttemptCount(this.mWorkSpecId);
            this.mWorkSpecDao.incrementPeriodCount(this.mWorkSpecId);
            this.mWorkSpecDao.markWorkSpecScheduled(this.mWorkSpecId, -1L);
            this.mWorkDatabase.setTransactionSuccessful();
        } finally {
            this.mWorkDatabase.endTransaction();
            resolve(false);
        }
    }

    private void resolve(boolean z10) {
        this.mWorkDatabase.beginTransaction();
        try {
            if (!this.mWorkDatabase.workSpecDao().hasUnfinishedWork()) {
                PackageManagerHelper.setComponentEnabled(this.mAppContext, RescheduleReceiver.class, false);
            }
            if (z10) {
                this.mWorkSpecDao.setState(WorkInfo.State.ENQUEUED, this.mWorkSpecId);
                this.mWorkSpecDao.markWorkSpecScheduled(this.mWorkSpecId, -1L);
            }
            if (this.mWorkSpec != null && this.mWorker != null && this.mForegroundProcessor.isEnqueuedInForeground(this.mWorkSpecId)) {
                this.mForegroundProcessor.stopForeground(this.mWorkSpecId);
            }
            this.mWorkDatabase.setTransactionSuccessful();
            this.mWorkDatabase.endTransaction();
            this.mFuture.set(Boolean.valueOf(z10));
        } catch (Throwable th2) {
            this.mWorkDatabase.endTransaction();
            throw th2;
        }
    }

    private void resolveIncorrectStatus() {
        WorkInfo.State state = this.mWorkSpecDao.getState(this.mWorkSpecId);
        if (state == WorkInfo.State.RUNNING) {
            Logger logger = Logger.get();
            String str = TAG;
            logger.debug(str, "Status for " + this.mWorkSpecId + " is RUNNING; not doing any work and rescheduling for later execution");
            resolve(true);
            return;
        }
        Logger logger2 = Logger.get();
        String str2 = TAG;
        logger2.debug(str2, "Status for " + this.mWorkSpecId + " is " + state + " ; not doing any work");
        resolve(false);
    }

    private void runWorker() {
        Data merge;
        if (tryCheckForInterruptionAndResolve()) {
            return;
        }
        this.mWorkDatabase.beginTransaction();
        try {
            WorkSpec workSpec = this.mWorkSpec;
            if (workSpec.state != WorkInfo.State.ENQUEUED) {
                resolveIncorrectStatus();
                this.mWorkDatabase.setTransactionSuccessful();
                Logger logger = Logger.get();
                String str = TAG;
                logger.debug(str, this.mWorkSpec.workerClassName + " is not in ENQUEUED state. Nothing more to do");
            } else if ((workSpec.isPeriodic() || this.mWorkSpec.isBackedOff()) && System.currentTimeMillis() < this.mWorkSpec.calculateNextRunTime()) {
                Logger.get().debug(TAG, String.format("Delaying execution for %s because it is being executed before schedule.", this.mWorkSpec.workerClassName));
                resolve(true);
                this.mWorkDatabase.setTransactionSuccessful();
            } else {
                this.mWorkDatabase.setTransactionSuccessful();
                this.mWorkDatabase.endTransaction();
                if (this.mWorkSpec.isPeriodic()) {
                    merge = this.mWorkSpec.input;
                } else {
                    InputMerger createInputMergerWithDefaultFallback = this.mConfiguration.getInputMergerFactory().createInputMergerWithDefaultFallback(this.mWorkSpec.inputMergerClassName);
                    if (createInputMergerWithDefaultFallback == null) {
                        Logger logger2 = Logger.get();
                        String str2 = TAG;
                        logger2.error(str2, "Could not create Input Merger " + this.mWorkSpec.inputMergerClassName);
                        setFailedAndResolve();
                        return;
                    }
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(this.mWorkSpec.input);
                    arrayList.addAll(this.mWorkSpecDao.getInputsFromPrerequisites(this.mWorkSpecId));
                    merge = createInputMergerWithDefaultFallback.merge(arrayList);
                }
                Data data = merge;
                UUID fromString = UUID.fromString(this.mWorkSpecId);
                List<String> list = this.mTags;
                WorkerParameters.RuntimeExtras runtimeExtras = this.mRuntimeExtras;
                WorkSpec workSpec2 = this.mWorkSpec;
                WorkerParameters workerParameters = new WorkerParameters(fromString, data, list, runtimeExtras, workSpec2.runAttemptCount, workSpec2.getGeneration(), this.mConfiguration.getExecutor(), this.mWorkTaskExecutor, this.mConfiguration.getWorkerFactory(), new WorkProgressUpdater(this.mWorkDatabase, this.mWorkTaskExecutor), new WorkForegroundUpdater(this.mWorkDatabase, this.mForegroundProcessor, this.mWorkTaskExecutor));
                if (this.mWorker == null) {
                    this.mWorker = this.mConfiguration.getWorkerFactory().createWorkerWithDefaultFallback(this.mAppContext, this.mWorkSpec.workerClassName, workerParameters);
                }
                ListenableWorker listenableWorker = this.mWorker;
                if (listenableWorker == null) {
                    Logger logger3 = Logger.get();
                    String str3 = TAG;
                    logger3.error(str3, "Could not create Worker " + this.mWorkSpec.workerClassName);
                    setFailedAndResolve();
                } else if (listenableWorker.isUsed()) {
                    Logger logger4 = Logger.get();
                    String str4 = TAG;
                    logger4.error(str4, "Received an already-used Worker " + this.mWorkSpec.workerClassName + "; Worker Factory should return new instances");
                    setFailedAndResolve();
                } else {
                    this.mWorker.setUsed();
                    if (trySetRunning()) {
                        if (tryCheckForInterruptionAndResolve()) {
                            return;
                        }
                        WorkForegroundRunnable workForegroundRunnable = new WorkForegroundRunnable(this.mAppContext, this.mWorkSpec, this.mWorker, workerParameters.getForegroundUpdater(), this.mWorkTaskExecutor);
                        this.mWorkTaskExecutor.getMainThreadExecutor().execute(workForegroundRunnable);
                        final com.google.common.util.concurrent.e<Void> future = workForegroundRunnable.getFuture();
                        this.mWorkerResultFuture.addListener(new Runnable() { // from class: androidx.work.impl.g
                            @Override // java.lang.Runnable
                            public final void run() {
                                WorkerWrapper.this.lambda$runWorker$0(future);
                            }
                        }, new SynchronousExecutor());
                        future.addListener(new Runnable() { // from class: androidx.work.impl.WorkerWrapper.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (WorkerWrapper.this.mWorkerResultFuture.isCancelled()) {
                                    return;
                                }
                                try {
                                    future.get();
                                    Logger logger5 = Logger.get();
                                    String str5 = WorkerWrapper.TAG;
                                    logger5.debug(str5, "Starting work for " + WorkerWrapper.this.mWorkSpec.workerClassName);
                                    WorkerWrapper workerWrapper = WorkerWrapper.this;
                                    workerWrapper.mWorkerResultFuture.setFuture(workerWrapper.mWorker.startWork());
                                } catch (Throwable th2) {
                                    WorkerWrapper.this.mWorkerResultFuture.setException(th2);
                                }
                            }
                        }, this.mWorkTaskExecutor.getMainThreadExecutor());
                        final String str5 = this.mWorkDescription;
                        this.mWorkerResultFuture.addListener(new Runnable() { // from class: androidx.work.impl.WorkerWrapper.2
                            @Override // java.lang.Runnable
                            @SuppressLint({"SyntheticAccessor"})
                            public void run() {
                                try {
                                    try {
                                        ListenableWorker.Result result = WorkerWrapper.this.mWorkerResultFuture.get();
                                        if (result == null) {
                                            Logger logger5 = Logger.get();
                                            String str6 = WorkerWrapper.TAG;
                                            logger5.error(str6, WorkerWrapper.this.mWorkSpec.workerClassName + " returned a null result. Treating it as a failure.");
                                        } else {
                                            Logger logger6 = Logger.get();
                                            String str7 = WorkerWrapper.TAG;
                                            logger6.debug(str7, WorkerWrapper.this.mWorkSpec.workerClassName + " returned a " + result + ".");
                                            WorkerWrapper.this.mResult = result;
                                        }
                                    } catch (InterruptedException e10) {
                                        e = e10;
                                        Logger logger7 = Logger.get();
                                        String str8 = WorkerWrapper.TAG;
                                        logger7.error(str8, str5 + " failed because it threw an exception/error", e);
                                    } catch (CancellationException e11) {
                                        Logger logger8 = Logger.get();
                                        String str9 = WorkerWrapper.TAG;
                                        logger8.info(str9, str5 + " was cancelled", e11);
                                    } catch (ExecutionException e12) {
                                        e = e12;
                                        Logger logger72 = Logger.get();
                                        String str82 = WorkerWrapper.TAG;
                                        logger72.error(str82, str5 + " failed because it threw an exception/error", e);
                                    }
                                    WorkerWrapper.this.onWorkFinished();
                                } catch (Throwable th2) {
                                    WorkerWrapper.this.onWorkFinished();
                                    throw th2;
                                }
                            }
                        }, this.mWorkTaskExecutor.getSerialTaskExecutor());
                        return;
                    }
                    resolveIncorrectStatus();
                }
            }
        } finally {
            this.mWorkDatabase.endTransaction();
        }
    }

    private void setSucceededAndResolve() {
        this.mWorkDatabase.beginTransaction();
        try {
            this.mWorkSpecDao.setState(WorkInfo.State.SUCCEEDED, this.mWorkSpecId);
            this.mWorkSpecDao.setOutput(this.mWorkSpecId, ((ListenableWorker.Result.Success) this.mResult).getOutputData());
            long currentTimeMillis = System.currentTimeMillis();
            for (String str : this.mDependencyDao.getDependentWorkIds(this.mWorkSpecId)) {
                if (this.mWorkSpecDao.getState(str) == WorkInfo.State.BLOCKED && this.mDependencyDao.hasCompletedAllPrerequisites(str)) {
                    Logger logger = Logger.get();
                    String str2 = TAG;
                    logger.info(str2, "Setting status to enqueued for " + str);
                    this.mWorkSpecDao.setState(WorkInfo.State.ENQUEUED, str);
                    this.mWorkSpecDao.setLastEnqueuedTime(str, currentTimeMillis);
                }
            }
            this.mWorkDatabase.setTransactionSuccessful();
            this.mWorkDatabase.endTransaction();
            resolve(false);
        } catch (Throwable th2) {
            this.mWorkDatabase.endTransaction();
            resolve(false);
            throw th2;
        }
    }

    private boolean tryCheckForInterruptionAndResolve() {
        if (!this.mInterrupted) {
            return false;
        }
        Logger logger = Logger.get();
        String str = TAG;
        logger.debug(str, "Work interrupted for " + this.mWorkDescription);
        WorkInfo.State state = this.mWorkSpecDao.getState(this.mWorkSpecId);
        if (state == null) {
            resolve(false);
        } else {
            resolve(!state.isFinished());
        }
        return true;
    }

    private boolean trySetRunning() {
        boolean z10;
        this.mWorkDatabase.beginTransaction();
        try {
            if (this.mWorkSpecDao.getState(this.mWorkSpecId) == WorkInfo.State.ENQUEUED) {
                this.mWorkSpecDao.setState(WorkInfo.State.RUNNING, this.mWorkSpecId);
                this.mWorkSpecDao.incrementWorkSpecRunAttemptCount(this.mWorkSpecId);
                z10 = true;
            } else {
                z10 = false;
            }
            this.mWorkDatabase.setTransactionSuccessful();
            this.mWorkDatabase.endTransaction();
            return z10;
        } catch (Throwable th2) {
            this.mWorkDatabase.endTransaction();
            throw th2;
        }
    }

    @NonNull
    public com.google.common.util.concurrent.e<Boolean> getFuture() {
        return this.mFuture;
    }

    @NonNull
    public WorkGenerationalId getWorkGenerationalId() {
        return WorkSpecKt.generationalId(this.mWorkSpec);
    }

    @NonNull
    public WorkSpec getWorkSpec() {
        return this.mWorkSpec;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void interrupt() {
        this.mInterrupted = true;
        tryCheckForInterruptionAndResolve();
        this.mWorkerResultFuture.cancel(true);
        if (this.mWorker != null && this.mWorkerResultFuture.isCancelled()) {
            this.mWorker.stop();
            return;
        }
        Logger.get().debug(TAG, "WorkSpec " + this.mWorkSpec + " is already done. Not interrupting.");
    }

    void onWorkFinished() {
        if (!tryCheckForInterruptionAndResolve()) {
            this.mWorkDatabase.beginTransaction();
            try {
                WorkInfo.State state = this.mWorkSpecDao.getState(this.mWorkSpecId);
                this.mWorkDatabase.workProgressDao().delete(this.mWorkSpecId);
                if (state == null) {
                    resolve(false);
                } else if (state == WorkInfo.State.RUNNING) {
                    handleResult(this.mResult);
                } else if (!state.isFinished()) {
                    rescheduleAndResolve();
                }
                this.mWorkDatabase.setTransactionSuccessful();
                this.mWorkDatabase.endTransaction();
            } catch (Throwable th2) {
                this.mWorkDatabase.endTransaction();
                throw th2;
            }
        }
        List<Scheduler> list = this.mSchedulers;
        if (list != null) {
            for (Scheduler scheduler : list) {
                scheduler.cancel(this.mWorkSpecId);
            }
            Schedulers.schedule(this.mConfiguration, this.mWorkDatabase, this.mSchedulers);
        }
    }

    @Override // java.lang.Runnable
    @WorkerThread
    public void run() {
        this.mWorkDescription = createWorkDescription(this.mTags);
        runWorker();
    }

    @VisibleForTesting
    void setFailedAndResolve() {
        this.mWorkDatabase.beginTransaction();
        try {
            iterativelyFailWorkAndDependents(this.mWorkSpecId);
            this.mWorkSpecDao.setOutput(this.mWorkSpecId, ((ListenableWorker.Result.Failure) this.mResult).getOutputData());
            this.mWorkDatabase.setTransactionSuccessful();
        } finally {
            this.mWorkDatabase.endTransaction();
            resolve(false);
        }
    }
}
