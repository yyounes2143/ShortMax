package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.AutoboxingStateValueProperty;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: SnapshotIntState.kt */
@Stable
@Metadata
/* loaded from: classes.dex */
public interface MutableIntState extends IntState, MutableState<Integer> {

    /* compiled from: SnapshotIntState.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @AutoboxingStateValueProperty(preferredPropertyName = "intValue")
        @Deprecated
        @NotNull
        public static Integer getValue(@NotNull MutableIntState mutableIntState) {
            return Integer.valueOf(MutableIntState.access$getValue$jd(mutableIntState));
        }

        @AutoboxingStateValueProperty(preferredPropertyName = "intValue")
        @Deprecated
        public static void setValue(@NotNull MutableIntState mutableIntState, int i10) {
            MutableIntState.super.setValue(i10);
        }
    }

    static /* synthetic */ int access$getValue$jd(MutableIntState mutableIntState) {
        return super.getValue().intValue();
    }

    @Override // androidx.compose.runtime.IntState
    int getIntValue();

    void setIntValue(int i10);

    @Override // androidx.compose.runtime.MutableState
    /* bridge */ /* synthetic */ default void setValue(Integer num) {
        setValue(num.intValue());
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.compose.runtime.IntState, androidx.compose.runtime.State
    @AutoboxingStateValueProperty(preferredPropertyName = "intValue")
    @NotNull
    default Integer getValue() {
        return Integer.valueOf(getIntValue());
    }

    @AutoboxingStateValueProperty(preferredPropertyName = "intValue")
    default void setValue(int i10) {
        setIntValue(i10);
    }
}
