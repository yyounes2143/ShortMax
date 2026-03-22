package androidx.lifecycle;

import androidx.annotation.MainThread;
import androidx.arch.core.executor.ArchTaskExecutor;
import androidx.arch.core.internal.SafeIterableMap;
import androidx.lifecycle.Lifecycle;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2.dex */
public abstract class LiveData<T> {
    static final Object NOT_SET = new Object();
    static final int START_VERSION = -1;
    int mActiveCount;
    private boolean mChangingActiveState;
    private volatile Object mData;
    final Object mDataLock;
    private boolean mDispatchInvalidated;
    private boolean mDispatchingValue;
    private SafeIterableMap<Observer<? super T>, LiveData<T>.ObserverWrapper> mObservers;
    volatile Object mPendingData;
    private final Runnable mPostValueRunnable;
    private int mVersion;

    /* loaded from: classes2.dex */
    private class AlwaysActiveObserver extends LiveData<T>.ObserverWrapper {
        AlwaysActiveObserver(Observer<? super T> observer) {
            super(observer);
        }

        @Override // androidx.lifecycle.LiveData.ObserverWrapper
        boolean shouldBeActive() {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class LifecycleBoundObserver extends LiveData<T>.ObserverWrapper implements LifecycleEventObserver {
        final LifecycleOwner mOwner;

        LifecycleBoundObserver(LifecycleOwner lifecycleOwner, Observer<? super T> observer) {
            super(observer);
            this.mOwner = lifecycleOwner;
        }

        @Override // androidx.lifecycle.LiveData.ObserverWrapper
        void detachObserver() {
            this.mOwner.getLifecycle().removeObserver(this);
        }

        @Override // androidx.lifecycle.LiveData.ObserverWrapper
        boolean isAttachedTo(LifecycleOwner lifecycleOwner) {
            if (this.mOwner == lifecycleOwner) {
                return true;
            }
            return false;
        }

        @Override // androidx.lifecycle.LifecycleEventObserver
        public void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
            Lifecycle.State currentState = this.mOwner.getLifecycle().getCurrentState();
            if (currentState == Lifecycle.State.DESTROYED) {
                LiveData.this.removeObserver(this.mObserver);
                return;
            }
            Lifecycle.State state = null;
            while (state != currentState) {
                activeStateChanged(shouldBeActive());
                state = currentState;
                currentState = this.mOwner.getLifecycle().getCurrentState();
            }
        }

        @Override // androidx.lifecycle.LiveData.ObserverWrapper
        boolean shouldBeActive() {
            return this.mOwner.getLifecycle().getCurrentState().isAtLeast(Lifecycle.State.STARTED);
        }
    }

    public LiveData(T t10) {
        this.mDataLock = new Object();
        this.mObservers = new SafeIterableMap<>();
        this.mActiveCount = 0;
        this.mPendingData = NOT_SET;
        this.mPostValueRunnable = new Runnable() { // from class: androidx.lifecycle.LiveData.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                Object obj;
                synchronized (LiveData.this.mDataLock) {
                    obj = LiveData.this.mPendingData;
                    LiveData.this.mPendingData = LiveData.NOT_SET;
                }
                LiveData.this.setValue(obj);
            }
        };
        this.mData = t10;
        this.mVersion = 0;
    }

    static void assertMainThread(String str) {
        if (ArchTaskExecutor.getInstance().isMainThread()) {
            return;
        }
        throw new IllegalStateException("Cannot invoke " + str + " on a background thread");
    }

    private void considerNotify(LiveData<T>.ObserverWrapper observerWrapper) {
        if (!observerWrapper.mActive) {
            return;
        }
        if (!observerWrapper.shouldBeActive()) {
            observerWrapper.activeStateChanged(false);
            return;
        }
        int i10 = observerWrapper.mLastVersion;
        int i11 = this.mVersion;
        if (i10 >= i11) {
            return;
        }
        observerWrapper.mLastVersion = i11;
        observerWrapper.mObserver.onChanged((Object) this.mData);
    }

    @MainThread
    void changeActiveCounter(int i10) {
        boolean z10;
        boolean z11;
        int i11 = this.mActiveCount;
        this.mActiveCount = i10 + i11;
        if (this.mChangingActiveState) {
            return;
        }
        this.mChangingActiveState = true;
        while (true) {
            try {
                int i12 = this.mActiveCount;
                if (i11 != i12) {
                    if (i11 == 0 && i12 > 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (i11 > 0 && i12 == 0) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    if (z10) {
                        onActive();
                    } else if (z11) {
                        onInactive();
                    }
                    i11 = i12;
                } else {
                    this.mChangingActiveState = false;
                    return;
                }
            } catch (Throwable th2) {
                this.mChangingActiveState = false;
                throw th2;
            }
        }
    }

    void dispatchingValue(LiveData<T>.ObserverWrapper observerWrapper) {
        if (this.mDispatchingValue) {
            this.mDispatchInvalidated = true;
            return;
        }
        this.mDispatchingValue = true;
        do {
            this.mDispatchInvalidated = false;
            if (observerWrapper != null) {
                considerNotify(observerWrapper);
                observerWrapper = null;
            } else {
                SafeIterableMap<Observer<? super T>, LiveData<T>.ObserverWrapper>.IteratorWithAdditions iteratorWithAdditions = this.mObservers.iteratorWithAdditions();
                while (iteratorWithAdditions.hasNext()) {
                    considerNotify((ObserverWrapper) iteratorWithAdditions.next().getValue());
                    if (this.mDispatchInvalidated) {
                        break;
                    }
                }
            }
        } while (this.mDispatchInvalidated);
        this.mDispatchingValue = false;
    }

    public T getValue() {
        T t10 = (T) this.mData;
        if (t10 != NOT_SET) {
            return t10;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVersion() {
        return this.mVersion;
    }

    public boolean hasActiveObservers() {
        if (this.mActiveCount > 0) {
            return true;
        }
        return false;
    }

    public boolean hasObservers() {
        if (this.mObservers.size() > 0) {
            return true;
        }
        return false;
    }

    public boolean isInitialized() {
        if (this.mData != NOT_SET) {
            return true;
        }
        return false;
    }

    @MainThread
    public void observe(LifecycleOwner lifecycleOwner, Observer<? super T> observer) {
        assertMainThread("observe");
        if (lifecycleOwner.getLifecycle().getCurrentState() == Lifecycle.State.DESTROYED) {
            return;
        }
        LifecycleBoundObserver lifecycleBoundObserver = new LifecycleBoundObserver(lifecycleOwner, observer);
        LiveData<T>.ObserverWrapper putIfAbsent = this.mObservers.putIfAbsent(observer, lifecycleBoundObserver);
        if (putIfAbsent != null && !putIfAbsent.isAttachedTo(lifecycleOwner)) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (putIfAbsent != null) {
            return;
        }
        lifecycleOwner.getLifecycle().addObserver(lifecycleBoundObserver);
    }

    @MainThread
    public void observeForever(Observer<? super T> observer) {
        assertMainThread("observeForever");
        AlwaysActiveObserver alwaysActiveObserver = new AlwaysActiveObserver(observer);
        LiveData<T>.ObserverWrapper putIfAbsent = this.mObservers.putIfAbsent(observer, alwaysActiveObserver);
        if (!(putIfAbsent instanceof LifecycleBoundObserver)) {
            if (putIfAbsent != null) {
                return;
            }
            alwaysActiveObserver.activeStateChanged(true);
            return;
        }
        throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void postValue(T t10) {
        boolean z10;
        synchronized (this.mDataLock) {
            if (this.mPendingData == NOT_SET) {
                z10 = true;
            } else {
                z10 = false;
            }
            this.mPendingData = t10;
        }
        if (!z10) {
            return;
        }
        ArchTaskExecutor.getInstance().postToMainThread(this.mPostValueRunnable);
    }

    @MainThread
    public void removeObserver(Observer<? super T> observer) {
        assertMainThread("removeObserver");
        LiveData<T>.ObserverWrapper remove = this.mObservers.remove(observer);
        if (remove == null) {
            return;
        }
        remove.detachObserver();
        remove.activeStateChanged(false);
    }

    @MainThread
    public void removeObservers(LifecycleOwner lifecycleOwner) {
        assertMainThread("removeObservers");
        Iterator<Map.Entry<Observer<? super T>, LiveData<T>.ObserverWrapper>> it = this.mObservers.iterator();
        while (it.hasNext()) {
            Map.Entry<Observer<? super T>, LiveData<T>.ObserverWrapper> next = it.next();
            if (next.getValue().isAttachedTo(lifecycleOwner)) {
                removeObserver(next.getKey());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @MainThread
    public void setValue(T t10) {
        assertMainThread("setValue");
        this.mVersion++;
        this.mData = t10;
        dispatchingValue(null);
    }

    public LiveData() {
        this.mDataLock = new Object();
        this.mObservers = new SafeIterableMap<>();
        this.mActiveCount = 0;
        Object obj = NOT_SET;
        this.mPendingData = obj;
        this.mPostValueRunnable = new Runnable() { // from class: androidx.lifecycle.LiveData.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                Object obj2;
                synchronized (LiveData.this.mDataLock) {
                    obj2 = LiveData.this.mPendingData;
                    LiveData.this.mPendingData = LiveData.NOT_SET;
                }
                LiveData.this.setValue(obj2);
            }
        };
        this.mData = obj;
        this.mVersion = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public abstract class ObserverWrapper {
        boolean mActive;
        int mLastVersion = -1;
        final Observer<? super T> mObserver;

        ObserverWrapper(Observer<? super T> observer) {
            this.mObserver = observer;
        }

        void activeStateChanged(boolean z10) {
            int i10;
            if (z10 == this.mActive) {
                return;
            }
            this.mActive = z10;
            LiveData liveData = LiveData.this;
            if (z10) {
                i10 = 1;
            } else {
                i10 = -1;
            }
            liveData.changeActiveCounter(i10);
            if (this.mActive) {
                LiveData.this.dispatchingValue(this);
            }
        }

        boolean isAttachedTo(LifecycleOwner lifecycleOwner) {
            return false;
        }

        abstract boolean shouldBeActive();

        void detachObserver() {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onActive() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onInactive() {
    }
}
