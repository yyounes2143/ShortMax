package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.AutoboxingStateValueProperty;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: SnapshotFloatState.kt */
@Stable
@Metadata
/* loaded from: classes.dex */
public interface FloatState extends State<Float> {

    /* compiled from: SnapshotFloatState.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @AutoboxingStateValueProperty(preferredPropertyName = "floatValue")
        @Deprecated
        @NotNull
        public static Float getValue(@NotNull FloatState floatState) {
            return Float.valueOf(FloatState.access$getValue$jd(floatState));
        }
    }

    static /* synthetic */ float access$getValue$jd(FloatState floatState) {
        return super.getValue().floatValue();
    }

    float getFloatValue();

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.compose.runtime.State
    @AutoboxingStateValueProperty(preferredPropertyName = "floatValue")
    @NotNull
    default Float getValue() {
        return Float.valueOf(getFloatValue());
    }
}
