package androidx.compose.runtime.internal;

import android.os.Looper;
import kotlin.Metadata;
/* compiled from: Thread.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class Thread_androidKt {
    private static final long MainThreadId;

    static {
        long j10;
        try {
            j10 = Looper.getMainLooper().getThread().getId();
        } catch (Exception unused) {
            j10 = -1;
        }
        MainThreadId = j10;
    }

    public static final long getMainThreadId() {
        return MainThreadId;
    }
}
