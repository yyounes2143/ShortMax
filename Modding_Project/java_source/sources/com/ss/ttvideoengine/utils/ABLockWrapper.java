package com.ss.ttvideoengine.utils;

import java.util.concurrent.TimeUnit;
/* loaded from: classes6.dex */
public class ABLockWrapper extends ABLock {
    private ABLock mCurrentLock;
    private ABLock mLastLock;

    public ABLockWrapper(int i10) {
        super(i10);
        this.mCurrentLock = ABLock.create(i10);
        this.mLastLock = ABLock.create(ABLock.LOCK_IMPL_VOID);
    }

    @Override // com.ss.ttvideoengine.utils.ABLock
    public int getType() {
        return this.mCurrentLock.getType();
    }

    @Override // com.ss.ttvideoengine.utils.ABLock
    public void lock(int i10) {
        this.mCurrentLock.lock(i10);
    }

    @Override // com.ss.ttvideoengine.utils.ABLock
    public boolean tryLock(int i10) {
        return this.mCurrentLock.tryLock(i10);
    }

    @Override // com.ss.ttvideoengine.utils.ABLock
    public void unlock(int i10) {
        try {
            this.mCurrentLock.unlock(i10);
        } catch (IllegalMonitorStateException e10) {
            e10.printStackTrace();
            try {
                this.mLastLock.unlock(i10);
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    public void updateLockType(int i10) {
        if (this.mCurrentLock.getType() != i10) {
            this.mLastLock = this.mCurrentLock;
            this.mCurrentLock = ABLock.create(i10);
        }
    }

    @Override // com.ss.ttvideoengine.utils.ABLock
    public boolean tryLock(int i10, long j10, TimeUnit timeUnit) throws InterruptedException {
        return this.mCurrentLock.tryLock(i10, j10, timeUnit);
    }
}
