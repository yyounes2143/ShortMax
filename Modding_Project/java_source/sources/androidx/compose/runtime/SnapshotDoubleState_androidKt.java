package androidx.compose.runtime;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: SnapshotDoubleState.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class SnapshotDoubleState_androidKt {
    @NotNull
    public static final MutableDoubleState createSnapshotMutableDoubleState(double d10) {
        return new ParcelableSnapshotMutableDoubleState(d10);
    }
}
