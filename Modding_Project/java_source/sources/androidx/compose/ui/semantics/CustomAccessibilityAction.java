package androidx.compose.ui.semantics;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SemanticsProperties.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class CustomAccessibilityAction {
    public static final int $stable = 0;
    @NotNull
    private final Function0<Boolean> action;
    @NotNull
    private final String label;

    public CustomAccessibilityAction(@NotNull String label, @NotNull Function0<Boolean> action) {
        Intrinsics.checkNotNullParameter(label, "label");
        Intrinsics.checkNotNullParameter(action, "action");
        this.label = label;
        this.action = action;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CustomAccessibilityAction)) {
            return false;
        }
        CustomAccessibilityAction customAccessibilityAction = (CustomAccessibilityAction) obj;
        if (Intrinsics.areEqual(this.label, customAccessibilityAction.label) && Intrinsics.areEqual(this.action, customAccessibilityAction.action)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final Function0<Boolean> getAction() {
        return this.action;
    }

    @NotNull
    public final String getLabel() {
        return this.label;
    }

    public int hashCode() {
        return (this.label.hashCode() * 31) + this.action.hashCode();
    }

    @NotNull
    public String toString() {
        return "CustomAccessibilityAction(label=" + this.label + ", action=" + this.action + ')';
    }
}
