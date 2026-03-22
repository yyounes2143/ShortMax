package com.ss.ttvideoengine.utils;

import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Iterator;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes6.dex */
public class EngineThreadPool {
    private static final String TAG = "EngineThreadPool";
    private static final int THREADPOOL_ALIVE_TIME_SEC = 60;
    private static final int THREADPOOL_CORE_POOL_SIZE = 0;
    private static final int THREADPOOL_MAX_POOL_SIZE = Integer.MAX_VALUE;
    private static final int THREADPOOL_MAX_RUNNING_TASK_SIZE = 5;
    private static volatile boolean mEnableLockOptimize;
    private static volatile ThreadPoolExecutor mExecutorInstance;
    private static Deque<AsyncRunnable> mReadyRunnables = new ArrayDeque();
    private static Deque<AsyncRunnable> mRunningRunnables = new ArrayDeque();
    private static volatile boolean mEnableThreadPoolOptimize = true;

    /* loaded from: classes6.dex */
    public static class AsyncRunnable implements Runnable {
        private Runnable mRunnable;

        public AsyncRunnable(Runnable runnable) {
            this.mRunnable = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.mRunnable.run();
            EngineThreadPool._finished(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized void _finished(AsyncRunnable asyncRunnable) {
        synchronized (EngineThreadPool.class) {
            mRunningRunnables.remove(asyncRunnable);
            _promoteRunnable();
        }
    }

    private static void _promoteRunnable() {
        if (mReadyRunnables.size() > 0) {
            Iterator<AsyncRunnable> it = mReadyRunnables.iterator();
            if (it.hasNext()) {
                AsyncRunnable next = it.next();
                it.remove();
                mRunningRunnables.add(next);
                mExecutorInstance.execute(next);
            }
        }
    }

    public static Future addExecuteTask(Runnable runnable) {
        Future addExecuteTaskInternal;
        if (mEnableLockOptimize) {
            return addExecuteTaskInternal(runnable);
        }
        synchronized (EngineThreadPool.class) {
            addExecuteTaskInternal = addExecuteTaskInternal(runnable);
        }
        return addExecuteTaskInternal;
    }

    private static Future addExecuteTaskInternal(Runnable runnable) {
        if (runnable == null) {
            return null;
        }
        if (mExecutorInstance == null) {
            getExecutorInstance();
        }
        try {
            TTVideoEngineInternalLog.i(TAG, "addExecuteTask,pool size:" + getPoolSize() + ", active:" + mExecutorInstance.getActiveCount());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (mEnableThreadPoolOptimize) {
            return mExecutorInstance.submit(runnable);
        }
        synchronized (EngineThreadPool.class) {
            try {
                TTVideoEngineInternalLog.i(TAG, "running:" + mRunningRunnables.size() + ", ready:" + mReadyRunnables.size());
                AsyncRunnable asyncRunnable = new AsyncRunnable(runnable);
                if (mRunningRunnables.size() >= 5) {
                    mReadyRunnables.add(asyncRunnable);
                    return null;
                }
                mRunningRunnables.add(asyncRunnable);
                return mExecutorInstance.submit(asyncRunnable);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static Future addExecuteTaskSync(Runnable runnable, long j10) {
        Future addExecuteTaskSyncInternal;
        if (mEnableLockOptimize) {
            return addExecuteTaskSyncInternal(runnable, j10);
        }
        synchronized (EngineThreadPool.class) {
            addExecuteTaskSyncInternal = addExecuteTaskSyncInternal(runnable, j10);
        }
        return addExecuteTaskSyncInternal;
    }

    private static Future addExecuteTaskSyncInternal(Runnable runnable, long j10) {
        TTVideoEngineInternalLog.i(TAG, "addExecuteTaskSync timeout:" + j10);
        Future addExecuteTaskInternal = addExecuteTaskInternal(runnable);
        if (addExecuteTaskInternal != null) {
            try {
                addExecuteTaskInternal.get(j10, TimeUnit.MILLISECONDS);
            } catch (InterruptedException | ExecutionException | TimeoutException unused) {
                TTVideoEngineInternalLog.e(TAG, "set surface time out");
            }
        }
        return addExecuteTaskInternal;
    }

    public static ThreadPoolExecutor getExecutorInstance() {
        if (mExecutorInstance == null) {
            synchronized (EngineThreadPool.class) {
                try {
                    if (mExecutorInstance == null) {
                        if (mEnableThreadPoolOptimize) {
                            TTVideoEngineInternalLog.i(TAG, "mEnableThreadPoolOptimize true");
                            mExecutorInstance = new ThreadPoolExecutor(5, 5, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue());
                            mExecutorInstance.allowCoreThreadTimeOut(true);
                        } else {
                            mExecutorInstance = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue());
                        }
                    }
                } finally {
                }
            }
        }
        return mExecutorInstance;
    }

    public static int getPoolSize() {
        if (mExecutorInstance == null) {
            getExecutorInstance();
        }
        return mExecutorInstance.getPoolSize();
    }

    public static void setExecutorInstance(ThreadPoolExecutor threadPoolExecutor) {
        synchronized (EngineThreadPool.class) {
            mExecutorInstance = threadPoolExecutor;
        }
    }

    public static synchronized void setOptimizeEnabled(boolean z10) {
        synchronized (EngineThreadPool.class) {
            mEnableThreadPoolOptimize = z10;
        }
    }

    public static void setOptimizeLock(boolean z10) {
        mEnableLockOptimize = z10;
    }

    public static void shutdown() {
        if (mExecutorInstance != null) {
            mExecutorInstance.shutdown();
        }
    }
}
