package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.os.PowerManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.WorkerThread;
import androidx.work.Logger;
import androidx.work.impl.StartStopToken;
import androidx.work.impl.background.systemalarm.SystemAlarmDispatcher;
import androidx.work.impl.constraints.WorkConstraintsCallback;
import androidx.work.impl.constraints.WorkConstraintsTrackerImpl;
import androidx.work.impl.constraints.trackers.Trackers;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecKt;
import androidx.work.impl.utils.WakeLocks;
import androidx.work.impl.utils.WorkTimer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class DelayMetCommandHandler implements WorkConstraintsCallback, WorkTimer.TimeLimitExceededListener {
    private static final int STATE_INITIAL = 0;
    private static final int STATE_START_REQUESTED = 1;
    private static final int STATE_STOP_REQUESTED = 2;
    private static final String TAG = Logger.tagWithPrefix("DelayMetCommandHandler");
    private final Context mContext;
    private int mCurrentState;
    private final SystemAlarmDispatcher mDispatcher;
    private boolean mHasConstraints;
    private final Object mLock;
    private final Executor mMainThreadExecutor;
    private final Executor mSerialExecutor;
    private final int mStartId;
    private final StartStopToken mToken;
    @Nullable
    private PowerManager.WakeLock mWakeLock;
    private final WorkConstraintsTrackerImpl mWorkConstraintsTracker;
    private final WorkGenerationalId mWorkGenerationalId;

    public DelayMetCommandHandler(@NonNull Context context, int i10, @NonNull SystemAlarmDispatcher systemAlarmDispatcher, @NonNull StartStopToken startStopToken) {
        this.mContext = context;
        this.mStartId = i10;
        this.mDispatcher = systemAlarmDispatcher;
        this.mWorkGenerationalId = startStopToken.getId();
        this.mToken = startStopToken;
        Trackers trackers = systemAlarmDispatcher.getWorkManager().getTrackers();
        this.mSerialExecutor = systemAlarmDispatcher.getTaskExecutor().getSerialTaskExecutor();
        this.mMainThreadExecutor = systemAlarmDispatcher.getTaskExecutor().getMainThreadExecutor();
        this.mWorkConstraintsTracker = new WorkConstraintsTrackerImpl(trackers, this);
        this.mHasConstraints = false;
        this.mCurrentState = 0;
        this.mLock = new Object();
    }

    private void cleanUp() {
        synchronized (this.mLock) {
            try {
                this.mWorkConstraintsTracker.reset();
                this.mDispatcher.getWorkTimer().stopTimer(this.mWorkGenerationalId);
                PowerManager.WakeLock wakeLock = this.mWakeLock;
                if (wakeLock != null && wakeLock.isHeld()) {
                    Logger logger = Logger.get();
                    String str = TAG;
                    logger.debug(str, "Releasing wakelock " + this.mWakeLock + "for WorkSpec " + this.mWorkGenerationalId);
                    this.mWakeLock.release();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void startWork() {
        if (this.mCurrentState == 0) {
            this.mCurrentState = 1;
            Logger logger = Logger.get();
            String str = TAG;
            logger.debug(str, "onAllConstraintsMet for " + this.mWorkGenerationalId);
            if (this.mDispatcher.getProcessor().startWork(this.mToken)) {
                this.mDispatcher.getWorkTimer().startTimer(this.mWorkGenerationalId, TTAdConstant.AD_MAX_EVENT_TIME, this);
                return;
            } else {
                cleanUp();
                return;
            }
        }
        Logger logger2 = Logger.get();
        String str2 = TAG;
        logger2.debug(str2, "Already started work for " + this.mWorkGenerationalId);
    }

    public void stopWork() {
        String workSpecId = this.mWorkGenerationalId.getWorkSpecId();
        if (this.mCurrentState < 2) {
            this.mCurrentState = 2;
            Logger logger = Logger.get();
            String str = TAG;
            logger.debug(str, "Stopping work for WorkSpec " + workSpecId);
            this.mMainThreadExecutor.execute(new SystemAlarmDispatcher.AddRunnable(this.mDispatcher, CommandHandler.createStopWorkIntent(this.mContext, this.mWorkGenerationalId), this.mStartId));
            if (this.mDispatcher.getProcessor().isEnqueued(this.mWorkGenerationalId.getWorkSpecId())) {
                Logger logger2 = Logger.get();
                logger2.debug(str, "WorkSpec " + workSpecId + " needs to be rescheduled");
                this.mMainThreadExecutor.execute(new SystemAlarmDispatcher.AddRunnable(this.mDispatcher, CommandHandler.createScheduleWorkIntent(this.mContext, this.mWorkGenerationalId), this.mStartId));
                return;
            }
            Logger logger3 = Logger.get();
            logger3.debug(str, "Processor does not have WorkSpec " + workSpecId + ". No need to reschedule");
            return;
        }
        Logger logger4 = Logger.get();
        String str2 = TAG;
        logger4.debug(str2, "Already stopped work for " + workSpecId);
    }

    @WorkerThread
    public void handleProcessWork() {
        String workSpecId = this.mWorkGenerationalId.getWorkSpecId();
        Context context = this.mContext;
        this.mWakeLock = WakeLocks.newWakeLock(context, workSpecId + " (" + this.mStartId + ")");
        Logger logger = Logger.get();
        String str = TAG;
        logger.debug(str, "Acquiring wakelock " + this.mWakeLock + "for WorkSpec " + workSpecId);
        this.mWakeLock.acquire();
        WorkSpec workSpec = this.mDispatcher.getWorkManager().getWorkDatabase().workSpecDao().getWorkSpec(workSpecId);
        if (workSpec == null) {
            this.mSerialExecutor.execute(new a(this));
            return;
        }
        boolean hasConstraints = workSpec.hasConstraints();
        this.mHasConstraints = hasConstraints;
        if (!hasConstraints) {
            Logger logger2 = Logger.get();
            logger2.debug(str, "No constraints for " + workSpecId);
            onAllConstraintsMet(Collections.singletonList(workSpec));
            return;
        }
        this.mWorkConstraintsTracker.replace(Collections.singletonList(workSpec));
    }

    @Override // androidx.work.impl.constraints.WorkConstraintsCallback
    public void onAllConstraintsMet(@NonNull List<WorkSpec> list) {
        for (WorkSpec workSpec : list) {
            if (WorkSpecKt.generationalId(workSpec).equals(this.mWorkGenerationalId)) {
                this.mSerialExecutor.execute(new Runnable() { // from class: androidx.work.impl.background.systemalarm.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        DelayMetCommandHandler.this.startWork();
                    }
                });
                return;
            }
        }
    }

    @Override // androidx.work.impl.constraints.WorkConstraintsCallback
    public void onAllConstraintsNotMet(@NonNull List<WorkSpec> list) {
        this.mSerialExecutor.execute(new a(this));
    }

    public void onExecuted(boolean z10) {
        Logger logger = Logger.get();
        String str = TAG;
        logger.debug(str, "onExecuted " + this.mWorkGenerationalId + ", " + z10);
        cleanUp();
        if (z10) {
            this.mMainThreadExecutor.execute(new SystemAlarmDispatcher.AddRunnable(this.mDispatcher, CommandHandler.createScheduleWorkIntent(this.mContext, this.mWorkGenerationalId), this.mStartId));
        }
        if (this.mHasConstraints) {
            this.mMainThreadExecutor.execute(new SystemAlarmDispatcher.AddRunnable(this.mDispatcher, CommandHandler.createConstraintsChangedIntent(this.mContext), this.mStartId));
        }
    }

    @Override // androidx.work.impl.utils.WorkTimer.TimeLimitExceededListener
    public void onTimeLimitExceeded(@NonNull WorkGenerationalId workGenerationalId) {
        Logger logger = Logger.get();
        String str = TAG;
        logger.debug(str, "Exceeded time limits on execution for " + workGenerationalId);
        this.mSerialExecutor.execute(new a(this));
    }
}
