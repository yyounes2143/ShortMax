package com.tencent.wcdb.database;

import java.io.Closeable;
/* loaded from: classes7.dex */
public abstract class SQLiteClosable implements Closeable {
    private int mReferenceCount = 1;

    public void acquireReference() {
        synchronized (this) {
            try {
                int i10 = this.mReferenceCount;
                if (i10 > 0) {
                    this.mReferenceCount = i10 + 1;
                } else {
                    throw new IllegalStateException("attempt to re-open an already-closed object: " + this);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        releaseReference();
    }

    protected abstract void onAllReferencesReleased();

    @Deprecated
    protected void onAllReferencesReleasedFromContainer() {
        onAllReferencesReleased();
    }

    public void releaseReference() {
        boolean z10;
        synchronized (this) {
            z10 = true;
            int i10 = this.mReferenceCount - 1;
            this.mReferenceCount = i10;
            if (i10 != 0) {
                z10 = false;
            }
        }
        if (z10) {
            onAllReferencesReleased();
        }
    }

    @Deprecated
    public void releaseReferenceFromContainer() {
        boolean z10;
        synchronized (this) {
            z10 = true;
            int i10 = this.mReferenceCount - 1;
            this.mReferenceCount = i10;
            if (i10 != 0) {
                z10 = false;
            }
        }
        if (z10) {
            onAllReferencesReleased();
        }
    }
}
