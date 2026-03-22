package androidx.compose.ui.state;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: ToggleableState.kt */
@Metadata
/* loaded from: classes.dex */
public final class ToggleableStateKt {
    @NotNull
    public static final ToggleableState ToggleableState(boolean z10) {
        if (z10) {
            return ToggleableState.On;
        }
        return ToggleableState.Off;
    }
}
