package com.ss.ttvideoengine.utils;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
/* loaded from: classes6.dex */
public abstract class ABLock {
    public static int LOCK_IMPL_NORMAL = 0;
    public static int LOCK_IMPL_READ_WRITE = 2;
    public static int LOCK_IMPL_VOID = 1;
    private static final String TAG = "ABLock";
    public static int TYPE_READ = 1;
    public static int TYPE_VOID = 0;
    public static int TYPE_WRITE = 2;
    private final int mImplType;

    /* loaded from: classes6.dex */
    public static class NormalLock extends ABLock {
        private ReentrantLock mLock;

        public NormalLock(int i10) {
            super(i10);
            this.mLock = new ReentrantLock();
        }

        @Override // com.ss.ttvideoengine.utils.ABLock
        public void lock(int i10) {
            this.mLock.lock();
        }

        @Override // com.ss.ttvideoengine.utils.ABLock
        public boolean tryLock(int i10) {
            return this.mLock.tryLock();
        }

        @Override // com.ss.ttvideoengine.utils.ABLock
        public void unlock(int i10) {
            this.mLock.unlock();
        }

        @Override // com.ss.ttvideoengine.utils.ABLock
        public boolean tryLock(int i10, long j10, TimeUnit timeUnit) throws InterruptedException {
            return this.mLock.tryLock(j10, timeUnit);
        }
    }

    /* loaded from: classes6.dex */
    public static class VoidLock extends ABLock {
        public VoidLock(int i10) {
            super(i10);
        }

        @Override // com.ss.ttvideoengine.utils.ABLock
        public boolean tryLock(int i10) {
            return true;
        }

        @Override // com.ss.ttvideoengine.utils.ABLock
        public boolean tryLock(int i10, long j10, TimeUnit timeUnit) throws InterruptedException {
            return true;
        }

        @Override // com.ss.ttvideoengine.utils.ABLock
        public void lock(int i10) {
        }

        @Override // com.ss.ttvideoengine.utils.ABLock
        public void unlock(int i10) {
        }
    }

    public ABLock(int i10) {
        this.mImplType = i10;
    }

    public static ABLock create(int i10) {
        TTVideoEngineLog.i(TAG, "create ABLock type: " + i10);
        int i11 = LOCK_IMPL_NORMAL;
        if (i10 == i11) {
            return new NormalLock(i10);
        }
        if (i10 == LOCK_IMPL_VOID) {
            return new VoidLock(i10);
        }
        if (i10 == LOCK_IMPL_READ_WRITE) {
            return new OptimizedLock(i10);
        }
        return new NormalLock(i11);
    }

    public int getType() {
        return this.mImplType;
    }

    public void lock() {
        lock(TYPE_VOID);
    }

    public abstract void lock(int i10);

    public abstract boolean tryLock(int i10);

    public abstract boolean tryLock(int i10, long j10, TimeUnit timeUnit) throws InterruptedException;

    public void unlock() {
        unlock(TYPE_VOID);
    }

    public abstract void unlock(int i10);

    /* loaded from: classes6.dex */
    public static class OptimizedLock extends ABLock {
        private final ReentrantReadWriteLock.ReadLock mReadLock;
        private final ReentrantReadWriteLock.WriteLock mWriteLock;

        public OptimizedLock(int i10) {
            super(i10);
            ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
            this.mReadLock = reentrantReadWriteLock.readLock();
            this.mWriteLock = reentrantReadWriteLock.writeLock();
        }

        @Override // com.ss.ttvideoengine.utils.ABLock
        public void lock(int i10) {
            if (i10 == ABLock.TYPE_READ) {
                this.mReadLock.lock();
            } else if (i10 == ABLock.TYPE_WRITE) {
                this.mWriteLock.lock();
            }
        }

        @Override // com.ss.ttvideoengine.utils.ABLock
        public boolean tryLock(int i10) {
            if (i10 == ABLock.TYPE_READ) {
                return this.mReadLock.tryLock();
            }
            if (i10 == ABLock.TYPE_WRITE) {
                return this.mWriteLock.tryLock();
            }
            return true;
        }

        @Override // com.ss.ttvideoengine.utils.ABLock
        public void unlock(int i10) {
            if (i10 == ABLock.TYPE_READ) {
                this.mReadLock.unlock();
            } else if (i10 == ABLock.TYPE_WRITE) {
                this.mWriteLock.unlock();
            }
        }

        @Override // com.ss.ttvideoengine.utils.ABLock
        public boolean tryLock(int i10, long j10, TimeUnit timeUnit) throws InterruptedException {
            if (i10 == ABLock.TYPE_READ) {
                return this.mReadLock.tryLock(j10, timeUnit);
            }
            if (i10 == ABLock.TYPE_WRITE) {
                return this.mWriteLock.tryLock(j10, timeUnit);
            }
            return true;
        }
    }
}
