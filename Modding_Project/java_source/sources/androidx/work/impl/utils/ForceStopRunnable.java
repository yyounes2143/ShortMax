package androidx.work.impl.utils;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.app.AlarmManager;
import android.app.ApplicationExitInfo;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.database.sqlite.SQLiteAccessPermException;
import android.database.sqlite.SQLiteCantOpenDatabaseException;
import android.database.sqlite.SQLiteConstraintException;
import android.database.sqlite.SQLiteDatabaseCorruptException;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteDiskIOException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteTableLockedException;
import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.core.app.NotificationCompat;
import androidx.core.util.Consumer;
import androidx.work.Configuration;
import androidx.work.Logger;
import androidx.work.WorkInfo;
import androidx.work.impl.Schedulers;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkDatabasePathHelper;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.background.systemjob.SystemJobScheduler;
import androidx.work.impl.model.WorkProgressDao;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import java.util.List;
import java.util.concurrent.TimeUnit;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class ForceStopRunnable implements Runnable {
    @VisibleForTesting
    static final String ACTION_FORCE_STOP_RESCHEDULE = "ACTION_FORCE_STOP_RESCHEDULE";
    private static final int ALARM_ID = -1;
    private static final long BACKOFF_DURATION_MS = 300;
    @VisibleForTesting
    static final int MAX_ATTEMPTS = 3;
    private static final String TAG = Logger.tagWithPrefix("ForceStopRunnable");
    private static final long TEN_YEARS = TimeUnit.DAYS.toMillis(3650);
    private final Context mContext;
    private final PreferenceUtils mPreferenceUtils;
    private int mRetryCount = 0;
    private final WorkManagerImpl mWorkManager;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes2.dex */
    public static class BroadcastReceiver extends android.content.BroadcastReceiver {
        private static final String TAG = Logger.tagWithPrefix("ForceStopRunnable$Rcvr");

        @Override // android.content.BroadcastReceiver
        public void onReceive(@NonNull Context context, @Nullable Intent intent) {
            if (intent != null && ForceStopRunnable.ACTION_FORCE_STOP_RESCHEDULE.equals(intent.getAction())) {
                Logger.get().verbose(TAG, "Rescheduling alarm that keeps track of force-stops.");
                ForceStopRunnable.setAlarm(context);
            }
        }
    }

    public ForceStopRunnable(@NonNull Context context, @NonNull WorkManagerImpl workManagerImpl) {
        this.mContext = context.getApplicationContext();
        this.mWorkManager = workManagerImpl;
        this.mPreferenceUtils = workManagerImpl.getPreferenceUtils();
    }

    @VisibleForTesting
    static Intent getIntent(Context context) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(context, BroadcastReceiver.class));
        intent.setAction(ACTION_FORCE_STOP_RESCHEDULE);
        return intent;
    }

    private static PendingIntent getPendingIntent(Context context, int i10) {
        return PendingIntent.getBroadcast(context, -1, getIntent(context), i10);
    }

    @SuppressLint({"ClassVerificationFailure"})
    static void setAlarm(Context context) {
        int i10;
        AlarmManager alarmManager = (AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM);
        if (Build.VERSION.SDK_INT >= 31) {
            i10 = 167772160;
        } else {
            i10 = 134217728;
        }
        PendingIntent pendingIntent = getPendingIntent(context, i10);
        long currentTimeMillis = System.currentTimeMillis() + TEN_YEARS;
        if (alarmManager != null) {
            alarmManager.setExact(0, currentTimeMillis, pendingIntent);
        }
    }

    @VisibleForTesting
    public boolean cleanUp() {
        boolean z10;
        boolean reconcileJobs = SystemJobScheduler.reconcileJobs(this.mContext, this.mWorkManager);
        WorkDatabase workDatabase = this.mWorkManager.getWorkDatabase();
        WorkSpecDao workSpecDao = workDatabase.workSpecDao();
        WorkProgressDao workProgressDao = workDatabase.workProgressDao();
        workDatabase.beginTransaction();
        try {
            List<WorkSpec> runningWork = workSpecDao.getRunningWork();
            if (runningWork != null && !runningWork.isEmpty()) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10) {
                for (WorkSpec workSpec : runningWork) {
                    workSpecDao.setState(WorkInfo.State.ENQUEUED, workSpec.f1724id);
                    workSpecDao.markWorkSpecScheduled(workSpec.f1724id, -1L);
                }
            }
            workProgressDao.deleteAll();
            workDatabase.setTransactionSuccessful();
            workDatabase.endTransaction();
            if (!z10 && !reconcileJobs) {
                return false;
            }
            return true;
        } catch (Throwable th2) {
            workDatabase.endTransaction();
            throw th2;
        }
    }

    @VisibleForTesting
    public void forceStopRunnable() {
        boolean cleanUp = cleanUp();
        if (shouldRescheduleWorkers()) {
            Logger.get().debug(TAG, "Rescheduling Workers.");
            this.mWorkManager.rescheduleEligibleWork();
            this.mWorkManager.getPreferenceUtils().setNeedsReschedule(false);
        } else if (isForceStopped()) {
            Logger.get().debug(TAG, "Application was force-stopped, rescheduling.");
            this.mWorkManager.rescheduleEligibleWork();
            this.mPreferenceUtils.setLastForceStopEventMillis(System.currentTimeMillis());
        } else if (cleanUp) {
            Logger.get().debug(TAG, "Found unfinished work, scheduling it.");
            Schedulers.schedule(this.mWorkManager.getConfiguration(), this.mWorkManager.getWorkDatabase(), this.mWorkManager.getSchedulers());
        }
    }

    @SuppressLint({"ClassVerificationFailure"})
    @VisibleForTesting
    public boolean isForceStopped() {
        int i10;
        List historicalProcessExitReasons;
        int reason;
        long timestamp;
        try {
            int i11 = Build.VERSION.SDK_INT;
            if (i11 >= 31) {
                i10 = 570425344;
            } else {
                i10 = 536870912;
            }
            PendingIntent pendingIntent = getPendingIntent(this.mContext, i10);
            if (i11 >= 30) {
                if (pendingIntent != null) {
                    pendingIntent.cancel();
                }
                historicalProcessExitReasons = ((ActivityManager) this.mContext.getSystemService("activity")).getHistoricalProcessExitReasons(null, 0, 0);
                if (historicalProcessExitReasons != null && !historicalProcessExitReasons.isEmpty()) {
                    long lastForceStopEventMillis = this.mPreferenceUtils.getLastForceStopEventMillis();
                    for (int i12 = 0; i12 < historicalProcessExitReasons.size(); i12++) {
                        ApplicationExitInfo a10 = b.a(historicalProcessExitReasons.get(i12));
                        reason = a10.getReason();
                        if (reason == 10) {
                            timestamp = a10.getTimestamp();
                            if (timestamp >= lastForceStopEventMillis) {
                                return true;
                            }
                        }
                    }
                }
            } else if (pendingIntent == null) {
                setAlarm(this.mContext);
                return true;
            }
            return false;
        } catch (IllegalArgumentException e10) {
            e = e10;
            Logger.get().warning(TAG, "Ignoring exception", e);
            return true;
        } catch (SecurityException e11) {
            e = e11;
            Logger.get().warning(TAG, "Ignoring exception", e);
            return true;
        }
    }

    @VisibleForTesting
    public boolean multiProcessChecks() {
        Configuration configuration = this.mWorkManager.getConfiguration();
        if (TextUtils.isEmpty(configuration.getDefaultProcessName())) {
            Logger.get().debug(TAG, "The default process name was not specified.");
            return true;
        }
        boolean isDefaultProcess = ProcessUtils.isDefaultProcess(this.mContext, configuration);
        Logger logger = Logger.get();
        String str = TAG;
        logger.debug(str, "Is default app process = " + isDefaultProcess);
        return isDefaultProcess;
    }

    @Override // java.lang.Runnable
    public void run() {
        int i10;
        try {
            if (!multiProcessChecks()) {
                return;
            }
            while (true) {
                try {
                    WorkDatabasePathHelper.migrateDatabase(this.mContext);
                    Logger.get().debug(TAG, "Performing cleanup operations.");
                    try {
                        forceStopRunnable();
                        break;
                    } catch (SQLiteAccessPermException | SQLiteCantOpenDatabaseException | SQLiteConstraintException | SQLiteDatabaseCorruptException | SQLiteDatabaseLockedException | SQLiteDiskIOException | SQLiteTableLockedException e10) {
                        i10 = this.mRetryCount + 1;
                        this.mRetryCount = i10;
                        if (i10 >= 3) {
                            Logger logger = Logger.get();
                            String str = TAG;
                            logger.error(str, "The file system on the device is in a bad state. WorkManager cannot access the app's internal data store.", e10);
                            IllegalStateException illegalStateException = new IllegalStateException("The file system on the device is in a bad state. WorkManager cannot access the app's internal data store.", e10);
                            Consumer<Throwable> initializationExceptionHandler = this.mWorkManager.getConfiguration().getInitializationExceptionHandler();
                            if (initializationExceptionHandler != null) {
                                Logger.get().debug(str, "Routing exception to the specified exception handler", illegalStateException);
                                initializationExceptionHandler.accept(illegalStateException);
                            } else {
                                throw illegalStateException;
                            }
                        } else {
                            long j10 = i10 * BACKOFF_DURATION_MS;
                            Logger logger2 = Logger.get();
                            String str2 = TAG;
                            logger2.debug(str2, "Retrying after " + j10, e10);
                            sleep(((long) this.mRetryCount) * BACKOFF_DURATION_MS);
                        }
                    }
                    long j102 = i10 * BACKOFF_DURATION_MS;
                    Logger logger22 = Logger.get();
                    String str22 = TAG;
                    logger22.debug(str22, "Retrying after " + j102, e10);
                    sleep(((long) this.mRetryCount) * BACKOFF_DURATION_MS);
                } catch (SQLiteException e11) {
                    Logger.get().error(TAG, "Unexpected SQLite exception during migrations");
                    IllegalStateException illegalStateException2 = new IllegalStateException("Unexpected SQLite exception during migrations", e11);
                    Consumer<Throwable> initializationExceptionHandler2 = this.mWorkManager.getConfiguration().getInitializationExceptionHandler();
                    if (initializationExceptionHandler2 != null) {
                        initializationExceptionHandler2.accept(illegalStateException2);
                    } else {
                        throw illegalStateException2;
                    }
                }
            }
        } finally {
            this.mWorkManager.onForceStopRunnableCompleted();
        }
    }

    @VisibleForTesting
    public boolean shouldRescheduleWorkers() {
        return this.mWorkManager.getPreferenceUtils().getNeedsReschedule();
    }

    @VisibleForTesting
    public void sleep(long j10) {
        try {
            Thread.sleep(j10);
        } catch (InterruptedException unused) {
        }
    }
}
