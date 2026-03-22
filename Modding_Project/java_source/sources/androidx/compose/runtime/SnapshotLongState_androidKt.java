package androidx.compose.runtime;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: SnapshotLongState.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class SnapshotLongState_androidKt {
    @NotNull
    public static final MutableLongState createSnapshotMutableLongState(long j10) {
        return new ParcelableSnapshotMutableLongState(j10);
    }
}
