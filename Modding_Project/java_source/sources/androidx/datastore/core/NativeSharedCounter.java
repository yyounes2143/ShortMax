package androidx.datastore.core;

import kotlin.Metadata;
/* compiled from: SharedCounter.android.kt */
@Metadata
/* loaded from: classes2.dex */
public final class NativeSharedCounter {
    public final native long nativeCreateSharedCounter(int i10);

    public final native int nativeGetCounterValue(long j10);

    public final native int nativeIncrementAndGetCounterValue(long j10);

    public final native int nativeTruncateFile(int i10);
}
