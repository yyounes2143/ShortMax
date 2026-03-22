package androidx.work.impl.workers;

import android.content.Context;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.work.ListenableWorker;
import androidx.work.Logger;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.constraints.WorkConstraintsCallback;
import androidx.work.impl.constraints.WorkConstraintsTrackerImpl;
import androidx.work.impl.constraints.trackers.Trackers;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.utils.futures.SettableFuture;
import androidx.work.impl.workers.ConstraintTrackingWorker;
import com.google.common.util.concurrent.e;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ConstraintTrackingWorker.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public final class ConstraintTrackingWorker extends ListenableWorker implements WorkConstraintsCallback {
    private volatile boolean areConstraintsUnmet;
    @Nullable
    private ListenableWorker delegate;
    private final SettableFuture<ListenableWorker.Result> future;
    @NotNull
    private final Object lock;
    @NotNull
    private final WorkerParameters workerParameters;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConstraintTrackingWorker(@NotNull Context appContext, @NotNull WorkerParameters workerParameters) {
        super(appContext, workerParameters);
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        Intrinsics.checkNotNullParameter(workerParameters, "workerParameters");
        this.workerParameters = workerParameters;
        this.lock = new Object();
        this.future = SettableFuture.create();
    }

    private final void setupAndRunConstraintTrackingWork() {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        if (this.future.isCancelled()) {
            return;
        }
        String string = getInputData().getString(ConstraintTrackingWorkerKt.ARGUMENT_CLASS_NAME);
        Logger logger = Logger.get();
        Intrinsics.checkNotNullExpressionValue(logger, "get()");
        if (string == null || string.length() == 0) {
            str = ConstraintTrackingWorkerKt.TAG;
            logger.error(str, "No worker to delegate to.");
            SettableFuture<ListenableWorker.Result> future = this.future;
            Intrinsics.checkNotNullExpressionValue(future, "future");
            ConstraintTrackingWorkerKt.setFailed(future);
            return;
        }
        ListenableWorker createWorkerWithDefaultFallback = getWorkerFactory().createWorkerWithDefaultFallback(getApplicationContext(), string, this.workerParameters);
        this.delegate = createWorkerWithDefaultFallback;
        if (createWorkerWithDefaultFallback == null) {
            str6 = ConstraintTrackingWorkerKt.TAG;
            logger.debug(str6, "No worker to delegate to.");
            SettableFuture<ListenableWorker.Result> future2 = this.future;
            Intrinsics.checkNotNullExpressionValue(future2, "future");
            ConstraintTrackingWorkerKt.setFailed(future2);
            return;
        }
        WorkManagerImpl workManagerImpl = WorkManagerImpl.getInstance(getApplicationContext());
        Intrinsics.checkNotNullExpressionValue(workManagerImpl, "getInstance(applicationContext)");
        WorkSpecDao workSpecDao = workManagerImpl.getWorkDatabase().workSpecDao();
        String uuid = getId().toString();
        Intrinsics.checkNotNullExpressionValue(uuid, "id.toString()");
        WorkSpec workSpec = workSpecDao.getWorkSpec(uuid);
        if (workSpec == null) {
            SettableFuture<ListenableWorker.Result> future3 = this.future;
            Intrinsics.checkNotNullExpressionValue(future3, "future");
            ConstraintTrackingWorkerKt.setFailed(future3);
            return;
        }
        Trackers trackers = workManagerImpl.getTrackers();
        Intrinsics.checkNotNullExpressionValue(trackers, "workManagerImpl.trackers");
        WorkConstraintsTrackerImpl workConstraintsTrackerImpl = new WorkConstraintsTrackerImpl(trackers, this);
        workConstraintsTrackerImpl.replace(CollectionsKt.e(workSpec));
        String uuid2 = getId().toString();
        Intrinsics.checkNotNullExpressionValue(uuid2, "id.toString()");
        if (workConstraintsTrackerImpl.areAllConstraintsMet(uuid2)) {
            str3 = ConstraintTrackingWorkerKt.TAG;
            logger.debug(str3, "Constraints met for delegate " + string);
            try {
                ListenableWorker listenableWorker = this.delegate;
                Intrinsics.checkNotNull(listenableWorker);
                final e<ListenableWorker.Result> startWork = listenableWorker.startWork();
                Intrinsics.checkNotNullExpressionValue(startWork, "delegate!!.startWork()");
                startWork.addListener(new Runnable() { // from class: u.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        ConstraintTrackingWorker.setupAndRunConstraintTrackingWork$lambda$2(ConstraintTrackingWorker.this, startWork);
                    }
                }, getBackgroundExecutor());
                return;
            } catch (Throwable th2) {
                str4 = ConstraintTrackingWorkerKt.TAG;
                logger.debug(str4, "Delegated worker " + string + " threw exception in startWork.", th2);
                synchronized (this.lock) {
                    try {
                        if (this.areConstraintsUnmet) {
                            str5 = ConstraintTrackingWorkerKt.TAG;
                            logger.debug(str5, "Constraints were unmet, Retrying.");
                            SettableFuture<ListenableWorker.Result> future4 = this.future;
                            Intrinsics.checkNotNullExpressionValue(future4, "future");
                            ConstraintTrackingWorkerKt.setRetry(future4);
                            return;
                        }
                        SettableFuture<ListenableWorker.Result> future5 = this.future;
                        Intrinsics.checkNotNullExpressionValue(future5, "future");
                        ConstraintTrackingWorkerKt.setFailed(future5);
                        return;
                    } catch (Throwable th3) {
                        throw th3;
                    }
                }
            }
        }
        str2 = ConstraintTrackingWorkerKt.TAG;
        logger.debug(str2, "Constraints not met for delegate " + string + ". Requesting retry.");
        SettableFuture<ListenableWorker.Result> future6 = this.future;
        Intrinsics.checkNotNullExpressionValue(future6, "future");
        ConstraintTrackingWorkerKt.setRetry(future6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupAndRunConstraintTrackingWork$lambda$2(ConstraintTrackingWorker this$0, e innerFuture) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(innerFuture, "$innerFuture");
        synchronized (this$0.lock) {
            try {
                if (this$0.areConstraintsUnmet) {
                    SettableFuture<ListenableWorker.Result> future = this$0.future;
                    Intrinsics.checkNotNullExpressionValue(future, "future");
                    ConstraintTrackingWorkerKt.setRetry(future);
                } else {
                    this$0.future.setFuture(innerFuture);
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startWork$lambda$0(ConstraintTrackingWorker this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.setupAndRunConstraintTrackingWork();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @VisibleForTesting
    @Nullable
    public final ListenableWorker getDelegate() {
        return this.delegate;
    }

    @Override // androidx.work.impl.constraints.WorkConstraintsCallback
    public void onAllConstraintsMet(@NotNull List<WorkSpec> workSpecs) {
        Intrinsics.checkNotNullParameter(workSpecs, "workSpecs");
    }

    @Override // androidx.work.impl.constraints.WorkConstraintsCallback
    public void onAllConstraintsNotMet(@NotNull List<WorkSpec> workSpecs) {
        String str;
        Intrinsics.checkNotNullParameter(workSpecs, "workSpecs");
        Logger logger = Logger.get();
        str = ConstraintTrackingWorkerKt.TAG;
        logger.debug(str, "Constraints changed for " + workSpecs);
        synchronized (this.lock) {
            this.areConstraintsUnmet = true;
            Unit unit = Unit.f60915a;
        }
    }

    @Override // androidx.work.ListenableWorker
    public void onStopped() {
        super.onStopped();
        ListenableWorker listenableWorker = this.delegate;
        if (listenableWorker != null && !listenableWorker.isStopped()) {
            listenableWorker.stop();
        }
    }

    @Override // androidx.work.ListenableWorker
    @NotNull
    public e<ListenableWorker.Result> startWork() {
        getBackgroundExecutor().execute(new Runnable() { // from class: u.a
            @Override // java.lang.Runnable
            public final void run() {
                ConstraintTrackingWorker.startWork$lambda$0(ConstraintTrackingWorker.this);
            }
        });
        SettableFuture<ListenableWorker.Result> future = this.future;
        Intrinsics.checkNotNullExpressionValue(future, "future");
        return future;
    }
}
