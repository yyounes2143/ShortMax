package androidx.compose.ui.platform;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.Modifier;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: InspectableValue.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class InspectableModifier extends InspectorValueInfo implements Modifier.Element {
    public static final int $stable = 0;
    @NotNull
    private final End end;

    /* compiled from: InspectableValue.kt */
    @Metadata
    /* loaded from: classes.dex */
    public final class End implements Modifier.Element {
        public End() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InspectableModifier(@NotNull Function1<? super InspectorInfo, Unit> inspectorInfo) {
        super(inspectorInfo);
        Intrinsics.checkNotNullParameter(inspectorInfo, "inspectorInfo");
        this.end = new End();
    }

    @NotNull
    public final End getEnd() {
        return this.end;
    }
}
