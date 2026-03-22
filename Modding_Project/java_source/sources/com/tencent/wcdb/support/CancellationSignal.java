package com.tencent.wcdb.support;

import android.os.RemoteException;
import com.tencent.wcdb.support.ICancellationSignal;
/* loaded from: classes7.dex */
public final class CancellationSignal {
    private boolean mCancelInProgress;
    private boolean mIsCanceled;
    private OnCancelListener mOnCancelListener;
    private ICancellationSignal mRemote;

    /* loaded from: classes7.dex */
    public interface OnCancelListener {
        void onCancel();
    }

    /* loaded from: classes7.dex */
    private static final class Transport extends ICancellationSignal.Stub {
        final CancellationSignal mCancellationSignal;

        private Transport() {
            this.mCancellationSignal = new CancellationSignal();
        }

        @Override // com.tencent.wcdb.support.ICancellationSignal
        public void cancel() throws RemoteException {
            this.mCancellationSignal.cancel();
        }
    }

    public static ICancellationSignal createTransport() {
        return new Transport();
    }

    public static CancellationSignal fromTransport(ICancellationSignal iCancellationSignal) {
        if (iCancellationSignal instanceof Transport) {
            return ((Transport) iCancellationSignal).mCancellationSignal;
        }
        return null;
    }

    private void waitForCancelFinishedLocked() {
        while (this.mCancelInProgress) {
            try {
                wait();
            } catch (InterruptedException unused) {
            }
        }
    }

    public void cancel() {
        synchronized (this) {
            try {
                if (this.mIsCanceled) {
                    return;
                }
                this.mIsCanceled = true;
                this.mCancelInProgress = true;
                OnCancelListener onCancelListener = this.mOnCancelListener;
                ICancellationSignal iCancellationSignal = this.mRemote;
                if (onCancelListener != null) {
                    try {
                        onCancelListener.onCancel();
                    } catch (Throwable th2) {
                        synchronized (this) {
                            this.mCancelInProgress = false;
                            notifyAll();
                            throw th2;
                        }
                    }
                }
                if (iCancellationSignal != null) {
                    try {
                        iCancellationSignal.cancel();
                    } catch (RemoteException unused) {
                    }
                }
                synchronized (this) {
                    this.mCancelInProgress = false;
                    notifyAll();
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    public boolean isCanceled() {
        boolean z10;
        synchronized (this) {
            z10 = this.mIsCanceled;
        }
        return z10;
    }

    public void setOnCancelListener(OnCancelListener onCancelListener) {
        synchronized (this) {
            try {
                waitForCancelFinishedLocked();
                if (this.mOnCancelListener == onCancelListener) {
                    return;
                }
                this.mOnCancelListener = onCancelListener;
                if (this.mIsCanceled && onCancelListener != null) {
                    onCancelListener.onCancel();
                }
            } finally {
            }
        }
    }

    public void setRemote(ICancellationSignal iCancellationSignal) {
        synchronized (this) {
            try {
                waitForCancelFinishedLocked();
                if (this.mRemote == iCancellationSignal) {
                    return;
                }
                this.mRemote = iCancellationSignal;
                if (this.mIsCanceled && iCancellationSignal != null) {
                    try {
                        iCancellationSignal.cancel();
                    } catch (RemoteException unused) {
                    }
                }
            } finally {
            }
        }
    }

    public void throwIfCanceled() {
        if (!isCanceled()) {
            return;
        }
        throw new OperationCanceledException();
    }
}
