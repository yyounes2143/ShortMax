package androidx.compose.runtime;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: SnapshotIntState.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class SnapshotIntState_androidKt {
    @NotNull
    public static final MutableIntState createSnapshotMutableIntState(int i10) {
        return new ParcelableSnapshotMutableIntState(i10);
    }
}
