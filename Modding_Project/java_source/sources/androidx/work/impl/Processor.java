package androidx.work.impl;

import android.content.Context;
import android.os.PowerManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.content.ContextCompat;
import androidx.work.Configuration;
import androidx.work.ForegroundInfo;
import androidx.work.Logger;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkerWrapper;
import androidx.work.impl.foreground.ForegroundProcessor;
import androidx.work.impl.foreground.SystemForegroundDispatcher;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.WakeLocks;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class Processor implements ExecutionListener, ForegroundProcessor {
    private static final String FOREGROUND_WAKELOCK_TAG = "ProcessorForegroundLck";
    private static final String TAG = Logger.tagWithPrefix("Processor");
    private Context mAppContext;
    private Configuration mConfiguration;
    private List<Scheduler> mSchedulers;
    private WorkDatabase mWorkDatabase;
    private TaskExecutor mWorkTaskExecutor;
    private Map<String, WorkerWrapper> mEnqueuedWorkMap = new HashMap();
    private Map<String, WorkerWrapper> mForegroundWorkMap = new HashMap();
    private Set<String> mCancelledIds = new HashSet();
    private final List<ExecutionListener> mOuterListeners = new ArrayList();
    @Nullable
    private PowerManager.WakeLock mForegroundLock = null;
    private final Object mLock = new Object();
    private Map<String, Set<StartStopToken>> mWorkRuns = new HashMap();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class FutureListener implements Runnable {
        @NonNull
        private ExecutionListener mExecutionListener;
        @NonNull
        private com.google.common.util.concurrent.e<Boolean> mFuture;
        @NonNull
        private final WorkGenerationalId mWorkGenerationalId;

        FutureListener(@NonNull ExecutionListener executionListener, @NonNull WorkGenerationalId workGenerationalId, @NonNull com.google.common.util.concurrent.e<Boolean> eVar) {
            this.mExecutionListener = executionListener;
            this.mWorkGenerationalId = workGenerationalId;
            this.mFuture = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z10;
            try {
                z10 = this.mFuture.get().booleanValue();
            } catch (InterruptedException | ExecutionException unused) {
                z10 = true;
            }
            this.mExecutionListener.onExecuted(this.mWorkGenerationalId, z10);
        }
    }

    public Processor(@NonNull Context context, @NonNull Configuration configuration, @NonNull TaskExecutor taskExecutor, @NonNull WorkDatabase workDatabase, @NonNull List<Scheduler> list) {
        this.mAppContext = context;
        this.mConfiguration = configuration;
        this.mWorkTaskExecutor = taskExecutor;
        this.mWorkDatabase = workDatabase;
        this.mSchedulers = list;
    }

    private static boolean interrupt(@NonNull String str, @Nullable WorkerWrapper workerWrapper) {
        if (workerWrapper != null) {
            workerWrapper.interrupt();
            Logger logger = Logger.get();
            String str2 = TAG;
            logger.debug(str2, "WorkerWrapper interrupted for " + str);
            return true;
        }
        Logger logger2 = Logger.get();
        String str3 = TAG;
        logger2.debug(str3, "WorkerWrapper could not be found for " + str);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ WorkSpec lambda$startWork$0(ArrayList arrayList, String str) throws Exception {
        arrayList.addAll(this.mWorkDatabase.workTagDao().getTagsForWorkSpecId(str));
        return this.mWorkDatabase.workSpecDao().getWorkSpec(str);
    }

    private void runOnExecuted(@NonNull final WorkGenerationalId workGenerationalId, final boolean z10) {
        this.mWorkTaskExecutor.getMainThreadExecutor().execute(new Runnable() { // from class: androidx.work.impl.a
            @Override // java.lang.Runnable
            public final void run() {
                Processor.this.lambda$runOnExecuted$1(workGenerationalId, z10);
            }
        });
    }

    private void stopForegroundService() {
        synchronized (this.mLock) {
            try {
                if (this.mForegroundWorkMap.isEmpty()) {
                    this.mAppContext.startService(SystemForegroundDispatcher.createStopForegroundIntent(this.mAppContext));
                    PowerManager.WakeLock wakeLock = this.mForegroundLock;
                    if (wakeLock != null) {
                        wakeLock.release();
                        this.mForegroundLock = null;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void addExecutionListener(@NonNull ExecutionListener executionListener) {
        synchronized (this.mLock) {
            this.mOuterListeners.add(executionListener);
        }
    }

    @Nullable
    public WorkSpec getRunningWorkSpec(@NonNull String str) {
        synchronized (this.mLock) {
            try {
                WorkerWrapper workerWrapper = this.mForegroundWorkMap.get(str);
                if (workerWrapper == null) {
                    workerWrapper = this.mEnqueuedWorkMap.get(str);
                }
                if (workerWrapper != null) {
                    return workerWrapper.getWorkSpec();
                }
                return null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public boolean hasWork() {
        boolean z10;
        synchronized (this.mLock) {
            try {
                if (this.mEnqueuedWorkMap.isEmpty() && this.mForegroundWorkMap.isEmpty()) {
                    z10 = false;
                }
                z10 = true;
            } finally {
            }
        }
        return z10;
    }

    public boolean isCancelled(@NonNull String str) {
        boolean contains;
        synchronized (this.mLock) {
            contains = this.mCancelledIds.contains(str);
        }
        return contains;
    }

    public boolean isEnqueued(@NonNull String str) {
        boolean z10;
        synchronized (this.mLock) {
            try {
                if (!this.mEnqueuedWorkMap.containsKey(str) && !this.mForegroundWorkMap.containsKey(str)) {
                    z10 = false;
                }
                z10 = true;
            } finally {
            }
        }
        return z10;
    }

    @Override // androidx.work.impl.foreground.ForegroundProcessor
    public boolean isEnqueuedInForeground(@NonNull String str) {
        boolean containsKey;
        synchronized (this.mLock) {
            containsKey = this.mForegroundWorkMap.containsKey(str);
        }
        return containsKey;
    }

    @Override // androidx.work.impl.ExecutionListener
    /* renamed from: onExecuted */
    public void lambda$runOnExecuted$1(@NonNull WorkGenerationalId workGenerationalId, boolean z10) {
        synchronized (this.mLock) {
            try {
                WorkerWrapper workerWrapper = this.mEnqueuedWorkMap.get(workGenerationalId.getWorkSpecId());
                if (workerWrapper != null && workGenerationalId.equals(workerWrapper.getWorkGenerationalId())) {
                    this.mEnqueuedWorkMap.remove(workGenerationalId.getWorkSpecId());
                }
                Logger logger = Logger.get();
                String str = TAG;
                logger.debug(str, getClass().getSimpleName() + " " + workGenerationalId.getWorkSpecId() + " executed; reschedule = " + z10);
                for (ExecutionListener executionListener : this.mOuterListeners) {
                    executionListener.onExecuted(workGenerationalId, z10);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void removeExecutionListener(@NonNull ExecutionListener executionListener) {
        synchronized (this.mLock) {
            this.mOuterListeners.remove(executionListener);
        }
    }

    @Override // androidx.work.impl.foreground.ForegroundProcessor
    public void startForeground(@NonNull String str, @NonNull ForegroundInfo foregroundInfo) {
        synchronized (this.mLock) {
            try {
                Logger logger = Logger.get();
                String str2 = TAG;
                logger.info(str2, "Moving WorkSpec (" + str + ") to the foreground");
                WorkerWrapper remove = this.mEnqueuedWorkMap.remove(str);
                if (remove != null) {
                    if (this.mForegroundLock == null) {
                        PowerManager.WakeLock newWakeLock = WakeLocks.newWakeLock(this.mAppContext, FOREGROUND_WAKELOCK_TAG);
                        this.mForegroundLock = newWakeLock;
                        newWakeLock.acquire();
                    }
                    this.mForegroundWorkMap.put(str, remove);
                    ContextCompat.startForegroundService(this.mAppContext, SystemForegroundDispatcher.createStartForegroundIntent(this.mAppContext, remove.getWorkGenerationalId(), foregroundInfo));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public boolean startWork(@NonNull StartStopToken startStopToken) {
        return startWork(startStopToken, null);
    }

    public boolean stopAndCancelWork(@NonNull String str) {
        WorkerWrapper remove;
        boolean z10;
        synchronized (this.mLock) {
            try {
                Logger logger = Logger.get();
                String str2 = TAG;
                logger.debug(str2, "Processor cancelling " + str);
                this.mCancelledIds.add(str);
                remove = this.mForegroundWorkMap.remove(str);
                if (remove != null) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (remove == null) {
                    remove = this.mEnqueuedWorkMap.remove(str);
                }
                if (remove != null) {
                    this.mWorkRuns.remove(str);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        boolean interrupt = interrupt(str, remove);
        if (z10) {
            stopForegroundService();
        }
        return interrupt;
    }

    @Override // androidx.work.impl.foreground.ForegroundProcessor
    public void stopForeground(@NonNull String str) {
        synchronized (this.mLock) {
            this.mForegroundWorkMap.remove(str);
            stopForegroundService();
        }
    }

    public boolean stopForegroundWork(@NonNull StartStopToken startStopToken) {
        WorkerWrapper remove;
        String workSpecId = startStopToken.getId().getWorkSpecId();
        synchronized (this.mLock) {
            try {
                Logger logger = Logger.get();
                String str = TAG;
                logger.debug(str, "Processor stopping foreground work " + workSpecId);
                remove = this.mForegroundWorkMap.remove(workSpecId);
                if (remove != null) {
                    this.mWorkRuns.remove(workSpecId);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return interrupt(workSpecId, remove);
    }

    public boolean stopWork(@NonNull StartStopToken startStopToken) {
        String workSpecId = startStopToken.getId().getWorkSpecId();
        synchronized (this.mLock) {
            try {
                WorkerWrapper remove = this.mEnqueuedWorkMap.remove(workSpecId);
                if (remove == null) {
                    Logger logger = Logger.get();
                    String str = TAG;
                    logger.debug(str, "WorkerWrapper could not be found for " + workSpecId);
                    return false;
                }
                Set<StartStopToken> set = this.mWorkRuns.get(workSpecId);
                if (set != null && set.contains(startStopToken)) {
                    Logger logger2 = Logger.get();
                    String str2 = TAG;
                    logger2.debug(str2, "Processor stopping background work " + workSpecId);
                    this.mWorkRuns.remove(workSpecId);
                    return interrupt(workSpecId, remove);
                }
                return false;
            } finally {
            }
        }
    }

    public boolean startWork(@NonNull StartStopToken startStopToken, @Nullable WorkerParameters.RuntimeExtras runtimeExtras) {
        WorkGenerationalId id2 = startStopToken.getId();
        final String workSpecId = id2.getWorkSpecId();
        final ArrayList arrayList = new ArrayList();
        WorkSpec workSpec = (WorkSpec) this.mWorkDatabase.runInTransaction(new Callable() { // from class: androidx.work.impl.b
            @Override // java.util.concurrent.Callable
            public final Object call() {
                WorkSpec lambda$startWork$0;
                lambda$startWork$0 = Processor.this.lambda$startWork$0(arrayList, workSpecId);
                return lambda$startWork$0;
            }
        });
        if (workSpec == null) {
            Logger logger = Logger.get();
            String str = TAG;
            logger.warning(str, "Didn't find WorkSpec for id " + id2);
            runOnExecuted(id2, false);
            return false;
        }
        synchronized (this.mLock) {
            try {
                if (isEnqueued(workSpecId)) {
                    Set<StartStopToken> set = this.mWorkRuns.get(workSpecId);
                    if (set.iterator().next().getId().getGeneration() == id2.getGeneration()) {
                        set.add(startStopToken);
                        Logger logger2 = Logger.get();
                        String str2 = TAG;
                        logger2.debug(str2, "Work " + id2 + " is already enqueued for processing");
                    } else {
                        runOnExecuted(id2, false);
                    }
                    return false;
                } else if (workSpec.getGeneration() != id2.getGeneration()) {
                    runOnExecuted(id2, false);
                    return false;
                } else {
                    WorkerWrapper build = new WorkerWrapper.Builder(this.mAppContext, this.mConfiguration, this.mWorkTaskExecutor, this, this.mWorkDatabase, workSpec, arrayList).withSchedulers(this.mSchedulers).withRuntimeExtras(runtimeExtras).build();
                    com.google.common.util.concurrent.e<Boolean> future = build.getFuture();
                    future.addListener(new FutureListener(this, startStopToken.getId(), future), this.mWorkTaskExecutor.getMainThreadExecutor());
                    this.mEnqueuedWorkMap.put(workSpecId, build);
                    HashSet hashSet = new HashSet();
                    hashSet.add(startStopToken);
                    this.mWorkRuns.put(workSpecId, hashSet);
                    this.mWorkTaskExecutor.getSerialTaskExecutor().execute(build);
                    Logger logger3 = Logger.get();
                    String str3 = TAG;
                    logger3.debug(str3, getClass().getSimpleName() + ": processing " + id2);
                    return true;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
