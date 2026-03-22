package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.AutoboxingStateValueProperty;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: SnapshotLongState.kt */
@Stable
@Metadata
/* loaded from: classes.dex */
public interface LongState extends State<Long> {

    /* compiled from: SnapshotLongState.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @AutoboxingStateValueProperty(preferredPropertyName = "longValue")
        @Deprecated
        @NotNull
        public static Long getValue(@NotNull LongState longState) {
            return Long.valueOf(LongState.access$getValue$jd(longState));
        }
    }

    static /* synthetic */ long access$getValue$jd(LongState longState) {
        return super.getValue().longValue();
    }

    long getLongValue();

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.compose.runtime.State
    @AutoboxingStateValueProperty(preferredPropertyName = "longValue")
    @NotNull
    default Long getValue() {
        return Long.valueOf(getLongValue());
    }
}
