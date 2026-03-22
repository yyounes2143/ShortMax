package androidx.compose.ui.semantics;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import ms.f;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SemanticsProperties.kt */
@StabilityInferred(parameters = 1)
@Metadata
/* loaded from: classes.dex */
public final class AccessibilityAction<T extends f<? extends Boolean>> {
    public static final int $stable = 0;
    @Nullable
    private final T action;
    @Nullable
    private final String label;

    public AccessibilityAction(@Nullable String str, @Nullable T t10) {
        this.label = str;
        this.action = t10;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AccessibilityAction)) {
            return false;
        }
        AccessibilityAction accessibilityAction = (AccessibilityAction) obj;
        if (Intrinsics.areEqual(this.label, accessibilityAction.label) && Intrinsics.areEqual(this.action, accessibilityAction.action)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final T getAction() {
        return this.action;
    }

    @Nullable
    public final String getLabel() {
        return this.label;
    }

    public int hashCode() {
        int i10;
        String str = this.label;
        int i11 = 0;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        int i12 = i10 * 31;
        T t10 = this.action;
        if (t10 != null) {
            i11 = t10.hashCode();
        }
        return i12 + i11;
    }

    @NotNull
    public String toString() {
        return "AccessibilityAction(label=" + this.label + ", action=" + this.action + ')';
    }
}
