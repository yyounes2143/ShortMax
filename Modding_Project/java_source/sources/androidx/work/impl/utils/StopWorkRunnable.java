package androidx.work.impl.utils;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.work.Logger;
import androidx.work.impl.StartStopToken;
import androidx.work.impl.WorkManagerImpl;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class StopWorkRunnable implements Runnable {
    private static final String TAG = Logger.tagWithPrefix("StopWorkRunnable");
    private final boolean mStopInForeground;
    private final StartStopToken mToken;
    private final WorkManagerImpl mWorkManagerImpl;

    public StopWorkRunnable(@NonNull WorkManagerImpl workManagerImpl, @NonNull StartStopToken startStopToken, boolean z10) {
        this.mWorkManagerImpl = workManagerImpl;
        this.mToken = startStopToken;
        this.mStopInForeground = z10;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean stopWork;
        if (this.mStopInForeground) {
            stopWork = this.mWorkManagerImpl.getProcessor().stopForegroundWork(this.mToken);
        } else {
            stopWork = this.mWorkManagerImpl.getProcessor().stopWork(this.mToken);
        }
        Logger logger = Logger.get();
        String str = TAG;
        logger.debug(str, "StopWorkRunnable for " + this.mToken.getId().getWorkSpecId() + "; Processor.stopWork = " + stopWork);
    }
}
