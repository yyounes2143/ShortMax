package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.AutoboxingStateValueProperty;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: SnapshotLongState.kt */
@Stable
@Metadata
/* loaded from: classes.dex */
public interface MutableLongState extends LongState, MutableState<Long> {

    /* compiled from: SnapshotLongState.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @AutoboxingStateValueProperty(preferredPropertyName = "longValue")
        @Deprecated
        @NotNull
        public static Long getValue(@NotNull MutableLongState mutableLongState) {
            return Long.valueOf(MutableLongState.access$getValue$jd(mutableLongState));
        }

        @AutoboxingStateValueProperty(preferredPropertyName = "longValue")
        @Deprecated
        public static void setValue(@NotNull MutableLongState mutableLongState, long j10) {
            MutableLongState.super.setValue(j10);
        }
    }

    static /* synthetic */ long access$getValue$jd(MutableLongState mutableLongState) {
        return super.getValue().longValue();
    }

    @Override // androidx.compose.runtime.LongState
    long getLongValue();

    void setLongValue(long j10);

    @Override // androidx.compose.runtime.MutableState
    /* bridge */ /* synthetic */ default void setValue(Long l10) {
        setValue(l10.longValue());
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.compose.runtime.LongState, androidx.compose.runtime.State
    @AutoboxingStateValueProperty(preferredPropertyName = "longValue")
    @NotNull
    default Long getValue() {
        return Long.valueOf(getLongValue());
    }

    @AutoboxingStateValueProperty(preferredPropertyName = "longValue")
    default void setValue(long j10) {
        setLongValue(j10);
    }
}
