package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.AutoboxingStateValueProperty;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: SnapshotIntState.kt */
@Stable
@Metadata
/* loaded from: classes.dex */
public interface IntState extends State<Integer> {

    /* compiled from: SnapshotIntState.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @AutoboxingStateValueProperty(preferredPropertyName = "intValue")
        @Deprecated
        @NotNull
        public static Integer getValue(@NotNull IntState intState) {
            return Integer.valueOf(IntState.access$getValue$jd(intState));
        }
    }

    static /* synthetic */ int access$getValue$jd(IntState intState) {
        return super.getValue().intValue();
    }

    int getIntValue();

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.compose.runtime.State
    @AutoboxingStateValueProperty(preferredPropertyName = "intValue")
    @NotNull
    default Integer getValue() {
        return Integer.valueOf(getIntValue());
    }
}
