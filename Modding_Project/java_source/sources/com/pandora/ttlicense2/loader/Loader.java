package com.pandora.ttlicense2.loader;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.pandora.ttlicense2.utils.Asserts;
import java.io.IOException;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ThreadPoolExecutor;
/* loaded from: classes6.dex */
public final class Loader implements Cancelable {
    private static final int STATE_CANCELED = 3;
    private static final int STATE_IDLE = 0;
    private static final int STATE_LOADING = 1;
    private boolean mCanceling;
    private final List<LoadTask<?>> mEnqueuedTasks = new LinkedList();
    private ThreadPoolExecutor mExecutor;
    private final Looper mLooper;
    private int mState;

    /* loaded from: classes6.dex */
    public interface Callback<T extends Loadable> {
        void onLoadCanceled(T t10, String str);

        void onLoadComplete(T t10);

        void onLoadError(T t10, IOException iOException);

        void onLoadProgressChanged(T t10, float f10);

        void onLoadStart(T t10);
    }

    /* loaded from: classes6.dex */
    private static class LoadTask<T extends Loadable> extends Handler implements Runnable, Cancelable {
        private static final int MSG_CANCEL = 5;
        private static final int MSG_COMPLETE = 1;
        private static final int MSG_FATAL_ERROR = 4;
        private static final int MSG_IO_EXCEPTION = 2;
        private static final int MSG_PROGRESS = 0;
        private static final int MSG_UNEXPECTED_EXCEPTION = 3;
        private static final int STATE_CANCELED = 4;
        private static final int STATE_COMPLETED = 2;
        private static final int STATE_ERROR = 3;
        private static final int STATE_IDLE = 0;
        private static final int STATE_STARTED = 1;
        private Callback<T> mCallback;
        private String mCancelReason;
        private volatile boolean mCanceling;
        private ExecutorService mExecutor;
        private volatile Thread mExecutorThread;
        private OnLoadTaskListener<T> mListener;
        private T mLoadable;
        private boolean mNotify;
        private int mState;

        LoadTask(Looper looper, ExecutorService executorService, T t10, Callback<T> callback, OnLoadTaskListener<T> onLoadTaskListener) {
            super(looper);
            this.mNotify = true;
            this.mExecutor = executorService;
            this.mLoadable = t10;
            this.mCallback = callback;
            this.mListener = onLoadTaskListener;
        }

        private void finish() {
            Asserts.checkThread(getLooper());
            removeCallbacksAndMessages(null);
            this.mCallback = null;
            OnLoadTaskListener<T> onLoadTaskListener = this.mListener;
            if (onLoadTaskListener != null) {
                onLoadTaskListener.onTaskFinish(this);
                this.mListener = null;
            }
            this.mExecutor = null;
            this.mLoadable = null;
            this.mExecutorThread = null;
        }

        private void fireCanceledEvent() {
            Asserts.checkThread(getLooper());
            Asserts.checkState(this.mState, 1);
            setState(4);
            Callback<T> callback = this.mCallback;
            T t10 = this.mLoadable;
            finish();
            if (this.mNotify && callback != null) {
                callback.onLoadCanceled(t10, this.mCancelReason);
            }
        }

        private void fireCompleteEvent() {
            Asserts.checkThread(getLooper());
            Asserts.checkState(this.mState, 1);
            setState(2);
            Callback<T> callback = this.mCallback;
            T t10 = this.mLoadable;
            finish();
            if (this.mNotify && callback != null) {
                callback.onLoadComplete(t10);
            }
        }

        private void fireErrorEvent(IOException iOException) {
            Asserts.checkThread(getLooper());
            Asserts.checkState(this.mState, 1);
            setState(3);
            Callback<T> callback = this.mCallback;
            T t10 = this.mLoadable;
            finish();
            if (this.mNotify && callback != null) {
                callback.onLoadError(t10, iOException);
            }
        }

        private void fireProgressEvent(float f10) {
            Callback<T> callback;
            Asserts.checkThread(getLooper());
            Asserts.checkState(this.mState, 1);
            if (this.mNotify && (callback = this.mCallback) != null) {
                callback.onLoadProgressChanged(this.mLoadable, f10);
            }
        }

        private void fireStartEvent() {
            Callback<T> callback;
            Asserts.checkThread(getLooper());
            Asserts.checkState(this.mState, 0);
            setState(1);
            OnLoadTaskListener<T> onLoadTaskListener = this.mListener;
            if (onLoadTaskListener != null) {
                onLoadTaskListener.onTaskStart(this);
            }
            if (this.mNotify && (callback = this.mCallback) != null) {
                callback.onLoadStart(this.mLoadable);
            }
        }

        private void setState(int i10) {
            Asserts.checkThread(getLooper());
            this.mState = i10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void start() {
            Asserts.checkThread(getLooper());
            Asserts.checkState(this.mState, 0);
            this.mExecutor.execute(this);
            fireStartEvent();
        }

        @Override // com.pandora.ttlicense2.loader.Cancelable
        public void cancel(boolean z10, boolean z11, String str) {
            Asserts.checkThread(getLooper());
            this.mCanceling = true;
            this.mNotify = z10;
            this.mCancelReason = str;
            T t10 = this.mLoadable;
            if (t10 != null) {
                t10.cancel(z10, z11, str);
            }
            Thread thread = this.mExecutorThread;
            if (thread != null && z11) {
                thread.interrupt();
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Asserts.checkState(this.mState, 0, 1);
            if (this.mCanceling && this.mState == 1 && message.what != 0) {
                fireCanceledEvent();
                return;
            }
            int i10 = message.what;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 != 3) {
                            if (i10 != 4) {
                                if (i10 == 5) {
                                    fireCanceledEvent();
                                    return;
                                }
                                return;
                            }
                            throw ((Error) message.obj);
                        }
                        fireErrorEvent(new IOException((Throwable) message.obj));
                        return;
                    }
                    fireErrorEvent((IOException) message.obj);
                    return;
                }
                fireCompleteEvent();
                return;
            }
            fireProgressEvent(((Float) message.obj).floatValue());
        }

        @Override // com.pandora.ttlicense2.loader.Cancelable
        public boolean isCanceled() {
            Asserts.checkThread(getLooper());
            if (this.mState == 4) {
                return true;
            }
            return false;
        }

        boolean isDone() {
            Asserts.checkThread(getLooper());
            int i10 = this.mState;
            if (i10 != 2 && i10 != 3 && i10 != 4) {
                return false;
            }
            return true;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.mCanceling) {
                sendEmptyMessage(5);
                return;
            }
            this.mExecutorThread = Thread.currentThread();
            try {
                this.mLoadable.load(new ProgressNotifier() { // from class: com.pandora.ttlicense2.loader.Loader.LoadTask.1
                    @Override // com.pandora.ttlicense2.loader.Loader.ProgressNotifier
                    public void notifyProgressChanged(float f10) {
                        if (!LoadTask.this.mCanceling && LoadTask.this.mState == 1) {
                            LoadTask.this.removeMessages(0);
                            LoadTask.this.obtainMessage(0, Float.valueOf(f10)).sendToTarget();
                        }
                    }
                });
                sendEmptyMessage(1);
            } catch (IOException e10) {
                if (this.mLoadable.isCanceled()) {
                    obtainMessage(5).sendToTarget();
                } else {
                    obtainMessage(2, e10).sendToTarget();
                }
            } catch (Error e11) {
                obtainMessage(4, e11).sendToTarget();
                throw e11;
            } catch (InterruptedException unused) {
                Asserts.checkState(this.mCanceling);
                obtainMessage(5).sendToTarget();
            } catch (OutOfMemoryError e12) {
                e = e12;
                obtainMessage(3, e).sendToTarget();
            } catch (RuntimeException e13) {
                e = e13;
                obtainMessage(3, e).sendToTarget();
            }
        }
    }

    /* loaded from: classes6.dex */
    public interface Loadable extends Cancelable {
        void load(ProgressNotifier progressNotifier) throws IOException, InterruptedException;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public interface OnLoadTaskListener<T extends Loadable> {
        void onTaskFinish(LoadTask<T> loadTask);

        void onTaskStart(LoadTask<T> loadTask);
    }

    /* loaded from: classes6.dex */
    public interface ProgressNotifier {
        void notifyProgressChanged(float f10);
    }

    public Loader(Looper looper, ThreadPoolExecutor threadPoolExecutor) {
        this.mLooper = looper;
        this.mExecutor = threadPoolExecutor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finish() {
        this.mExecutor = null;
    }

    @Override // com.pandora.ttlicense2.loader.Cancelable
    public final void cancel(boolean z10, boolean z11, String str) {
        Asserts.checkThread(this.mLooper);
        int i10 = this.mState;
        if (i10 == 0) {
            ThreadPoolExecutor threadPoolExecutor = this.mExecutor;
            if (threadPoolExecutor != null) {
                threadPoolExecutor.shutdown();
            }
            this.mState = 3;
            finish();
        } else if (i10 == 1 && !this.mCanceling) {
            this.mCanceling = true;
            for (LoadTask<?> loadTask : this.mEnqueuedTasks) {
                loadTask.cancel(z10, z11, str);
            }
            ThreadPoolExecutor threadPoolExecutor2 = this.mExecutor;
            if (threadPoolExecutor2 != null) {
                threadPoolExecutor2.shutdown();
            }
        }
    }

    @Override // com.pandora.ttlicense2.loader.Cancelable
    public final boolean isCanceled() {
        if (this.mState == 3) {
            return true;
        }
        return false;
    }

    public boolean isCanceling() {
        Asserts.checkThread(this.mLooper);
        return this.mCanceling;
    }

    public boolean isFree() {
        Asserts.checkThread(this.mLooper);
        int i10 = this.mState;
        if ((i10 != 0 && i10 != 1) || this.mExecutor.getMaximumPoolSize() <= this.mEnqueuedTasks.size()) {
            return false;
        }
        return true;
    }

    public final boolean isIDLE() {
        Asserts.checkThread(this.mLooper);
        if (this.mState == 0) {
            return true;
        }
        return false;
    }

    public final boolean isLoading() {
        Asserts.checkThread(this.mLooper);
        if (this.mState == 1) {
            return true;
        }
        return false;
    }

    public Looper looper() {
        Asserts.checkThread(this.mLooper);
        return this.mLooper;
    }

    public final <T extends Loadable> void startLoad(T t10, Callback<T> callback) {
        Asserts.checkThread(this.mLooper);
        Asserts.checkState(this.mState, 0, 1);
        Asserts.checkState(!this.mCanceling, "can't enqueue while canceling!");
        new LoadTask(this.mLooper, this.mExecutor, t10, callback, new OnLoadTaskListener<T>() { // from class: com.pandora.ttlicense2.loader.Loader.1
            private void syncState() {
                if (Loader.this.mEnqueuedTasks.isEmpty()) {
                    if (Loader.this.mCanceling) {
                        Loader.this.mState = 3;
                        Loader.this.finish();
                        return;
                    }
                    Loader.this.mState = 0;
                } else if (!Loader.this.mCanceling) {
                    Loader.this.mState = 1;
                }
            }

            @Override // com.pandora.ttlicense2.loader.Loader.OnLoadTaskListener
            public void onTaskFinish(LoadTask<T> loadTask) {
                Asserts.checkThread(Loader.this.mLooper);
                Asserts.checkState(loadTask.isDone());
                Loader.this.mEnqueuedTasks.remove(loadTask);
                syncState();
            }

            @Override // com.pandora.ttlicense2.loader.Loader.OnLoadTaskListener
            public void onTaskStart(LoadTask<T> loadTask) {
                Asserts.checkThread(Loader.this.mLooper);
                Loader.this.mEnqueuedTasks.add(loadTask);
                syncState();
            }
        }).start();
    }

    /* loaded from: classes6.dex */
    public static class CallbackAdapter<T extends Loadable> implements Callback<T> {
        @Override // com.pandora.ttlicense2.loader.Loader.Callback
        public void onLoadComplete(T t10) {
        }

        @Override // com.pandora.ttlicense2.loader.Loader.Callback
        public void onLoadStart(T t10) {
        }

        @Override // com.pandora.ttlicense2.loader.Loader.Callback
        public void onLoadCanceled(T t10, String str) {
        }

        @Override // com.pandora.ttlicense2.loader.Loader.Callback
        public void onLoadError(T t10, IOException iOException) {
        }

        @Override // com.pandora.ttlicense2.loader.Loader.Callback
        public void onLoadProgressChanged(T t10, float f10) {
        }
    }
}
