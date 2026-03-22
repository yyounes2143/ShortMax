package androidx.compose.runtime;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: SnapshotFloatState.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class SnapshotFloatState_androidKt {
    @NotNull
    public static final MutableFloatState createSnapshotMutableFloatState(float f10) {
        return new ParcelableSnapshotMutableFloatState(f10);
    }
}
